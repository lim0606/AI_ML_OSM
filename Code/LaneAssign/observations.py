from __future__ import division
import numpy as np
from stats_util import sample_niw
import gps_util
import scipy.stats as stats

# TODO observation class ABC

class gaussian:
    '''
    Multivariate Gaussian observation distribution class. NOTE: Only works for 2 or more dimensions.
    Uses a conjugate Normal/Inverse-Wishart prior.

    Hyperparameters follow Gelman et al.'s notation in Bayesian Data Analysis:
    nu_0, lmbda_0
    mu_0, kappa_0

    Parameters are mean and covariance matrix:
    mu, sigma
    '''

    def __repr__(self):
        return 'gaussian(mu=%s,sigma=%s,nu_0=%s,lmbda_0=%s,mu_0=%s,kappa_0=%s)' % (self.mu,self.sigma,self.nu_0,self.lmbda_0,self.mu_0,self.kappa_0)

    def __init__(self,mu=None, sigma=None, nu_0=10, kappa_0=0.25, mu_0=np.zeros(10), lmbda_0=np.eye(10)):
        self.nu_0 = nu_0
        self.kappa_0 = kappa_0
        self.mu_0 = mu_0
        self.lmbda_0 = lmbda_0

        if mu is None or sigma is None:
            self.resample()
        else:
            self.mu = mu
            self.sigma = sigma
            # center at given inputs
            self.mu_0 = mu
            self.lmbda_0 = sigma
            self.nu_0 = sigma.shape[0]

    def resample(self,data=np.array([]),**kwargs):
        n = float(len(data))
        if n == 0:
            self.mu, self.sigma = sample_niw(self.mu_0, self.lmbda_0, self.kappa_0, self.nu_0)
        else:
            # calculate sufficient statistics
            xbar = np.mean(data,axis=0)
            centered = data - xbar
            sumsq = np.dot(centered.T,centered)
            # form posterior hyperparameters
            mu_n = self.kappa_0 / (self.kappa_0 + n) * self.mu_0 + n / (self.kappa_0 + n) * xbar
            kappa_n = self.kappa_0 + n
            nu_n = self.nu_0 + n
            lmbda_n = self.lmbda_0 + sumsq + self.kappa_0*n/(self.kappa_0+n) * np.outer(xbar-self.mu_0,xbar-self.mu_0)
            # sample with those hyperparameters
            self.mu, self.sigma = sample_niw(mu_n, lmbda_n, kappa_n, nu_n)

    def resample2(self,data=np.array([]),**kwargs):
        n = float(len(data))
        if n == 0:
            self.sigma = stats.invgamma.rvs(self.nu_0,loc=0,scale=self.lmbda_0 ,size=1)
        else:
            # calculate sufficient statistics
            #inverse gamma
            centered = np.array(map(lambda x:gps_util.dist_n2ws(x,self.mu),data))
            sumsq = np.dot(centered.T,centered)
            # form posterior hyperparameters
            nu_n = self.nu_0 + n
            lmbda_n = self.nu_0*self.lmbda_0 + sumsq
            # sample with those hyperparameters
            #scale-inv-chi2(v,sig^2)=inv-gam(v/2.v*sig^2/2)
            self.sigma = stats.invgamma.rvs(nu_n/2,loc=0,scale=lmbda_n/2 ,size=1) 

    def log_likelihood(self,x,mu=None,sigma=None):
        if mu is None or sigma is None:
            mu, sigma = self.mu, self.sigma
        obs_dim = float(len(mu))
        x = np.array(x,ndmin=2) - mu
        return -1./2. * np.sum(x * np.linalg.solve(sigma,x.T).T,axis=1) - np.log((2*np.pi)**(obs_dim / 2.) * np.sqrt(np.linalg.det(sigma)))
 

    def log_likelihood2(self,data):
        x = np.array(map(lambda x:gps_util.dist_n2ws(x,self.mu),data))
        return -1./2. * x * x/self.sigma - 0.5*np.log(2*np.pi) -0.5*np.log(self.sigma)
 
    def rvs(self,size=[]):
        return np.random.multivariate_normal(mean=self.mu,cov=self.sigma,size=size)


