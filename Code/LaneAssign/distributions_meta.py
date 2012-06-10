import numpy as np
import scipy.stats as stats
from numpy import newaxis as na
from stats_util import sample_discrete 

class mixture(object):
    # hyperparams
    alpha = None
    # params
    components = None
    weights = None

    def __init__(self,components,weights=None,alpha=0.5):
        '''
        needs components, which are a list (or iterable) of observation distribution objects
        if weights are not specified, generates random weights according to hyperparams
        '''
        self.components = components
        self.alpha = alpha
        if weights is None:
            self.weights = stats.gamma.rvs(self.alpha,size=len(components))
            self.weights /= np.sum(self.weights)
            assert not np.isnan(self.weights).any()
        else:
            assert np.sum(weights) == 1
            self.weights = weights

    def resample(self,data=np.array([]),numiter=10):
        # if data is empty, just sample from prior
        if data.size == 0:
            for distn in self.components:
                distn.resample()
        else:
            for ii in xrange(numiter):
                ## re-sample labels
                # we find all the likelihoods first
                likelihoods = np.vstack([component.log_likelihood(data) for component in self.components]).T
                # then we reweight with prior to get posterior
                posteriors = np.exp(likelihoods) * self.weights
                # and sample from the posteriors
                cumulative = np.cumsum(posteriors,axis=1)
                labels = np.sum(np.random.random((cumulative.shape[0],1)) * cumulative[:,-1,na] > cumulative,axis=1)
                ## re-sample weights
                indicators = np.zeros((len(self.weights),len(labels)))
                indicators[labels,np.arange(len(labels))] = 1
                counts = np.sum(indicators,axis=1)
                self.weights = stats.gamma.rvs(self.alpha + counts)
                self.weights /= np.sum(self.weights)
                assert not np.isnan(self.weights).any()
                ## re-sample distibution params
                for idx,distn in enumerate(self.components):
                    distn.resample(data=data[idx==labels,:])
   

    def rvs(self,size=[]):
        labels = np.array(sample_discrete(self.weights,size=size),ndmin=1)
        return np.reshape(np.array([self.components[label].rvs() for label in labels]),np.concatenate((np.array(size,ndmin=1),(-1,))))

    def log_likelihood(self,x):
        return np.logaddexp.reduce([self.components[idx].log_likelihood(x) + np.log(self.weights[idx]) for idx in xrange(len(self.weights))])


