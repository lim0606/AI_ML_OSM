import numpy as np
import scipy.stats as stats
from numpy.random import random
from numpy import newaxis as na


class transitions(object):
    '''
    HSMM transition distribution class.
    Uses a weak-limit HDP prior. Zeroed diagonal to forbid self-transitions.
    
    Hyperparameters follow the notation in Fox et al., except the definitions of 
    alpha and gamma are reversed.
    alpha, gamma

    Parameters are the shared transition vector beta, the full transition matrix,
    and the matrix with the diagonal zeroed.
    beta, fullA, A
    '''
    
    def __init__(self,state_dim,alpha=4.,gamma=8.,beta=None,A=None,fullA=None):
        self.alpha = alpha
        self.gamma = gamma
        self.state_dim = state_dim
        if A is None or fullA is None or beta is None:
            self.resample()
        else:
            self.A = A
            self.beta = beta
            self.fullA = fullA

    def resample(self,states_norep=np.array([])):
        if len(states_norep) < 2:
            # if there is no data we just sample forward
            self.beta = stats.gamma.rvs(self.alpha / self.state_dim, size=self.state_dim)
            self.beta /= np.sum(self.beta)

            self.fullA = stats.gamma.rvs(self.beta * self.gamma * np.ones((self.state_dim,1)))
            self.A = (1.-np.eye(self.state_dim)) * self.fullA
            self.fullA /= np.sum(self.fullA,axis=1)[:,na]
            self.A /= np.sum(self.A,axis=1)[:,na]

            assert not np.isnan(self.beta).any()
            assert not np.isnan(self.fullA).any()
            assert (self.A.diagonal() == 0).all()
        else:
            # make 2d array of transition counts
            data = np.zeros((self.state_dim,self.state_dim))
            for idx in xrange(len(states_norep)-1):
                data[states_norep[idx],states_norep[idx+1]] += 1
            # we resample the children (A) then the mother (beta)
            # first, we complete the data using the current parameters
            # every time we transferred from a state, we had geometrically many 
            # self-transitions thrown away that we want to sample
            assert (data.diagonal() == 0).all()
            froms = np.sum(data,axis=1)
            self_transitions = [np.sum(stats.geom.rvs(1.-self.fullA.diagonal()[idx],size=from_num)) for idx, from_num in enumerate(froms)]
            augmented_data = data + np.diag(self_transitions)
            # then, compute m's and stuff
            m = np.zeros((self.state_dim,self.state_dim))
            for rowidx in xrange(self.state_dim):
                for colidx in xrange(self.state_dim):
                    n = 0.
                    for i in xrange(int(augmented_data[rowidx,colidx])):
                        m[rowidx,colidx] += random() < self.alpha * self.beta[colidx] / (n + self.alpha * self.beta[colidx]) 
                        n += 1.
            self.m = m # save it for possible use in any child classes
            
            # resample mother (beta)
            self.beta = stats.gamma.rvs(self.alpha / self.state_dim  + np.sum(m,axis=0))
            self.beta /= np.sum(self.beta)
            assert not np.isnan(self.beta).any()
            # resample children (fullA and A)
            self.fullA = stats.gamma.rvs(self.gamma * self.beta + augmented_data)
            self.fullA /= np.sum(self.fullA,axis=1)[:,na]
            self.A = self.fullA * (1.-np.eye(self.state_dim))
            self.A /= np.sum(self.A,axis=1)[:,na]
            assert not np.isnan(self.A).any()
   
    def resample2(self,states_seq=np.array([])):
        if len(states_seq) < 2:
            # if there is no data we just sample forward
            self.beta = stats.gamma.rvs(self.alpha / self.state_dim, size=self.state_dim)
            self.beta /= np.sum(self.beta)

            self.fullA = stats.gamma.rvs(self.beta * self.gamma * np.ones((self.state_dim,1)))            
            self.fullA /= np.sum(self.fullA,axis=1)[:,na]

            assert not np.isnan(self.beta).any()
            assert not np.isnan(self.fullA).any()
        else:
            # make 2d array of transition counts
            data = np.zeros((self.state_dim,self.state_dim))
            for idx in xrange(len(states_seq)-1):
                data[states_seq[idx],states_seq[idx+1]] += 1
            # then, compute m's and stuff
            m = np.zeros((self.state_dim,self.state_dim))
            for rowidx in xrange(self.state_dim):
                for colidx in xrange(self.state_dim):
                    n = 0.
                    for i in xrange(int(data[rowidx,colidx])):
                        m[rowidx,colidx] += random() < self.alpha * self.beta[colidx] / (n + self.alpha * self.beta[colidx]) 
                        n += 1.
            self.m = m # save it for possible use in any child classes
            
            # resample mother (beta)
            self.beta = stats.gamma.rvs(self.alpha / self.state_dim  + np.sum(m,axis=0))
            self.beta /= np.sum(self.beta)
            assert not np.isnan(self.beta).any()
            # resample children (fullA and A)
            self.fullA = stats.gamma.rvs(self.gamma * self.beta + data)
            self.fullA /= np.sum(self.fullA,axis=1)[:,na]
            assert not np.isnan(self.A).any()
