import osm_util
import osm_map
#file_f='osm_main.py',file_t='osm_main22',line_s=1,line_e=5

def dist_n2w(pt,way,node):
    min_dist=100
    tmp_dist=min_dist
    #bounding box of the way
    tmppt=osm_map.Node()
    tmppt.lat=pt[0];tmppt.lon=pt[1];
    if (way.minlat-pt[0])*(way.maxlat-pt[0])<=0 or (way.minlon-pt[1])*(way.maxlon-pt[1])<=0:
        for i in range(1,len(way.nd)): 
            #bounding box of the way segment
            if angle_w2w(node[way.nd[i-1]],node[way.nd[i]],node[way.nd[i-1]],tmppt)>=0 and angle_w2w(node[way.nd[i]],node[way.nd[i-1]],node[way.nd[i]],tmppt)>=0:
                #print way.name
                #method 1: consider node to line dist                
                # distance between a node x and a way segment
                n_dist=dist_n2n(node[way.nd[i]],node[way.nd[i-1]])
                if n_dist!=0:
                    # should also consider the segment length
                    n_lon=-(node[way.nd[i]].lat-node[way.nd[i-1]].lat)/n_dist
                    n_lat=(node[way.nd[i]].lon-node[way.nd[i-1]].lon)/n_dist                    
                    tmp_dist=abs((pt[0]-node[way.nd[i-1]].lat)*n_lat+(pt[1]-node[way.nd[i-1]].lon)*n_lon)
                """"""      
                #method 2: naive
            else:
                tmp_dist=dist_n2n(node[way.nd[i]],tmppt)
            if tmp_dist<min_dist:
                min_dist=tmp_dist
                #print node[way.nd[i-1]].lat,node[way.nd[i-1]].lon,node[way.nd[i]].lat,node[way.nd[i]].lon
    return min_dist
"""
def dist_n2w(pt,way,node):
    min_dist=100
    tmp_dist=min_dist
    #bounding box of the way
    tmppt=osm_map.Node()
    tmppt.lat=pt[0];tmppt.lon=pt[1];        
    for i in range(1,len(way.nd)): 
        if angle_w2w(node[way.nd[i]],node[way.nd[i-1]],node[way.nd[i]],tmppt)>=0 and angle_w2w(node[way.nd[i-1]],node[way.nd[i]],node[way.nd[i-1]],tmppt)>=0:
            #method 1: consider node to line dist                
            # distance between a node x and a way segment
            n_dist=dist_n2n(node[way.nd[i]],node[way.nd[i-1]])
            if n_dist!=0:
                n_lon=-(node[way.nd[i]].lat-node[way.nd[i-1]].lat)/n_dist
                n_lat=(node[way.nd[i]].lon-node[way.nd[i-1]].lon)/n_dist                    
                tmp_dist=abs((pt[0]-node[way.nd[i-1]].lat)*n_lat+(pt[1]-node[way.nd[i-1]].lon)*n_lon)
                """"""                  
        else:
            #method 2: naive
            tmp_dist=dist_n2n(node[way.nd[i]],tmppt)
        if tmp_dist<min_dist:
            min_dist=tmp_dist
            #print node[way.nd[i-1]].lat,node[way.nd[i-1]].lon,node[way.nd[i]].lat,node[way.nd[i]].lon
    return min_dist
"""
def angle_w2w(node1,node2,node3,node4):
    # angle between 2 roads
    y0 = float(node1.lat)
    x0 = float(node1.lon)
    y1 = float(node2.lat)
    x1 = float(node2.lon)
    y2 = float(node3.lat)
    x2 = float(node3.lon)
    y3 = float(node4.lat)
    x3 = float(node4.lon)
    return (x0-x1)*(x2-x3)+(y0-y1)*(y2-y3)

def dist_w2w(way1,way2):
    # shortest L1 distance
    tmp1=min([abs(way1.minlat-way2.maxlat),abs(way1.maxlat-way2.minlat),abs(way1.maxlat-way2.maxlat),abs(way1.minlat-way2.minlat)])
    tmp2=min([abs(way1.minlon-way2.maxlon),abs(way1.maxlon-way2.minlon),abs(way1.maxlon-way2.maxlon),abs(way1.minlon-way2.minlon)])
    return tmp1+tmp2

def dist_n2n(node1,node2):
    # distance between a node1 and node2
    y0 = float(node1.lat)
    x0 = float(node1.lon)
    y1 = float(node2.lat)
    x1 = float(node2.lon)
    return ((x0-x1)**2+(y0-y1)**2)**(0.5)

def Global_Search(pt,ways,nodes):
    #pt=[lat,lon]
    min_dist=100
    tmp_dist=100
    min_index=-1   
    #v1:brute aabb
    for way in ways:                 
        tmp_dist=dist_n2w(pt,way,nodes)
        if tmp_dist<min_dist:
            min_dist=tmp_dist
            min_index=way.index
            #print way.name,min_dist
            #min_index=way.wid
    #v2:quadtree aabb
    #v3:persistent tree 
    #print min_index,len(ways)
    #return (min_index,min_dist)
    return min_index

def Global_Search2(pt,M,ways,preW,nodes):
    #pt=[lat,lon]
    min_dist=100
    tmp_dist=100
    min_index=-1   
    for way in ways:
        if M[preW,way.index]==1:                
            tmp_dist=dist_n2w(pt,way,nodes)
            if tmp_dist<min_dist:
                min_dist=tmp_dist
                min_index=way.index
    print min_index,len(ways)
    return min_index

