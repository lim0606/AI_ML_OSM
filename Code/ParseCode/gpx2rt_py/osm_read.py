from scipy import sparse
import osm_util


def Xml2obj(src):     
    Ways=[]
    Nodes={}
    class Node():
        lat=-1;lon=-1;nid='';#index=-1;
    class Way():
        nd=[];name='';highway='';wid='';index=-1;maxlat=-100;minlon=190;minlat=100;maxlon=-190;

    def AddWay(lines):
        way=Way()
        way.nd=[]
        way.wid=lines[0][lines[0].find('id=')+4:lines[0].find('" ')]
        for i in range(1,len(lines)):
            if '<nd' in lines[i]:
                way.nd.append(lines[i][lines[i].find('"')+1:lines[i].rfind('"')])                
                """if way.wid=='51386023':
                    print lines[i][lines[i].find('"')+1:lines[i].rfind('"')]
                    print way.nd
                """
            elif 'k="highway' in lines[i]:
                way.highway=lines[i][lines[i].find('v="')+3:lines[i].rfind('"')]
            elif 'k="name' in lines[i]:
                way.name=lines[i][lines[i].find('v="')+3:lines[i].rfind('"')]
        #Ways[way.id]=way
        way.index=len(Ways)
        Ways.append(way)
        """
        if way.wid=='51386023':
            print way.nd
            print lines
        """


    def AddNode(tmp):
        #print tmp
        node=Node()
        node.lat=float(tmp[tmp.find('lat="')+5:tmp.find('" lon')])
        tmp2=tmp.rfind('lon="')+5
        node.lon=float(tmp[tmp2:tmp[tmp2:].find('"')+tmp2])
        node.nid=line[line.find('id=')+4:line.find('" ')]
        #Nodes[node.id]=node
        #node.index=len(Nodes)
        Nodes[node.nid]=node        
        

    #1.first pass: all ways
    a=open(src)
    line=a.readline().lstrip()  
    tmpway=[]
    tmpnode=[]
    nodeid=[]
    dd=1
    toadd=0
    while 'bound' not in line:
        line=a.readline().lstrip()  
    # range of nodes
    if 'bound box' in line:
        tmp=line.find(",")
        ran_pt =[float(line[line.find('"')+1:tmp])]
        ran_pt.append(float(line[tmp+1:line[tmp+1:].find(',')+tmp+1]))
        tmp=line[tmp+1:].find(',')+tmp+1
        ran_pt.append(float(line[tmp+1:line[tmp+1:].find(',')+tmp+1]))
        tmp=line[tmp+1:].find(',')+tmp+1
        ran_pt.append(float(line[tmp+1:line[tmp+1:].find('"')+tmp+1]))
    else:
        tmp=line.find("minlat=")
        ran_pt =[float(line[tmp+8:line[tmp+8:].find('"')+tmp+8])]
        tmp=line.find("minlon=")
        ran_pt.append(float(line[tmp+8:line[tmp+8:].find('"')+tmp+8]))
        tmp=line.find("maxlat=")
        ran_pt.append(float(line[tmp+8:line[tmp+8:].find('"')+tmp+8]))
        tmp=line.find("maxlon=")
        ran_pt.append(float(line[tmp+8:line[tmp+8:].find('"')+tmp+8]))
    
    while line!='':
        line=a.readline().lstrip()  
        if dd==0 or ('<way' in line and '/>' not in line):        
            tmpway.append(line)
            dd=0
            if 'nd ref' in line:        
                tmpnode.append([int(line[line.find('"')+1:line.rfind('"')]),len(Ways)])
            elif 'k="highway"' in line and line[line.find('v="')+3:line.rfind('"')] in osm_util.Constant.roadtype:
                toadd+=1            
            elif 'k="name"' in line:
                toadd+=1            
        if '</way' in line:        
            dd=1
            if toadd==2:
                AddWay(tmpway)
                nodeid+=tmpnode                
            toadd=0
            tmpway=[]
            tmpnode=[]
    a.close()
    print str(len(Ways))+" ways added"

    #2.first pass: all nodes
    #2.1 remove repeated nodes and construct intersections of ways
    nodeid.sort()    
    """
    print str(len(nodeid))
    for i in range(17):
        print nodeid[i]
    """
    M = sparse.lil_matrix((len(Ways),len(Ways)))
    for i in range(len(nodeid)-1,0,-1):     
        if nodeid[i][0]==nodeid[i-1][0]:
            M[nodeid[i][1],nodeid[i-1][1]]=1
            M[nodeid[i-1][1],nodeid[i][1]]=1
            nodeid[i-1]+=nodeid[i][1:]
            del nodeid[i]

    print str(len(nodeid))+" potential nodes"
    ##2.2 hopefully, the nodes are there in the extracted .osm
    # assuming nodes are listed in increasing order of id
    a=open(src)
    line=a.readline().lstrip()        
    while line!='' and len(nodeid)>0:
         line=a.readline().lstrip()        
         if '<node' in line:
             tmpid=line[line.find('id=')+4:line.find('" ')]
             if int(tmpid)==nodeid[0][0]:        
                 AddNode(line) 
                 del nodeid[0]
                 if len(nodeid)%10000==0:
                     print str(len(nodeid))+" potential nodes left"
             elif int(tmpid)>nodeid[0][0]:        
                 while int(tmpid)>nodeid[0][0]: 
                     #print "node "+str(nodeid[0][0])+" is not found in the extracted osm file"
                     for i in range(1,len(nodeid[0])):
                         Ways[nodeid[0][i]].nd.remove(str(nodeid[0][0]))
                     del nodeid[0]
                     if int(tmpid)==nodeid[0][0]:        
                         AddNode(line) 
                         for i in range(1,len(nodeid[0])):
                             Ways[nodeid[0][i]].nd.remove(str(nodeid[0][0]))
                         del nodeid[0]                         
    a.close()
    print str(len(Nodes))+" nodes added"
    #find bounding box of the way and clean up the nodes a little bit
    for way in Ways:
        for nd in way.nd:            
            if Nodes[nd].lat>way.maxlat:
                 way.maxlat=Nodes[nd].lat
            if Nodes[nd].lat<way.minlat:
                 way.minlat=Nodes[nd].lat
            if Nodes[nd].lon>way.maxlon:
                 way.maxlon=Nodes[nd].lon
            if Nodes[nd].lon<way.minlon:
                 way.minlon=Nodes[nd].lon
    return (Nodes,Ways,M,ran_pt)  

#xml2obj('cam.osm')
