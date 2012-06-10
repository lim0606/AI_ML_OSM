import numpy as np
import scipy.stats as stats
import scipy.special
from stats_util import sample_discrete

'''
Classes representing duration distributions. Each has internal parameter state and includes the following functions:
    __init__(hypparams)
    pmf
    log_pmf
    log_sf
    getparams
    setparams
    resample(data=[]) # re-samples internal parameter state from posterior given data
    rvs(size) # return samples of shape (default=1)
    test() # some form of test to make sure the class works correctly
Duration distributions are supported on {1,2,...}, so pmf definitions starting at 0 must be shifted accordingly.
'''

class geometric:
    '''
    Geometric duration distribution class. Supported on {1,2,...}
    Uses a conjugate Beta prior.
    
    Hyperparameters follow Wikipedia's notation:
    alpha, beta

    Parameters are the success probability:
    p
    '''

    def __repr__(self):
        return 'geometric(alpha=%0.2f,beta=%0.2f,p=%0.2f)' % (self.alpha, self.beta, self.p)

    def __init__(self, alpha=1., beta=1., p=None):
        self.alpha = alpha
        self.beta = beta
        if p is not None:
            self.p = p
        else:
            self.resample()

    def resample(self,data=np.array([]),**kwargs):
        if len(data) > 0:
            assert np.min(data) >= 1
        self.p = stats.beta.rvs(self.alpha + float(len(data)), self.beta + np.sum(data-1))

    def log_pmf(self,x,p=None):
        if p is None:
            p = self.p
        x = np.array(x,ndmin=1)
        raw = (x-1.)*np.log(1.-p) + np.log(p)
        raw[x < 1] = np.log(0.)
        return raw

    def pmf(self,x):
        return stats.geom.pmf(x,self.p)

    def log_sf(self,x):
        return np.log(stats.geom.sf(x,self.p))

    def rvs(self,size=[]):
        return stats.geom.rvs(self.p,size=size)


class poisson:
    '''
    Poisson duration distribution class. Supported on {1,2,...}
    Uses a conjugate Gamma prior.
    
    Hyperparameters follow Wikipedia's notation:
    alpha, theta

    Parameter is the mean/variance parameter:
    lmbda
    '''

    def __repr__(self):
        return 'poisson(k=%0.2f,theta=%0.2f,lmbda=%0.2f)' % (self.k,self.theta,self.lmbda)

    def __init__(self, k=8., theta=5., lmbda=None):
        self.k = k
        self.theta = theta
        if lmbda is not None:
            self.lmbda = lmbda
        else:
            self.resample()

    def resample(self,data=np.array([]),**kwargs):
        data = np.array(data,ndmin=1)
        if len(data) > 0:
            assert np.min(data) >= 1
        self.lmbda = stats.gamma.rvs(self.k + np.sum(data-1.),loc=0,scale=self.theta / (self.theta * len(data) + 1.))

    def log_pmf(self,x,lmbda=None):
        '''
        x is a vector of observations in {1,2,...}. (1-dimensional)
        Uses current value of parameter lmbda by default.
        '''
        if lmbda is None:
            lmbda = self.lmbda
        x = np.array(x,ndmin=1)
        raw = -lmbda + (x-1.)*np.log(lmbda) - scipy.special.gammaln(x)
        raw[x < 1] = np.log(0.)
        return raw

    def pmf(self,x):
        return stats.poisson.pmf(x-1.,self.lmbda)

    def log_sf(self,x):
        return np.log(stats.poisson.sf(x-1.,self.lmbda))

    def rvs(self,size=[]):
        return stats.poisson.rvs(self.lmbda,size=size)


