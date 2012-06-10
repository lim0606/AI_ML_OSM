import numpy as np
import scipy.stats as stats
from numpy import newaxis as na
from numpy.random import random
from stats_util import sample_discrete


class states(object):
    '''
    HSMM states distribution class. Connects the whole model.
    
    Parameters  include:

    T
    state_dim
    obs_distns
    dur_distns
    transition_distn
    initial_distn
    trunc
    
    stateseq
    durations
    stateseq_norep
    '''

    # these are convenient
    durations = None
    stateseq_norep = None

    def __init__(self,T,state_dim,obs_distns,dur_distns,transition_distn,initial_distn,stateseq=None,trunc=None):
        self.T = T
        self.state_dim = state_dim
        self.obs_distns = obs_distns
        self.dur_distns = dur_distns
        self.transition_distn = transition_distn
        self.initial_distn = initial_distn
        self.trunc = T if trunc is None else trunc
        
        # this arg is for initialization heuristics which may pre-determine the state sequence
        if stateseq is not None:
            self.stateseq = stateseq
            # gather durations and stateseq_norep
            current = stateseq[0]
            cur_dur = 0
            self.durations = []
            self.stateseq_norep = [current]
            for x in stateseq:
                if x == current:
                    cur_dur += 1
                else:
                    self.durations.append(cur_dur)
                    self.stateseq_norep.append(x)
                    current = x
                    cur_dur = 1
            self.durations.append(cur_dur)

            self.durations =  np.array(self.durations,dtype=np.int16)
            self.stateseq_norep = np.array(self.stateseq_norep,dtype=np.int8)
        else:
            self.generate_states()


    def get_aBl(self,data):
        aBl = np.zeros((data.shape[0],self.state_dim))
        for idx in xrange(self.state_dim):
            #aBl[:,idx] = self.obs_distns[idx].log_likelihood(data)
            aBl[:,idx] = self.obs_distns[idx].log_likelihood2(data)
        return aBl
 
    def resample(self,data):
        # generate duration pmf and sf values
        # generate and cache iid likelihood values, used in cumulative_likelihood functions
        possible_durations = np.arange(1,self.T + 1,dtype=np.float64)
        aDl = np.zeros((self.T,self.state_dim))
        aDsl = np.zeros((self.T,self.state_dim))
        self.aBl = self.get_aBl(data)
        for idx, dur_distn in enumerate(self.dur_distns):
            aDl[:,idx] = dur_distn.log_pmf(possible_durations)
            aDsl[:,idx] = dur_distn.log_sf(possible_durations)
         # run backwards message passing
        betal, betastarl = self.messages_backwards(np.log(self.transition_distn.A),aDl,aDsl,self.trunc)
        # sample forwards
        self.sample_forwards(data,betal,betastarl)
        # clear cached likelihoods just for cleanliness
        self.aBl = None

    def generate(self):
        self.generate_states()
        return self.generate_obs()

    def generate_obs(self):
        obs = []
        for state in self.stateseq:
            obs.append(self.obs_distns[state].rvs(size=1))
        return np.vstack(obs).copy()

    def generate_states(self,censoring=True):
        assert censoring
        # with censoring, uses self.T
        # without censoring, overwrites self.T with any extra duration from the last state
        # returns data, sets internal stateseq as truth
        idx = 0
        nextstate_distr = self.initial_distn.pi_0
        A = self.transition_distn.A

        stateseq = []
        stateseq_norep = []
        durations = []
        
        while idx < self.T:
            # sample a state
            state = sample_discrete(nextstate_distr)
            # sample a duration for that state
            duration = self.dur_distns[state].rvs()
            # save everything
            stateseq_norep.append(state)
            durations.append(duration)
            stateseq.extend([state]*duration)
            # set up next state distribution
            nextstate_distr = A[state,]
            # update index
            idx += duration
    
        self.stateseq_norep = np.array(stateseq_norep,dtype=np.int8)
        self.durations = np.array(durations,dtype=np.int16) # note sum(durations) can exceed len(stateseq) if censoring

        if censoring:
            self.stateseq = np.array(stateseq[:self.T],dtype=np.int8)
        else:
            self.stateseq = np.array(stateseq,dtype=np.int8)

        assert len(self.stateseq_norep) == len(self.durations)
        assert (self.stateseq >= 0).all()

    def messages_backwards(cls,Al,aDl,aDsl,trunc):
        T = aDl.shape[0]
        state_dim = Al.shape[0]
        betal = np.zeros((T,state_dim),dtype=np.float64)
        betastarl = np.zeros((T,state_dim),dtype=np.float64)
        assert betal.shape == aDl.shape == aDsl.shape

        for t in xrange(T-1,-1,-1):
            np.logaddexp.reduce(betal[t:t+trunc] + cls.cumulative_likelihoods(t,t+trunc) + aDl[:min(trunc,T-t)],axis=0, out=betastarl[t])
            if T-t < trunc:
                np.logaddexp(betastarl[t], cls.likelihood_block(t,None) + aDsl[T-1-t], betastarl[t]) # censoring calc
            np.logaddexp.reduce(betastarl[t] + Al,axis=1,out=betal[t-1])
        betal[-1] = 0. # overwritten in last loop for loop expression simplicity, set it back to 0 here

        assert not np.isnan(betal).any()
        assert not np.isinf(betal[0]).all()

        return betal, betastarl

    def cumulative_likelihoods(self,start,stop):
        return np.cumsum(self.aBl[start:stop],axis=0)
        
    def cumulative_likelihood_state(cls,start,stop,state):
        return np.cumsum(self.aBl[start:stop,state])

    def likelihood_block(self,start,stop):
        # does not include the stop index
        return np.sum(self.aBl[start:stop],axis=0)

    def likelihood_block_state(self,start,stop,state):
        return np.sum(self.aBl[start:stop,state])
    
    def sample_forwards(self,data,betal,betastarl):
        stateseq = self.stateseq = np.zeros(self.T,dtype=np.int8)
        durations = []
        stateseq_norep = []

        idx = 0
        A = self.transition_distn.A
        nextstate_unsmoothed = self.initial_distn.pi_0

        while idx < self.T:
            logdomain = betastarl[idx,:] - np.amax(betastarl[idx,:])
            nextstate_distr = np.exp(logdomain) * nextstate_unsmoothed
            if (nextstate_distr == 0.).all():
                # this is a numerical issue; no good answer, so we'll just follow the messages.
                nextstate_distr = np.exp(logdomain)
            state = sample_discrete(nextstate_distr)

            durprob = random()
            dur = 0 # always incremented at least once
            prob_so_far = 0.0
            while durprob > 0:
                assert dur < 2*self.T # hacky infinite loop check
                p_d_marg = self.dur_distns[state].pmf(dur+1)
                assert not np.isnan(p_d_marg)
                assert p_d_marg >= 0
                if p_d_marg == 0:
                    dur += 1
                    continue
                if idx+dur < self.T:
                    p_d = np.exp(self.likelihood_block_state(idx,idx+dur+1,state) + betal[idx+dur,state] - betastarl[idx,state]) * p_d_marg
                    prob_so_far += p_d
                else:
                    break # TODO should add in censored sampling here
                assert not np.isnan(p_d)
                durprob -= p_d
                dur += 1

            stateseq[idx:idx+dur] = state
            stateseq_norep.append(state)
            durations.append(dur)

            nextstate_unsmoothed = A[state,:]

            idx += dur

        self.durations = np.array(durations,dtype=np.int16)
        self.stateseq_norep = np.array(stateseq_norep,dtype=np.int8)

    def loglike(self,data,trunc=None):
        self.obs = data # since functions within messages_backwards look at self.obs
        T = data.shape[0]
        if trunc is None:
            trunc = T
        possible_durations = np.arange(1,T + 1,dtype=np.float64)
        aDl = np.zeros((T,self.state_dim))
        aDsl = np.zeros((T,self.state_dim))
        for idx, dur_distn in enumerate(self.dur_distns):
            aDl[:,idx] = dur_distn.log_pmf(possible_durations)
            aDsl[:,idx] = dur_distn.log_sf(possible_durations)
        
        self.aBl = self.get_aBl(data)
        betal, betastarl = self.messages_backwards(np.log(self.transition_distn.A),aDl,aDsl,trunc)
        self.obs = None
        return np.logaddexp.reduce(np.log(self.initial_distn.pi_0) + betastarl[0])

    def resample_full(self,data):
        self.resample(data)
        self.transition_distn.resample(self.stateseq_norep)
        self.initial_distn.resample(self.stateseq[0])
        for state, distn in enumerate(self.dur_distns):
            distn.resample(self.durations[self.stateseq_norep == state])
        for state, distn in enumerate(self.obs_distns):
            distn.resample(data[self.stateseq == state])
            
