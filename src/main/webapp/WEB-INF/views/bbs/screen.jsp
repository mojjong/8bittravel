<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>


<html>
<head>
<title>fetchkml_dom_example.html</title>
<script src="/resources/inc/js/jquery-1.10.2.min.js"></script>

<script src="/resources/inc/js/jquery-migrate-1.2.1.js"></script>

<script src="http://earth-api-samples.googlecode.com/svn/trunk/lib/kmldomwalk.js" type="text/javascript"></script>

<script src="//www.google.com/jsapi?key=ABQIAAAA5El50zA4PeDTEMlv-sXFfRSsTL4WIgxhMZ0ZK_kHjwHeQuOD4xTdBhxbkZWuzyYTVeclkwYHpb17ZQ"></script>

<script type="text/javascript">

    var ge;
    
    google.load("earth", "1", {"other_params":"sensor=false"});
    
    function init() {
        google.earth.createInstance('map3d', initCB, failureCB);
    }
    
    
    function initCB(instance) {
//     	var gpsstr = null;
    	$.getJSON("/bbs/google/list" , function (data) {
            var gps = "";
            $.each(data, function (key, val) {
            	console.log(val);
            	
            	gps += val + ",";
            	
            	console.log(gps);
            });
            
            
            var gpsstr = gps.split(",");
        	
            ge = instance;
            ge.getWindow().setVisibility(true);
            
         // add a navigation control
            ge.getNavigationControl().setVisibility(ge.VISIBILITY_AUTO);
         
         
         // add some layers
            ge.getLayerRoot().enableLayerById(ge.LAYER_BORDERS, true);
         
            
             var kmlString = ''
            	 +'<?xml version="1.0" encoding="UTF-8"?>'
            	 +'<kml xmlns="http://www.opengis.net/kml/2.2" xmlns:gx="http://www.google.com/kml/ext/2.2">'
            	 +'<Document>'
            	   
           	     for(i = 0; i < gpsstr.length-1; i+=2){
                   	kmlString += '<Style id="mystyle_'+i+'">'
                        + '<IconStyle>'                          
                        + '<Icon><href>http://192.168.0.77:8080/bbs/google/view?filename='+i+'.jpg</href>'
                        + '</Icon>'
                        + '<scale>2.2</scale>'
                        + '</IconStyle>'
                        + '</Style>'
	                   	+ '  <Placemark>'
	                    + '    <styleUrl>#mystyle_'+i+'</styleUrl>'
	                    + '    <Point>'
	                    + '      <coordinates>'+gpsstr[i+1]+','+gpsstr[i]+',0</coordinates>'
	                    + '    </Point>'
	                    + '  </Placemark>';
                  }
            	    
            	  kmlString += 
            		  '<name>balloonVisibility Example</name>'
            	     +'<open>1</open>'
            	     +'<gx:Tour>'
            	     +'<name>Play me</name>'
            	     +'<gx:Playlist>';
            	       
           	     for(i = 0; i < gpsstr.length-1; i+=2){
           	  			
           	    	kmlString += 
           	    		'<gx:FlyTo>'
           	           +'<gx:duration>5.0</gx:duration>'
           	           +'<LookAt>'
           	           +'<longitude>'+gpsstr[i+1]+'</longitude>'
           	           +'<latitude>'+gpsstr[i]+'</latitude>'
           	           +'<altitude>400</altitude>'
           	           +'<heading>0.0</heading>'
           	           +'<tilt>0.0</tilt>'
           	           +'<gx:altitudeMode>relativeToGround</gx:altitudeMode>'
           	           +'</LookAt>'
           	           +'</gx:FlyTo>'

           	           +'<gx:AnimatedUpdate>'
           	           +'<Update>'
           	           +'<targetHref/>'
           	           +'<Change>'
           	           +'<Placemark targetId="underwater1">'
           	           +'<gx:balloonVisibility>1</gx:balloonVisibility>'
           	           +'</Placemark>'
           	           +'</Change>'
           	           +'</Update>'
           	           +'</gx:AnimatedUpdate>'
           	           +'<gx:Wait>'
           	           +'<gx:duration>5.0</gx:duration>'
           	           +'</gx:Wait>';
           	       }

            	   kmlString += '</gx:Playlist>'
            	       +'</gx:Tour>'
            	       +'</Document>'
            	       +'</kml>';
                    

            var kmlObject = ge.parseKml(kmlString);
             ge.getFeatures().appendChild(kmlObject);

			
          // Walk through the KML to find the tour object; assign to variable 'tour.'
             walkKmlDom(kmlObject, function() {
                 if (this.getType() == 'KmlTour') {
                     tour = this;
                     return false;
                 }
             });
            
        });
    	
    }
           
    
       

    function showHideKml() {
        kmlObject.setVisibility(!kmlObject.getVisibility());
    }

    function failureCB(errorCode) {
    	console.log("실패");
    }

    function enterTour() {
        if (!tour) {
            alert('No tour found!');
            return;
        }
        ge.getTourPlayer().setTour(tour);
    }
    
    function playTour() {
        ge.getTourPlayer().play();
    }
    
    function pauseTour() {
        ge.getTourPlayer().pause();
    }
    
    function resetTour() {
        ge.getTourPlayer().reset();
    }
    
    function exitTour() {
        ge.getTourPlayer().setTour(null);
    }

    google.setOnLoadCallback(init);
    
    </script>

</head>
<body>
<div id="map3d" style="height: 400px; width: 600px;"></div>
<div id ="controls">
    <input type="button" onclick="enterTour()" value="Enter Tour"/>
    <input type="button" onclick="playTour()" value="Play Tour"/>
    <input type="button" onclick="pauseTour()" value="Pause Tour"/>
    <input type="button" onclick="resetTour()" value="Stop/Reset Tour"/>
    <input type="button" onclick="exitTour()" value="Exit Tour"/>
</div>
</body>
</html>
