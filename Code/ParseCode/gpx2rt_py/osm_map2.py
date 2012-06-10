from scipy import sparse
import copy
import osm_util

class Node():
    lat = -1;lon = -1;nid = '';#index=-1;

class Way():
    nd = [];name = '';highway = '';wid = '';index = -1;maxlat = -100;minlon = 190;minlat = 100;maxlon = -190;numlane = 0;marked = [];width=0;

def Xml2obj(src):     
    def AddWay(lines):
        way = Way()
        way.nd = []
        way.marked = []
        add = 0
        #way.wid = lines[0][lines[0].find('id=') + 4:lines[0].find('" ')]
        for i in range(1, len(lines)):
            if '<nd' in lines[i]:
                way.nd.append(lines[i][lines[i].find('"') + 1:lines[i].rfind('"')])                
            elif 'k="highway' in lines[i]:
                way.highway = lines[i][lines[i].find('v="') + 3:lines[i].rfind('"')]
                add = 1
            elif 'k="name' in lines[i]:
                way.name = lines[i][lines[i].find('v="') + 3:lines[i].rfind('"')]
            elif 'k="lanes' in lines[i]:
                way.numlane = lines[i][lines[i].find('v="') + 3:lines[i].rfind('"')]
            elif 'k="width' in lines[i]:
                way.width = lines[i][lines[i].find('v="') + 3:lines[i].rfind('"')]
            elif 'k="building' in lines[i]:
                # 03/11/2012 ...
                add = 0
                break
        if add ==1:
            Ways.append(way)

    def AddNode(tmp):
        node = Node()
        node.lat = float(tmp[tmp.find('lat="') + 5:tmp.find('" lon')])
        tmp2 = tmp.rfind('lon="') + 5
        node.lon = float(tmp[tmp2:tmp[tmp2:].find('"') + tmp2])
        node.nid = line[line.find('id=') + 4:line.find('" ')]
        Nodes[node.nid] = node        

    def Findsame(w1,w2):
        for index in range(len(Ways[w1].nd)):
            if Ways[w1].nd[index] in Ways[w2].nd:
                if index != 0 and index != len(Ways[w1].nd) - 1 and index not in Ways[w1].marked:
                    Ways[w1].marked.append(index)                    
                index2 = Ways[w2].nd.index(Ways[w1].nd[index])
                if index2 != 0 and index2 != len(Ways[w2].nd) - 1 and index2 not in Ways[w2].marked:
                    Ways[w2].marked.append(index2)                                    
                break;
    
    Ways = []
    Nodes = {}              
    a = open(src)
    line = a.readline().lstrip()  
    tmpway = []
    tmpnode = []
    nodeid = []
    dd = 1
    toadd = 0
    #1. range of nodes
    while 'bound' not in line:
        line = a.readline().lstrip()  

    if 'bound box' in line:
        tmp = line.find(",")
        ran_pt = [float(line[line.find('"') + 1:tmp])]
        ran_pt.append(float(line[tmp + 1:line[tmp + 1:].find(',') + tmp + 1]))
        tmp = line[tmp + 1:].find(',') + tmp + 1
        ran_pt.append(float(line[tmp + 1:line[tmp + 1:].find(',') + tmp + 1]))
        tmp = line[tmp + 1:].find(',') + tmp + 1
        ran_pt.append(float(line[tmp + 1:line[tmp + 1:].find('"') + tmp + 1]))
    else:
        tmp = line.find("minlat=")
        ran_pt = [float(line[tmp + 8:line[tmp + 8:].find('"') + tmp + 8])]
        tmp = line.find("minlon=")
        ran_pt.append(float(line[tmp + 8:line[tmp + 8:].find('"') + tmp + 8]))
        tmp = line.find("maxlat=")
        ran_pt.append(float(line[tmp + 8:line[tmp + 8:].find('"') + tmp + 8]))
        tmp = line.find("maxlon=")
        ran_pt.append(float(line[tmp + 8:line[tmp + 8:].find('"') + tmp + 8]))

    #2.first pass: all ways    
    while line != '':
        line = a.readline().lstrip()  
        if dd == 0 or ('<way' in line and '/>' not in line):        
            tmpway.append(line)
            dd = 0
            if 'nd ref' in line:        
                tmpnode.append([int(line[line.find('"') + 1:line.rfind('"')]), len(Ways)])
            elif 'k="highway"' in line and line[line.find('v="') + 3:line.rfind('"')] in osm_util.Constant.roadtype:
                #filter road type
                toadd += 1            
            elif 'k="name"' in line:
                toadd += 1          
        if '</way' in line:        
            dd = 1
            if toadd == 2 and len(tmpnode) > 0:
                AddWay(tmpway)
                nodeid += tmpnode                
            toadd = 0
            tmpway = []
            tmpnode = []
    a.close()
    print str(len(Ways)) + " ways added"

    #3. second pass: all nodes
    #3.1 remove repeated node ids
    
    nodeid.sort()    
    tmpnodeid=list(nodeid)
    for i in range(len(nodeid) - 1, 0, -1):     
        if nodeid[i][0] == nodeid[i - 1][0]:
            nodeid[i - 1] += nodeid[i][1:]
            del nodeid[i]    
    
    #3.2. Create Node hashtable :assuming nodes are listed in increasing order of id
    a = open(src)
    line = a.readline().lstrip()        
    while line != '' and len(nodeid) > 0:
        line = a.readline().lstrip()        
        if '<node' in line:
            tmpid = line[line.find('id=') + 4:line.find('" ')]
            #find it
            if int(tmpid) == nodeid[0][0]:        
                AddNode(line) 
                del nodeid[0]
                if len(nodeid) % 10000 == 0:
                    print str(len(nodeid)) + " potential nodes left"
            elif int(tmpid) > nodeid[0][0]:
                # no such nodes in the current maplet...        
                while int(tmpid) > nodeid[0][0]:                     
                    for i in range(1, len(nodeid[0])):
                        Ways[nodeid[0][i]].nd.remove(str(nodeid[0][0]))
                    del nodeid[0]
                    if int(tmpid) == nodeid[0][0]:        
                        AddNode(line) 
                        for i in range(1, len(nodeid[0])):
                            Ways[nodeid[0][i]].nd.remove(str(nodeid[0][0]))
                        del nodeid[0]                                                                  
    a.close()
    
    
    
    M = sparse.lil_matrix((len(Ways), len(Ways)), dtype='h')     
    for i in range(len(tmpnodeid) - 1, 0, -1):     
        if tmpnodeid[i][0] == tmpnodeid[i - 1][0]:
            if M[tmpnodeid[i][1], tmpnodeid[i - 1][1]] ==0:
                Findsame(tmpnodeid[i - 1][1], tmpnodeid[i][1])
                #if tmpnodeid[i][1]==1 or tmpnodeid[i - 1][1]==1:
                #    print tmpnodeid[i][1], tmpnodeid[i - 1][1]
            M[tmpnodeid[i][1], tmpnodeid[i - 1][1]] = 1
            M[tmpnodeid[i - 1][1], tmpnodeid[i][1]] = 1            
            tmpnodeid[i - 1] += tmpnodeid[i][1:]
            del tmpnodeid[i]
    
    del nodeid,tmpnodeid    
    
    print str(len(Nodes)) + " nodes added"

    #4. Postprocessing of ways
    #4.0 Break up road segments
    
    pre_len = len(Ways)
    for i in range(pre_len):
        nd_len = len(Ways[i].marked)
        if len(Ways[i].nd)>0 and nd_len != 0:
            Ways[i].marked.append(len(Ways[i].nd) - 1)
            Ways[i].marked.sort()   
            #print Ways[i].marked         
            for j in range(nd_len):
                #tmpWay = Way()
                tmpWay2=copy.deepcopy(Ways[i]) 
                tmpWay2.nd = Ways[i].nd[Ways[i].marked[j]:Ways[i].marked[j + 1] + 1]
                #tmpWay.index = len(Ways)
                #print tmpWay2.name,tmpWay2.nd                
                Ways.append(tmpWay2)
            Ways[i].nd = Ways[i].nd[:Ways[i].marked[0] + 1]
        if i%1000==0:
            print str(i) + " ways processed"
    
    print str(len(Ways)) + " ways after finer segmentation"
    
    #4.1 Some ways are empty by now    
    Ways = filter (lambda a: len(a.nd) > 0, Ways)
    print str(len(Ways)) + " nonempty ways"
    """"""
    #4.2 find bounding box of the way and clean up the nodes a little bit
    for i in range(len(Ways)):
        way = Ways[i]
        way.index = i
        for nd in way.nd:            
            if Nodes[nd].lat > way.maxlat:
                way.maxlat = Nodes[nd].lat
            if Nodes[nd].lat < way.minlat:
                way.minlat = Nodes[nd].lat
            if Nodes[nd].lon > way.maxlon:
                way.maxlon = Nodes[nd].lon
            if Nodes[nd].lon < way.minlon:
                way.minlon = Nodes[nd].lon
    
    return (Nodes, Ways, M, ran_pt)                  
