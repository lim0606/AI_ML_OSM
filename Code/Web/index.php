<html>
<head>
<title>Track John</title>
<script src="http://www.openlayers.org/api/OpenLayers.js"></script>
<script src="http://www.openstreetmap.org/openlayers/OpenStreetMap.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>

<script type="text/javascript">
// Start position for the map (hardcoded here for simplicity,
// but maybe you want to get this from the URL params)
var vlat=42.330577;
var vlon=-71.1344756;
var vzoom=12;
var map; //complex object of type OpenLayers.Map
var color=new Array("green","blue","red",'black')

function addgpx(gpxfile,label,color,width) {
//alert(color+" "+width);
var lgpx = new OpenLayers.Layer.GML(label, gpxfile, {
format: OpenLayers.Format.GPX,
style: {strokeColor: color, strokeWidth: width, strokeOpacity: 0.5},
projection: new OpenLayers.Projection("EPSG:4326")
});
map.addLayer(lgpx);
}


function init() {

map = new OpenLayers.Map ("map", {
controls:[
new OpenLayers.Control.Navigation(),
new OpenLayers.Control.PanZoomBar(),
new OpenLayers.Control.LayerSwitcher(),
new OpenLayers.Control.Attribution()],
maxExtent: new OpenLayers.Bounds(-20037508.34,-20037508.34,20037508.34,20037508.34),
maxResolution: 156543.0399,
numZoomLevels: 19,
units: 'm',
projection: new OpenLayers.Projection("EPSG:900913"),
displayProjection: new OpenLayers.Projection("EPSG:4326")
} );

//Layers
layerG = new OpenLayers.Layer.Google("Google Streets", {visibility: false});
map.addLayer(layerG);
layerMapnik = new OpenLayers.Layer.OSM.Mapnik("Mapnik");
map.addLayer(layerMapnik);
/*
layerCycleMap = new OpenLayers.Layer.OSM.CycleMap("CycleMap");
map.addLayer(layerCycleMap);
layerTilesAtHome = new OpenLayers.Layer.OSM.Osmarender("Osmarender");
map.addLayer(layerTilesAtHome);
 */

// GPX & Marker
layerStartMarkers = new OpenLayers.Layer.Markers("Start Point");
layerEndMarkers = new OpenLayers.Layer.Markers("End Point");
var size = new OpenLayers.Size(21, 25);
var offset = new OpenLayers.Pixel(-(size.w/2), -size.h);
<?php
if($_GET["id"]) {
$id=$_GET["id"];
if($id=="111"){
 echo "var pois = new OpenLayers.Layer.Text( \"Points\",
                    { location:\"data/111/cluster.txt\",
                      projection: map.displayProjection
                    });\n";
 echo "map.addLayer(pois);\n";
    echo "vzoom=10;\n";
}else if($id=="222"||$id=="33"||$id=="44"||$id=="55"||$id=="66"){
$file = @fopen("data/".$id."/cluster.txt", "r") ;
while(! feof($file))
  {
  $gpx=substr(fgets($file),0,-1);
  $count=substr(fgets($file),0,-1);
if(strlen($gpx)>10){
  //color scheme: 1-4,5-9,10+
  if($count<5){
    $id="<5 times";
    $cc=0;
   }else if($count<10){
    $id="<10 times";
    $cc=1;
  }else{
    $id="10+ times";
    $cc=2;
   }
  echo "addgpx(\"data/".$gpx."\",\"".$count."\",color[".($cc)."],".((int)ceil($count)).");\n";
  }
}
fclose($file) ;
}else if($id=="333"){
	$directory = "data/anote/";
    $gpxs = glob($directory . "*.gpx");
    $cc=0;
foreach($gpxs as $gpx) {	
	if(substr($gpx,11,1)=="m"){
	echo "addgpx(\"".$gpx."\",\"".$cc."\",color[".($cc%3)."],10);\n";
	$cc+=1;
	}
}
}else if($id=="77"){
	$directory = "data/lane/";
    $gpxs = glob($directory . "*.gpx");
    $cc=0;
foreach($gpxs as $gpx) {	
	echo "addgpx(\"".$gpx."\",\"".$cc."\",color[".($cc%3)."],1);\n";
	$cc+=1;
	}
}else if($id=="88"){
    $directory = "data/lane_assign/";
    $gpxs = glob($directory . "*.gpx");
    $cc=0;
foreach($gpxs as $gpx) {	
	echo "addgpx(\"".$gpx."\",\"".$cc."\",color[".($cc%3)."],5);\n";
	$cc+=1;
	echo "vzoom=18;\n";
	echo "vlat=42.347;\n";
	echo "vlon=-71.103;\n";
}
}else if($id=="99"){
    $directory = "data/FCW/";
    $gpxs = glob($directory . "*.gpx");
    $cc=0;
foreach($gpxs as $gpx) {	
	echo "addgpx(\"".$gpx."\",\"".$cc."\",color[1],5);\n";
	$cc+=1;
	echo "vzoom=14;\n";
	echo "vlat=42.347;\n";
	echo "vlon=-71.103;\n";
	}
}else if($id=="444"){
	$directory = "data/anote/";
    $gpxs = glob($directory . "*.gpx");
    $cc=0;
foreach($gpxs as $gpx) {
	if(substr($gpx,11,1)!="m"){
		if(substr($gpx,12,1)!="_"){
			$cc=substr($gpx,11,2);
		}else{
			$cc=substr($gpx,11,1);
		}
	echo "addgpx(\"".$gpx."\",\"".$cc."\",color[".($cc%3)."],5);\n";
	$cc+=1;
	}
}
}else{
$directory = "data/".$id."/";
$file = @fopen($directory ."sta.txt", "r") ;
$gpxs = glob($directory . "*.gpx");
foreach($gpxs as $gpx) {
$time = substr(fgets($file),0,-1);
echo "addgpx(\"".$gpx."\",\"".$id."_".$time."\",color[".($id%3)."],5);\n";
$lat = substr(fgets($file),0,-1);
$lon = substr(fgets($file),0,-1);
echo "layerStartMarkers.addMarker(new OpenLayers.Marker(new OpenLayers.LonLat(".$lon.",".$lat.").transform(new OpenLayers.Projection(\"EPSG:4326\"),map.getProjectionObject()),new OpenLayers.Icon(\"images/ms.png\",size,offset)));\n";
$lat = substr(fgets($file),0,-1);
$lon = substr(fgets($file),0,-1);
echo "layerEndMarkers.addMarker(new OpenLayers.Marker(new OpenLayers.LonLat(".$lon.",".$lat.").transform(new OpenLayers.Projection(\"EPSG:4326\"),map.getProjectionObject()),new OpenLayers.Icon(\"images/me.png\",size,offset)));\n";
}
fclose($file) ;

echo "map.addLayer(layerStartMarkers);\n";
echo "map.addLayer(layerEndMarkers);\n";
}
}

