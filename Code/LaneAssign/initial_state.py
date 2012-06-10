import numpy as np
import scipy.stats as stats
from stats_util import sample_discrete


class initial_state:
    '''
    Initial state distribution class. Not usually of much consequence.
    '''
    def __init__(self,rho=5,state_dim=10,pi_0=None):
        self.rho = rho
        self.state_dim = state_dim
        self.pi_0 = pi_0
        if self.pi_0 is None:
            self.resample()
        else:
            self.state_dim = len(pi_0)

    def resample(self,init_states=np.array([])):
        init_states = np.array(init_states,ndmin=1)
        # samples from posterior Dirichlet
        data = np.zeros(self.state_dim)
        for init_state in init_states:
            data[init_state] += 1
        self.pi_0 = stats.gamma.rvs(self.rho / self.state_dim + data)
        self.pi_0 /= np.sum(self.pi_0)
        assert not np.isnan(self.pi_0).any()

    def rvs(self,size=[]):
        return sample_discrete(self.pi_0,size=size)    
