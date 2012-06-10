import numpy as np
from numpy import newaxis as na
import hsmm, observations, durations, stats_util, util
from text_util import progprint_xrange
from matplotlib import pyplot as plt
from matplotlib import cm
import gps_util
import pickle
import hmm

# suppress inconsequential warnings
np.seterr(divide='ignore')

###########################
# Load gps data #
###########################
data = gps_util.deg2rad*np.vstack(pickle.load( open( "pts.p", "rb" ) ))
N = 3
T = len(data)
obs_dim = 1

###############################################
# Construct model and run posterior inference #
###############################################
""""""
roadmap=gps_util.findwaypts()

obs_distns = [observations.gaussian(roadmap[state],np.array([(gps_util.width/4)**2])) for state in xrange(N)]
model1= hmm.hmm(T,obs_distns,data)


durparams = [10.*(idx+1) for idx in xrange(N)]
Nmax=3
dur_distns = [durations.poisson() for state in xrange(Nmax)]
model2=hsmm.hsmm(T,obs_distns,dur_distns)
model2.states.stateseq=np.copy(model1.states.stateseq)

labels=gps_util.laneassign(data,obs_distns)
init_labels=model1.states.stateseq;

for idx in progprint_xrange(20):
    model1.resample(data)
    model2.resample(data)
#####################
# Plot final sample #
#####################

cmap = cm.get_cmap()
colors = map(cmap,np.linspace(0,1,N))

# plot stateseqs
plt.figure(figsize=(15,10))

"""
plt.subplot(2,1,1)
plt.title('Initial States/Inferred States/Hard Assignments')
states, durs = util.rle(init_labels)
X,Y = np.meshgrid(np.hstack((0,durs.cumsum())),[2,3]);
plt.pcolor(X,Y,states[na,:],edgecolors='k',alpha=0.8);

# inferred stateseq

states, durs = util.rle(model1.states.stateseq)
X,Y = np.meshgrid(np.hstack((0,durs.cumsum())),[1,2]);
plt.pcolor(X,Y,states[na,:],edgecolors='k',alpha=0.8); 


# hard assignment
states, durs = util.rle(labels)
X,Y = np.meshgrid(np.hstack((0,durs.cumsum())),[0,1]);
plt.pcolor(X,Y,states[na,:],edgecolors='k',alpha=0.8); 
plt.ylim((0,3)); plt.xlim((0,T))


# observations
plt.subplot(2,1,2)
plt.title('Lane Assignment')
#boundary+gps pts
plt.plot(roadmap[0][:,0],roadmap[0][:,1],'k-')
plt.plot(roadmap[1][:,0],roadmap[1][:,1],'k--')
plt.plot(roadmap[2][:,0],roadmap[2][:,1],'k--')

cc=["b","g","r"]
for idx in xrange(N):
    ind=[i for i in xrange(T) if model1.states.stateseq[i]==idx]
    plt.plot(data[ind,0],data[ind,1], cc[idx]+'x')

plt.show()
"""
ax = plt.subplot(4,1,1)
ax.set_axis_off()
plt.title('Initial States')
states, durs = util.rle(init_labels)
X,Y = np.meshgrid(np.hstack((0,durs.cumsum())),[0,1]);
plt.pcolor(X,Y,states[na,:],edgecolors='k',alpha=0.8);
ax.set_axis_off()
plt.xlim((0,T))

# inferred stateseq
ax=plt.subplot(4,1,2)
ax.set_axis_off()
plt.title('50 HMM Local Runs')
states, durs = util.rle(model1.states.stateseq)
X,Y = np.meshgrid(np.hstack((0,durs.cumsum())),[0,1]);
plt.pcolor(X,Y,states[na,:],edgecolors='k',alpha=0.8); 
plt.xlim((0,T))
# inferred stateseq
ax=plt.subplot(4,1,3)
ax.set_axis_off()
plt.title('50 HSMM Block Runs')
states, durs = util.rle(model2.states.stateseq)
X,Y = np.meshgrid(np.hstack((0,durs.cumsum())),[0,1]);
plt.pcolor(X,Y,states[na,:],edgecolors='k',alpha=0.8); 
plt.xlim((0,T))

# hard assignment
ax =plt.subplot(4,1,4)
plt.title('Hard Assignments')
states, durs = util.rle(labels)
X,Y = np.meshgrid(np.hstack((0,durs.cumsum())),[0,1]);
plt.pcolor(X,Y,states[na,:],edgecolors='k',alpha=0.8);
plt.xlim((0,T))
 
plt.show()
