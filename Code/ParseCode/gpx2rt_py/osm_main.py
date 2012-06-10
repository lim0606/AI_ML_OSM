import osm_map
import os
#import osm_plot
import osm_search
#import osm_util
import pickle
import sys
if len(sys.argv)==1:
    print "need one argument"
else:
    if sys.argv[1]=='build':
        db='extracted.osm'
        (nodes,ways,M,ran_pt)=  osm_map.Xml2obj(db)
        pickle.dump( nodes, open( "nodes.p", "wb" ) )
        pickle.dump( ways, open( "ways.p", "wb" ) )
        pickle.dump( M, open( "M.p", "wb" ) )
        pickle.dump( ran_pt, open( "ran_pt.p", "wb" ) )
    else:
        sys.modules['__main__'].Node = osm_map.Node
        sys.modules['__main__'].Way = osm_map.Way
        dd = "/afs/csail.mit.edu/u/d/donglai/FORD/drivehistory_repo/matlab/ParseCode/gpx2rt_py/"
        Nodes = pickle.load( open( dd+"nodes.p", "rb" ) )
        Ways = pickle.load( open( dd+"ways.p", "rb" ) )
        #M = pickle.load( open( dd+"M.p", "rb" ) )
        M = ''
        ran_pt = pickle.load( open( dd+"ran_pt.p", "rb" ) )
        #gpx_an='data/08-19/mfallon mit 2011-08-19 18-44-12-342476 Partition 0 4.gpx'
        #record=osm_search.Annotate(gpx_an,gpx_an+'.rt',M,Ways,Nodes)            
        fromDir='/afs/csail.mit.edu/proj/drivehistory/data/gpx/'
        toDir='/afs/csail.mit.edu/proj/drivehistory/data/route/'
        #fromDir='/home/donglai/nfs_data/ford_drivehistory/gpx/'
        #toDir='/home/donglai/nfs_data/ford_drivehistory/route/'
        ff = os.listdir(fromDir)
        for folder in [ff[int(sys.argv[1])]]:#os.listdir(fromDir):#['08-19','09-23','09-25','10-05']:
            print folder
            for gpx_an in os.listdir(fromDir+folder):
                if 'gpx' in gpx_an:
                    record=osm_search.Annotate(fromDir+folder+'/'+gpx_an,toDir+gpx_an[:gpx_an.find('.gpx')]+'.rt',M,Ways,Nodes)          
                    print gpx_an[:gpx_an.find('.gpx')]+'.rt' 
        """"""
        #aa=osm_search.Global_Search([42.3390,-71.1327],ways,nodes)
        #osm_plot.Render(nodes,ways,ran_pt)
        
        #print where,dis
        
    
"""
[import osm_search
i for ii,ll in enumerate(ff) if ll=='12-01']
map()

a= M[5008,:].nonzero()
a[2]
M.getrow(4893).nonzero()

pp=[]
for i in range(len(ways)):
    if 'Memorial' in ways[i].name:
        pp.append(ways[i].index)

print pp

ml=-100;mil=100;mla=-100;mila=100;
for i in range(len(ways)):
    if ways[i].maxlat>ml:
        ml=ways[i].maxlat
    if ways[i].minlat<mil:
        mil=ways[i].minlat
    if ways[i].maxlon>mla:
        mla=ways[i].maxlon
    if ways[i].minlon<mila:
        mila=ways[i].minlon

print ml,mil,mla,mila

for i in range(len(wids)-1):
    print ways[wids[i]].name,cp[i+1]-cp[i]
print ways[wids[len(wids)-1]].name

for i in range(len(ways)):
    if ways[i].highway=='primary':
        print ways[i].wid,i

a=M[4843,:].nonzero()
for i in range(len(a[1])):
    print ways[a[1][i]].name,i


for way in ways:
    if 'Mass' in way.name:
        print way.index,way.name

for rr in haha:
    print rr[1],ways[rr[2]].name


pylab.figure()
for i in ways[5054].nd:
     pylab.plot(nodes[i].lon,nodes[i].lat, marker='o', color='r', ls='')

for i in ways[4759].nd:
     pylab.plot(nodes[i].lon,nodes[i].lat, marker='o', color='b', ls='')

for i in ways[5039].nd:
     pylab.plot(nodes[i].lon,nodes[i].lat, marker='o', color='g', ls='')

pylab.show()

a=8065
for i in ways[a].nd:
    print nodes[i].lat,nodes[i].lon

a=8065
for i in Ways[a].nd:
    print Nodes[i].lat,Nodes[i].lon


ll=[]
for i in Ways:
    if i.name=='University Road':
        ll.append(i.index)

print ll

for i in ll:
    if len([m for m in ways[5071].nd if m in ways[i].nd])!=0:
        print i, [m for m in ways[5071].nd if m in ways[i].nd]
        
        
qq=[]
for i in ll:
    qq.append((Nodes[Ways[i].nd[0]].lat,Nodes[Ways[i].nd[-1]].lat,i,len(Ways[i].nd)))

qq.sort()
qq

aa=map(lambda a:a[2], qq)

cc=['r','g','b']
pylab.figure()
c=0
aa=[8381,8382]
for l in aa:
    c+=1
    for i in Ways[l].nd:
        pylab.plot(Nodes[i].lon,Nodes[i].lat, marker='o', color=cc[c%3], ls='')

pylab.show()

sorted(qq, key=lambda qq:qq[1])

a=5078
tmp=M[a,:].nonzero()
print tmp
print Ways[a].name,len(Ways[a].nd)
for i in tmp[1]:
    print Ways[i].name,len(Ways[i].nd) 

a=3909;b=7476;
for i in ways[a].nd:
    if i in ways[b].nd:
        print i,nodes[i].lat,nodes[i].lon


pickle.dump( nodes, open( "nodes.p", "wb" ) )
pickle.dump( ways, open( "ways.p", "wb" ) )
pickle.dump( M, open( "M.p", "wb" ) )
pickle.dump( ran_pt, open( "ran_pt.p", "wb" ) )
nodes = pickle.load( open( "nodes.p", "rb" ) )
ways = pickle.load( open( "ways.p", "rb" ) )
M = pickle.load( open( "M.p", "rb" ) )
ran_pt = pickle.load( open( "ran_pt.p", "rb" ) )
"""
