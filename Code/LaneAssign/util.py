from __future__ import division
import numpy as np
from matplotlib import pyplot as plt

def rle(stateseq):
    stateseq = np.array(stateseq)
    pos, = np.where(np.diff(stateseq) != 0)
    pos = np.concatenate(([0],pos+1,[len(stateseq)]))
    return stateseq[pos[:-1]], np.diff(pos)

def plot_gaussian_2D(mu,lmbda,color='b',centermarker=False):
    assert mu.shape == (2,) and lmbda.shape == (2,2)
    t = np.concatenate((np.arange(0,2*np.pi,0.01),(0.,)))
    circle = np.vstack((np.sin(t),np.cos(t)))
    ellipse = np.dot(np.linalg.cholesky(lmbda),circle)

    if centermarker:
        plt.plot(mu[0],mu[1],color=color,marker='+',markersize=10)
    plt.plot(ellipse[0]+mu[0],ellipse[1]+mu[1],color=color)

# projection functions
# data array should be Nsamples x Ndim array
def pca_project_data(data,num_components=2):
    # convenience combination of the next two functions
    return project_data(data-data.mean(0),pca(data,num_components))

def pca(data,num_components=2):
    U,s,Vh = np.linalg.svd(data - data.mean(0))
    return Vh[:num_components]

def project_data(data,vecs):
    return np.dot(data,vecs.T)

def project_ellipsoid(ellipsoid,vecs):
    # vecs is a matrix whose columns are a subset of an orthonormal basis
    # ellipsoid is a pos def matrix
    return np.dot(vecs.T,np.dot(ellipsoid,vecs))
