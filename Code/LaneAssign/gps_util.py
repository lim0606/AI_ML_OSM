import os
import numpy as np
import scipy
import pickle
from matplotlib import pyplot as plt

R = 6371 # km
rad2deg=180/np.pi;
deg2rad=np.pi/180;
ft2km=0.0003048;
width=30*ft2km

#lot,lat
#tri-function all in radiance 
def haversine(lon1,lat1,lon2,lat2):
    dLat = lat2-lat1;
    dLon = lon2-lon1;
    lat1 = lat1;
    lat2 = lat2;
    a = np.sin(dLat/2) * np.sin(dLat/2) + np.sin(dLon/2) * np.sin(dLon/2) * np.cos(lat1) * np.cos(lat2); 
    c = 2 * np.arctan2(np.sqrt(a), np.sqrt(1-a));
    #print c 
    return R * c

def spherical(lon1,lat1,lon2,lat2):
    c=np.arccos(np.sin(lat1)*np.sin(lat2)+np.cos(lat1)*np.cos(lat2)*np.cos(lon2-lon1))
    #print c
    return R * c

def findbearing(lon1,lat1,lon2,lat2):
    dLon=lon2-lon1
    y = np.sin(dLon) * np.cos(lat2);
    x = np.cos(lat1)*np.sin(lat2) - np.sin(lat1)*np.cos(lat2)*np.cos(dLon);
    return np.arctan2(y, x)

def boundary(lon1,lat1,lon2,lat2,dist):
    bearing=findbearing(lon1,lat1,lon1+(lat2-lat1),lat1-(lon2-lon1))
    lat3 = np.arcsin( np.sin(lat1)*np.cos(dist/R) +  np.cos(lat1)*np.sin(dist/R)*np.cos(bearing) );
    lon3 = lon1 + np.arctan2(np.sin(bearing)*np.sin(dist/R)*np.cos(lat1),np.cos(dist/R)-np.sin(lat1)*np.sin(lat2));
    #print lon3*rad2deg,lat3*rad2deg,bearing*rad2deg+180
    return [lon3,lat3]

def dist_n2w(pt,bdpts):
    brng13=findbearing(* np.concatenate((bdpts[:2], pt), axis=0))
    brng12=findbearing(*bdpts)
    d13= haversine(*np.concatenate((bdpts[:2], pt), axis=0))
    return np.arcsin(np.sin(d13/R)*np.sin(brng13-brng12)) * R    
    

def dist_n2ws(pt,waypt):
    min_dist=100    
    min_po=-1
    for idx in range(len(waypt)):         
        tmp_dist=haversine(*np.concatenate((pt, waypt[idx]), axis=0))        
        if tmp_dist<min_dist:
            min_po=idx    
            min_dist=tmp_dist                          
    if min_po!=len(waypt)-1:        
        tmp_dist=abs(dist_n2w(pt,np.concatenate((waypt[min_po],waypt[min_po+1]),axis=0)))
        if tmp_dist<min_dist:
            min_dist=tmp_dist
            
    if min_po!=0:        
        tmp_dist=abs(dist_n2w(pt,np.concatenate((waypt[min_po],waypt[min_po-1]),axis=0)))
        if tmp_dist<min_dist:
            min_dist=tmp_dist
    """"""
    return min_dist            
    """
    if min_po!=len(waypt)-1 and (waypt[min_po][0]-pt[0])*(waypt[min_po][0]-waypt[min_po+1][0])+(waypt[min_po][1]-pt[1])*(waypt[min_po][1]-waypt[min_po+1][1])>0:        
        return dist_n2w(pt,np.concatenate((waypt[min_po],waypt[min_po+1]),axis=0))
    elif min_po!=0 and (waypt[min_po][0]-pt[0])*(waypt[min_po][0]-waypt[min_po-1][0])+(waypt[min_po][1]-pt[1])*(waypt[min_po][1]-waypt[min_po-1][1])>0:
        return dist_n2w(pt,np.concatenate((waypt[min_po],waypt[min_po-1]),axis=0))
    else:
        return min_dist
    """
    
def write_gpx(file_t,pts):
    writer=open(file_t,'w') 
    writer.write("""<?xml version="1.0" encoding="utf-8"?><gpx><trk><trkseg>\n""")
    for pt in pts:
        writer.write('<trkpt lat="'+str(rad2deg*pt[1])+'" lon="'+str(rad2deg*pt[0])+'"> <time>2011-8-19T30:62:62Z</time></trkpt>')    
    writer.write('</trkseg></trk></gpx>')
    writer.close()

