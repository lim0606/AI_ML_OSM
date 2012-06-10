from __future__ import division
import hmm_states as states
import initial_state
import transitions
import gps_util

class hmm(object):
    '''
    The HSMM class is a convenient wrapper that provides useful constructors and
    packages all the components.
    '''

    def __init__(self,T,obs_distns,obs,**kwargs):
        state_dim = len(obs_distns)
        self.state_dim = state_dim
        self.T = T
        self.obs_distns = obs_distns
        self.trans_distn = transitions.transitions(state_dim=state_dim,**kwargs) if 'transitions' not in kwargs else kwargs['transitions']
        self.init_state_distn = initial_state.initial_state(state_dim=state_dim,**kwargs) if 'initial_state_distn' not in kwargs else kwargs['initial_state_distn']            
        self.states = states.hmm_states(T,state_dim,obs_distns,None,self.trans_distn,self.init_state_distn,obs,**kwargs)
        
        

    def resample(self,obs):
        
        # resample obsparams
        for state, distn in enumerate(self.obs_distns):
            distn.resample2(obs[self.states.stateseq == state])

        # resample transitions
        self.trans_distn.resample2(self.states.stateseq)

        # resample pi_0
        self.init_state_distn.resample(self.states.stateseq[0])
        
        # resample states
        self.states.resample(obs)


    def generate(self):
        return self.states.stateseq