class negative_binomial:
    '''
    Negative binomial duration distribution class. Supported on {1,2,...}
    Uses a nonconjugate discrete/Beta prior.
    
    Hyperparameters follow Wikipedia's notation:
    discrete (vector representation of pmf)
    alpha, beta

    Parameters are the number of geometrics and the sucess probability for each geometric:
    r, p
    '''

    def __repr__(self):
        return 'negative_binomial(r=%d,p=%0.2f,discrete=%s,alpha=%0.2f,beta=%0.2f)' % (self.r,self.p,self.discrete,self.alpha,self.beta)

    def __init__(self,r=None,p=None,discrete=np.ones(6)/6.,alpha=2.,beta=2.):
        self.discrete = discrete
        self.alpha = alpha
        self.beta = beta
        if r is not None and p is not None:
            self.r = r
            self.p = p
        else:
            self.resample()

    def resample(self,data=np.array([]),numiter=10):
        '''
        metropolis-(hastings) / simulated annealing version
        '''
        if len(data) == 0:
            self.r = sample_discrete(self.discrete) + 1
            self.p = stats.beta.rvs(self.alpha,self.beta)
        else:
            assert np.min(data) >= 1
            # got this general idea from web.mit.edu/~wingated/www/introductions/mcmc-gibbs-intro.pdf
            # get posterior value of current (r,p)
            current_prior_value = stats.beta.pdf(self.p,self.alpha,self.beta) * self.discrete[self.r-1]
            current_log_likelihood_value = np.sum(self.log_pmf(data))
            for iter in xrange(numiter*10):
                # generate proposals, using prior on r and conditionally poterior on p as proposal distribution
                # it uses posterior information in proposing p
                proposal_r = sample_discrete(self.discrete)+1
                proposal_p = stats.beta.rvs(self.alpha + proposal_r * float(len(data)), self.beta + np.sum(data-1.))
                # get posterior value for proposal
                proposal_prior_value =  stats.beta.pdf(proposal_p,self.alpha,self.beta) * self.discrete[self.r-1]
                proposal_log_likelihood_value = np.sum(self.log_pmf(x=data,r=proposal_r,p=proposal_p))
                # accept proposal with some probability
                accept_probability = min(1, (proposal_prior_value / current_prior_value * np.exp(proposal_log_likelihood_value - current_log_likelihood_value)) )
                if sample_discrete((1.-accept_probability, accept_probability)):
                    self.r, self.p = proposal_r, proposal_p
                    current_prior_value = proposal_prior_value
                    current_log_likelihood_value = proposal_log_likelihood_value

    def log_pmf(self,x,r=None,p=None):
        if r is None:
            r = self.r
        if p is None:
            p = self.p
        assert r != 0
        x = np.array(x,ndmin=1)
        raw = (scipy.special.gammaln(x+r-1) - scipy.special.gammaln(x) - scipy.special.gammaln(r) + r * np.log(p) + (x-1.) * np.log(1-p))
        raw[x < 1] = np.log(0.)
        if p == 1.:
            raw[np.isnan(raw)] = np.log(1.)
        return raw

    def pmf(self,x,r=None,p=None):
        return np.exp(self.log_pmf(x,r,p))

    def log_sf(self,x,r=None,p=None):
        if r is None:
            r = self.r
        if p is None:
            p = self.p
        x = np.array(x,ndmin=1)
        raw = np.log(1. - scipy.special.betainc(r,x,p))
        raw[x < 1] = np.log(1.)
        return raw

    def rvs(self,size=[]):
        return np.sum(stats.geom.rvs(self.p,size=np.concatenate(((self.r,),np.array(size,ndmin=1))),loc=-1.),axis=0)+1


class fixed_wait(object):
    '''
    Meta duration distribution class to offset a duration distribution by a fixed wait.
    Has wait and distn parameters. Minimum wait is zero.
    '''

    def __init__(self,wait,distn):
        self.wait = wait
        self.distn = distn

    def resample(self,data=np.array([]),**kwargs):
        if data.size > 0:
            assert np.min(data) > self.wait
        self.distn.resample(data - self.wait,**kwargs)

    def log_pmf(self,x):
        return self.distn.log_pmf(x-self.wait)

    def log_sf(self,x):
        return self.distn.log_sf(x-self.wait)

    def rvs(self,size=[]):
        return self.distn.rvs(size=size) + self.wait

    def pmf(self,x):
        return self.distn.pmf(x-self.wait)


class learned_wait(fixed_wait):
    '''
    Meta duration distribution class to learn a wait. 
    The prior over waits has two components:
    MIN is a nonnegative integer that sets the minimum wait
    discrete is a vector of probabilities to represent a pmf over possible waits, offset by MIN
    '''

    def resample(self,data=np.array([]),numiter=10):
        if data.size == 0:
            # sample from prior
            self.wait = sample_discrete(self.discrete) + self.MIN
            self.distn.resample()
        else:
            # NOT YET iterations of metropolis procedure
            # INSTEAD iterations of gibbs, hoping it won't get stuck at local optima
            assert data.ndim == 1
            for iter in xrange(numiter*10):
                # resample posterior wait, given fixed distn
                log_probs = np.sum(self.distn.log_pmf(np.vstack([data - (wait+self.MIN) for wait in xrange(len(self.discrete))])),axis=1)
                log_probs -= np.amax(log_probs)
                self.wait = sample_discrete( self.discrete * np.exp(log_probs) )
                # resample fixed distn given wait
                self.distn.resample(data - self.wait,numiter=numiter)

    def log_pmf(self,x):
        return self.distn.log_pmf(x-(self.wait+self.MIN))

    def log_sf(self,x):
        return self.distn.log_sf(x-(self.wait+self.MIN))

    def rvs(self,size=[]):
        return self.distn.rvs(size=size) + self.wait + self.MIN

    def pmf(self,x):
        return self.distn.pmf(x-(self.wait+self.MIN))
