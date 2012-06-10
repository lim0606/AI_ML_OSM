import numpy as np
from numpy import newaxis as na
import hsmm, observations, durations, stats_util, util
from text_util import progprint_xrange
from matplotlib import pyplot as plt
from matplotlib import cm

# suppress inconsequential warnings
np.seterr(divide='ignore')

###########################
# Generate synthetic data #
###########################

N = 4
T = 500
obs_dim = 2
durparams = [10.*(idx+1) for idx in xrange(N)]
obs_hypparams = (np.zeros(obs_dim),np.eye(obs_dim),0.25,obs_dim+2)

truth_obs_distns = [observations.gaussian(*stats_util.sample_niw(*obs_hypparams)) for state in xrange(N)]
truth_dur_distns = [durations.poisson(lmbda=param) for param in durparams]

truthmodel = hsmm.hsmm(T,truth_obs_distns,truth_dur_distns)

data, labels = truthmodel.generate()

###############################################
# Construct model and run posterior inference #
###############################################

Nmax = 10

obs_distns = [observations.gaussian(*stats_util.sample_niw(*obs_hypparams)) for state in xrange(Nmax)]
dur_distns = [durations.poisson() for state in xrange(Nmax)]

posteriormodel = hsmm.hsmm(T,obs_distns,dur_distns)

for idx in progprint_xrange(30):
    posteriormodel.resample(data)

#####################
# Plot final sample #
#####################

cmap = cm.get_cmap()
colors = map(cmap,np.linspace(0,1,Nmax))

# plot stateseqs
plt.figure(figsize=(15,10))
# true stateseq
plt.subplot(3,1,1)
states, durs = util.rle(labels)
X,Y = np.meshgrid(np.hstack((0,durs.cumsum())),[1,2]);
plt.pcolor(X,Y,states[na,:],edgecolors='k',alpha=0.8);
# inferred stateseq
states, durs = util.rle(posteriormodel.states.stateseq)
X,Y = np.meshgrid(np.hstack((0,durs.cumsum())),[0,1]);
plt.pcolor(X,Y,states[na,:],edgecolors='k',alpha=0.8,vmin=0,vmax=Nmax); 
plt.ylim((0,2)); plt.xlim((0,T))
plt.title('true stateseq (top, colors arbitrary) vs sampled stateseq (bottom)')

# observations
plt.subplot(3,1,2)
plt.title('data and inferred observation distributions')
plt.plot(data[:,0],data[:,1],'kx')
for state, (c,o) in enumerate(zip(colors,obs_distns)):
    if np.sum(posteriormodel.states.stateseq == state) > 1:
        util.plot_gaussian_2D(o.mu,o.sigma,color=c,centermarker=True)

# durations
plt.subplot(3,1,3)
t = np.arange(1,2*N*10)
for state,(c,d) in enumerate(zip(colors,posteriormodel.dur_distns)):
    if np.sum(posteriormodel.states.stateseq == state) > 1:
        plt.plot(t,d.pmf(t),label='state %d, %s' % (state,d),color=c)
        plt.hist(durs[states == state],normed=True,color=c,bins=t)
plt.legend()
plt.title('inferred duration distributions and normalized histograms of sampled durations')
plt.show()