def Local_Search(pt,M,ways,preW,nodes):
    min_dist=dist_n2w(pt,ways[preW],nodes) 
    min_index=preW   
    tmps=M[preW,:].nonzero()
    checked=[preW]
    for tmp in tmps[1]:     
        #print 'lo: '+ways[tmp].name   
        if tmp not in checked:
            tmp_dist=dist_n2w(pt,ways[tmp],nodes) 
            checked.append(tmp)            
            if tmp_dist<min_dist:
                min_dist=tmp_dist
                min_index=ways[tmp].index
                #min_index=ways[tmp].index                            
            tmps2=M[tmp,:].nonzero()    
            #second order connection            
            for tmp2 in tmps2[1]:     
                if tmp2 not in checked:  
                    tmp_dist=dist_n2w(pt,ways[tmp2],nodes) 
                    checked.append(tmp2)
                    if tmp_dist<min_dist:
                        min_dist=tmp_dist
                        min_index=ways[tmp2].index
        """"""
    #return (min_index,min_dist)
    print preW,len(checked)
    return min_index
"""
def Local_Search(pt,M,ways,preW,nodes):
    min_dist=dist_n2w(pt,ways[preW],nodes) 
    min_index=preW   
    tmps=M[preW,:].nonzero()
    checked=[preW]
    for tmp in tmps[1]:     
        #print 'lo: '+ways[tmp].name   
        if tmp not in checked:
            tmp_dist=dist_n2w(pt,ways[tmp],nodes) 
            if tmp_dist<min_dist:
            min_dist=tmp_dist
            min_index=ways[tmp].index
            #min_index=ways[tmp].index                
        checked.append(tmp)
        tmps2=M[tmp,:].nonzero()    
        #second order connection
        for tmp2 in tmps2[1]:     
            tmp_dist=dist_n2w(pt,ways[tmp2],nodes) 
            if tmp_dist<min_dist:
                min_dist=tmp_dist
                min_index=ways[tmp2].index
    #return (min_index,min_dist)
    return min_index

"""
    
def Filter_An(ways,record,nodes):
    thres=4
    thres_dist=0.002
    s=0
    print record
    while s<len(record):         
        #if (s<len(record)-1 and record[s+1][1]-record[s][1]<thres and ways[record[s][2]].name!=ways[record[s+1][2]].name) or (s>0 and ways[record[s][2]].name==ways[record[s-1][2]].name):
        if (s<len(record)-1 and record[s+1][1]-record[s][1]<thres and ways[record[s][2]].name!=ways[record[s+1][2]].name):
        #if (s<len(record)-1 and record[s+1][1]-record[s][1]<thres and ways[record[s][2]].name!=ways[record[s+1][2]].name) or (s>0 and ways[record[s][2]].name==ways[record[s-1][2]].name and ways[record[s][2]].wid==ways[record[s-1][2]].wid):
            #self-check
            del record[s]
        elif (s>1 and s<len(record)-1 and Filter_3w(ways[record[s-1][2]],ways[record[s][2]],ways[record[s+1][2]],nodes)>thres_dist):
            del record[s]
        else:            
            s+=1                   
    print record
    return record

def dist_w2wpt(way1,way2,nodes,index):
    # shortest L1 distance
    return min([abs(nodes[way2.nd[index]].lat-nodes[way1.nd[0]].lat)+abs(nodes[way2.nd[index]].lon-nodes[way1.nd[0]].lon),abs(nodes[way2.nd[index]].lat-nodes[way1.nd[-1]].lat)+abs(nodes[way2.nd[index]].lon-nodes[way1.nd[-1]].lon)])

def Filter_3w(way1,way2,way3,nodes):
    dist_s=dist_w2wpt(way1,way2,nodes,0)     
    dist_e=dist_w2wpt(way1,way2,nodes,-1)
    if dist_s<dist_e:
        return dist_w2wpt(way3,way2,nodes,-1)
    else:
        return dist_w2wpt(way3,way2,nodes,0) 
     

def Annotate(file_f,file_t,M,ways,nodes):
    #file_f='mfallon mit 2011-08-19 18-44-12-342476 Partition 0 4.gpx'
    #segment the route
    a=open(file_f)
    line=a.readline().lstrip()
    cc=0;
    dd=0
    lastcc=0
    pt=[0,0]
    record=[]#(line num,seg num,way index,change_pt_latlon)
    while line!='':
        line=a.readline().lstrip()
        cc+=1
        if 'lat=' in line:        
            pt[0]=float(line[line.find('lat="')+5:line.find('" lon')])
            pt[1]=float(line[line.rfind('lon="')+5:line.find('">')])
            if record==[]:                
                record.append((cc,0,Global_Search(pt,ways,nodes),pt[0],pt[1]))
                #print '1: '+ways[wids[0]].name,ways[wids[-1]].wid,ways[wids[-1]].index
            else:
                #tmp=Local_Search(pt,M,ways,record[-1][2],nodes)
                #tmp=Global_Search2(pt,M,ways,record[-1][2],nodes) 
                tmp=Global_Search(pt,ways,nodes)
                if tmp!=record[-1][2]:
                    record.append((cc,dd,tmp,pt[0],pt[1]))
            dd+=1
            lastcc=cc
    #filter the map noise
    """
    for i in range(len(record)):
        print ways[record[i][2]].name,record[i]    
    """
    record=Filter_An(ways,record,nodes)
    """
    for i in range(len(record)):
        print ways[record[i][2]].name,record[i]    
    """
    #output
    #i) gpx
    """
    for i in range(len(record)-1):
        osm_util.write_gpx(file_f,str(i)+'_'+file_f,record[i][0]+1,record[i+1][0])
    osm_util.write_gpx(file_f,str(len(record)-1)+'_'+file_f,record[-1][0]+1,lastcc)
    """
    #ii) plain text
    #append the end point
    record.append((cc,dd,record[-1][2],pt[0],pt[1]))
    #osm_util.write_route(file_t,record,ways,nodes)
    return record 
