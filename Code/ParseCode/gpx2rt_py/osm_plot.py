import pylab as p
import osm_util
# draw the map
def Render(nodes,ways,ran_pt):
    #for way in [ways[7685],ways[3549]]:                            
    fig = p.figure()
    ax = fig.add_subplot(111,autoscale_on=False,xlim=(ran_pt[1],ran_pt[3]),ylim=(ran_pt[0],ran_pt[2]))
    nw=0
    for haha in [3909,7476]:
        way=ways[haha]
        try:
            if way.highway in osm_util.Constant.roadtype:
                oldX = None
                oldY = None
                nCnt=0
                #thisRendering = osm_util.Constant.renderingRules[way.highway]
	        thisRendering = osm_util.Constant.renderingRules['secondary']
                for nid in way.nd:
                    y = nodes[nid].lat
                    x = nodes[nid].lon
                    #print nid,x,y,thisRendering,nCnt
                    if oldX == None:
                        # first point in road way
                        """"""
                        p.plot([x],[y],
                            marker          = thisRendering['_firstmarker'],
                            markeredgecolor = thisRendering['_firstmarkeredgecolor'],
                            markeredgewidth = thisRendering['_firstmarkeredgewidth'],
                            markerfacecolor = thisRendering['_firstmarkerfacecolor'],
                            markersize      = thisRendering['_firstmarkersize'],    
                            zorder          = thisRendering['_firstzorder'],               
                            )                                               
                    elif nCnt<(len(way.nd)-1):
                        p.plot([oldX,x],[oldY,y],
                            marker          = '',
                            linestyle       = thisRendering['linestyle'],
                            linewidth       = thisRendering['linewidth'],
                            color           = thisRendering['color'],
                            alpha           = thisRendering['alpha'],
                            solid_capstyle  = thisRendering['solid_capstyle'],
                            solid_joinstyle = thisRendering['solid_joinstyle'],
                            zorder          = thisRendering['zorder'],
                            )
                        """"""
                        p.plot([x],[y],
                            marker          = thisRendering['marker'],
                            markeredgecolor = thisRendering['markeredgecolor'],
                            markeredgewidth = thisRendering['markeredgewidth'],
                            markerfacecolor = thisRendering['markerfacecolor'],
                            markersize      = thisRendering['markersize'],                   
                            color           = thisRendering['color'],
                            alpha           = thisRendering['alpha'],
                            zorder          = thisRendering['markerzorder'],
                            )                        
                        #if abs(oldX-x)>0.03 or abs(oldY-y)>0.03:
                            #print way.wid,way.nd
                    else:
                        # last segment in road way
                        p.plot([oldX,x],[oldY,y],
                            marker          = '',
                            linestyle       = thisRendering['linestyle'],
                            linewidth       = thisRendering['linewidth'],
                            color           = thisRendering['color'],
                            alpha           = thisRendering['alpha'],
                            solid_capstyle  = thisRendering['solid_capstyle'],
                            solid_joinstyle = thisRendering['solid_joinstyle'],
                            zorder          = thisRendering['zorder'],
                            )                    
                    oldX = x
                    oldY = y
                    nCnt+=1

                # last point in road way
                """
                p.plot([x],[y],
                            marker          = thisRendering['_lastmarker'],
                            markeredgecolor = thisRendering['_lastmarkeredgecolor'],
                            markeredgewidth = thisRendering['_lastmarkeredgewidth'],
                            markerfacecolor = thisRendering['_lastmarkerfacecolor'],
                            markersize      = thisRendering['_lastmarkersize'],
                            zorder          = thisRendering['_lastzorder'],
                        )
                """
        except KeyError:
            pass
        nw+=1
        if nw%1000 == 0:
            print str(nw)+" ways were drawn"
          
    #p.ioff()
    """
    ll=osm_util.readgpx('data/10-03/mfallon mit 2011-10-03 08-09-30-204753 Partition 0 71.gpx')
    thisRendering = osm_util.Constant.renderingRules['tertiary_link']
    for i in range(len(ll)):
        p.plot(ll[i][1],ll[i][0],
                            marker          = thisRendering['_lastmarker'],
                            markeredgecolor = thisRendering['_lastmarkeredgecolor'],
                            markeredgewidth = thisRendering['_lastmarkeredgewidth'],
                            markerfacecolor = thisRendering['_lastmarkerfacecolor'],
                            markersize      = thisRendering['_lastmarkersize'],
                            zorder          = thisRendering['_lastzorder'],
                        )
    """
    print'Done Plotting'
    p.show()
    print nw