?>
// Center
map.setCenter(new OpenLayers.LonLat(vlon,vlat)
.transform(
new OpenLayers.Projection("EPSG:4326"), // transform from WGS 1984
new OpenLayers.Projection("EPSG:900913") // to Spherical Mercator Projection
), vzoom // Zoom level
);

}
</script>

</head>
<body onload="init();">
<div id="control" style="width:16%;height:100%;float:left">
<p style="background-color:#D9BC84;">
<font size="20" face="Times">Track John</font>
<img src="images/john.jpg" style="height:35px"/>
</p>
<img src="images/ford.jpg" />
<h2>Display Routes</h2>
<ul>
<li ><a href="index.php?id=08-19">2011-08-19</a></li>
<li ><a href="index.php?id=08-20">2011-08-20</a></li>
<li ><a href="index.php?id=08-21">2011-08-21</a></li>
</ul>
<h2>Cluster Routes</h2>
<ul>
<li ><a href="index.php?id=111">Show Node Counts</a></li>
<li ><a href="index.php?id=222">Show All Route Counts</a></li>
<li ><a href="index.php?id=33">Show M-F Route Counts</a></li>
<li ><a href="index.php?id=44">Show S-S Route Counts</a></li>
<li ><a href="index.php?id=55">Show Tue Route Counts</a></li>
<li ><a href="index.php?id=66">Show Wed Route Counts</a></li>
</ul>  
<h2>Anotate Routes</h2>
<ul>
<li ><a href="index.php?id=333">Original Route</a></li>
<li ><a href="index.php?id=444">Anotated Route</a></li>
</ul>  
                                                                                      
<h2>Lane Assignment</h2>
<ul>
<li ><a href="index.php?id=77">Beacon Street</a></li>
<li ><a href="index.php?id=88">Check Boundary</a></li>
</ul>  

<h2>FCW Signals</h2>
<li ><a href="index.php?id=99">Display</a></li>
</div>
<div id="map" style="width:84%;height:100%;float:right">

</div>
</body>
</html>
