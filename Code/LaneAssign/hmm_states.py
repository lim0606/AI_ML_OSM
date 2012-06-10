import numpy as np
import scipy.stats as stats
from numpy import newaxis as na
from numpy.random import random
from stats_util import sample_discrete
import gps_util

class hmm_states(object):
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

    def __init__(self,T,state_dim,obs_distns,dur_distns,transition_distn,initial_distn,obs,stateseq=None):
        self.T = T
        self.state_dim = state_dim
        self.obs_distns = obs_distns
        self.dur_distns = dur_distns
        self.transition_distn = transition_distn
        self.initial_distn = initial_distn        

        # this arg is for initialization heuristics which may pre-determine the state sequence
        if stateseq is not None:
            self.stateseq = stateseq
        else:
            self.generate_states(obs)


    def get_aBl(self,data):
        aBl = np.zeros((data.shape[0],self.state_dim))
        for idx in xrange(self.state_dim):
            aBl[:,idx] = self.obs_distns[idx].log_likelihood2(data)
        return aBl
 
    def resample(self,data):
        # generate and cache iid likelihood values, used in cumulative_likelihood functions        
        self.aBl = self.get_aBl(data)
        
        # run backwards message passing
        betal = self.messages_backwards(np.log(self.transition_distn.fullA))
        
        # sample forwards
        self.sample_forwards(data,betal)
        
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

    def generate_states(self,obs):
        idx = 0
        stateseq = []      
        nextstate_distr=self.initial_distn.pi_0;
        while idx < self.T:
            # sample a state
            state = sample_discrete(nextstate_distr)
            #heuristically hard assgnment            
            #dists=[gps_util.dist_n2ws(obs[idx],self.obs_distns[i].mu)  for i in xrange(self.state_dim)]            
            #state =dists.index(min(dists)) 
            #print dists,state
            
            # save everything            
            stateseq.append(state)
            # set up next state distribution
            nextstate_distr=self.transition_distn.fullA[state];            
            # update index
            idx += 1
        self.stateseq = np.array(stateseq,dtype=np.int8)
        assert (self.stateseq >= 0).all()

    def messages_backwards(self,Al):        
        betal = np.zeros((self.T,self.state_dim),dtype=np.float64)
        for t in xrange(self.T-1,-1,-1):                        
            np.logaddexp.reduce(betal[t] + self.aBl[t]+Al,axis=1,out=betal[t-1])
        betal[-1] = 0. # overwritten in last loop for loop expression simplicity, set it back to 0 here
        assert not np.isnan(betal).any()
        assert not np.isinf(betal[0]).all()
        return betal
   
    def sample_forwards(self,data,betal):
        stateseq = self.stateseq = np.zeros(self.T,dtype=np.int8)
        A = self.transition_distn.fullA
        nextstate_unsmoothed = self.initial_distn.pi_0

        for idx in xrange(self.T):
            logdomain = betal[idx,:] - np.amax(betal[idx,:])
            nextstate_distr = np.exp(logdomain) * nextstate_unsmoothed*np.exp(self.aBl[idx])
            if (nextstate_distr == 0.).all():
                # this is a numerical issue; no good answer, so we'll just follow the messages.
                nextstate_distr = np.exp(logdomain)
            state = sample_discrete(nextstate_distr)
            stateseq[idx] = state
            nextstate_unsmoothed = A[state,:]

    def resample_full(self,data):
        self.resample(data)
        self.transition_distn.resample(self.stateseq_norep)
        self.initial_distn.resample(self.stateseq[0])
        for state, distn in enumerate(self.dur_distns):
            distn.resample(self.durations[self.stateseq_norep == state])
        for state, distn in enumerate(self.obs_distns):
            distn.resample(data[self.stateseq == state])