def findwaypts():
    waypt = deg2rad*np.vstack(sorted(pickle.load( open( "waypt.p", "rb" ) )))        
    #upper lane
    waypt2=waypt.copy()
    for i in range(1,len(waypt2)):
        #print i,rad2deg*waypt[i-1,0],rad2deg*waypt[i-1,1],rad2deg*waypt[i,0],rad2deg*waypt[i,1]
        waypt2[i-1,:]=boundary(waypt[i-1,0],waypt[i-1,1],waypt[i,0],waypt[i,1],width/4)    
    waypt2[-1,:]=waypt2[-2,:]-waypt[-2,:]+waypt[-1,:]
    
    #lower lane
    waypt3=waypt*2-waypt2
    
    return [waypt,waypt2,waypt3] 
 
def laneassign(obs,obs_distns):        
    idx = 0
    stateseq = []
    T=len(obs)              
    for idx in xrange(T):        
        #heuristically hard assgnment            
        dists=[dist_n2ws(obs[idx],obs_distns[i].mu)  for i in xrange(len(obs_distns))]            
        state =dists.index(min(dists))         
        stateseq.append(state)
    return np.array(stateseq,dtype=np.int8)
    


"""
#php check
write_gpx('uppe.gpx',waypt2)
write_gpx('lower.gpx',waypt3)
#plot check
plt.plot(waypt[:,0],waypt[:,1],'k-')
plt.plot(waypt[:,0],waypt[:,1],'kx')
plt.plot(waypt2[:,0],waypt2[:,1],'g-')
plt.plot(waypt2[:,0],waypt2[:,1],'gx')
plt.plot(waypt3[:,0],waypt3[:,1],'r-')
plt.plot(waypt3[:,0],waypt3[:,1],'rx')
plt.plot(pts[:,0],pts[:,1],'b.')
plt.show()
"""








"""
#matlab
#map
b=textread(['route/mfallon mit 2011-08-19 18-44-12-342476 Partition 0 4.rt'],'%s','delimiter',',');
tmp=cellfun(@(V) [V ','], b(1:8:end-7), 'Unif-71.114379999999997orm', 0);
tmp=str2num([tmp{:}]);
[tmp(find(tmp==3528):find(tmp==14967))]
#gps
cd /home/donglai/Desktop/OSM/drivehistory_repo/matlab/rt2roadseg/
load drive_data
for i=1:length(routes)
if(strcmp(routes(i).name,'mfallon mit 2011-08-20 21-30-35-129835 Partition 0 17.rt'))
break
end
end
se=[find(routes(i).wids==3529),find(routes(i).wids==14968)];
ind=find(routes(i).name=='-',1,'first');
gpx=textread(['../data_gpx/' routes(i).name(ind+1:ind+5) '/' routes(i).name(1:end-3) '.gpx'],'%s');
tmp=cellfun(@(V) [ V(find(V=='"',1,'first')+1:find(V=='"',1,'last')-1) ','], gpx(8:5:end-6), 'Uniform', 0);
lat= str2num([tmp{:}]);
tmp=cellfun(@(V) [ V(find(V=='"',1,'first')+1:find(V=='"',1,'last')-1) ','], gpx(9:5:end-5), 'Uniform', 0);
lon= str2num([tmp{:}]);
pts=[lon(routes(i).gpxs(1,se(1))+1:routes(i).gpxs(2,se(2))+1);lat(routes(i).gpxs(1,se(1))+1:routes(i).gpxs(2,se(2))+1)]'
dlmwrite('haha',pts,'delimiter',',','precision',8)

#python
import os
import osm_plot
import osm_search
import osm_util
import pickle
import sys
sys.modules['__main__'].Node = osm_map.Node
sys.modules['__main__'].Way = osm_map.Way
Nodes = pickle.load( open( "nodes.p", "rb" ) )
Ways = pickle.load( open( "ways.p", "rb" ) )
wayind=[3528,7580,7578,17800,17801,17802,4523,5192,14966,14967]
for i in wayind:
    print Ways[i].width
nodeind=[Ways[i].nd for i in wayind]
import itertools
waypt=map(lambda x:(Nodes[x].lon,Nodes[x].lat),set(itertools.chain.from_iterable(nodeind)))
pickle.dump( waypt, open( "waypt.p", "wb" ) )


a=open('/home/donglai/Desktop/OSM/drivehistory_repo/matlab/rt2roadseg/haha')
pts=[]
line =a.readlines()
pts=[map(lambda x:(float(x[:x.find(',')]),float(x[x.find(',')+1:-1])),line)] 
pickle.dump( pts, open( "pts.p", "wb" ) )
a.close()
test=[-71.097693, 42.348753,-71.097847, 42.348712]
haversine(*test)
spherical(*test)
"""

