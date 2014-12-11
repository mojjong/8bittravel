<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/mapheader.jsp"%>
            <section class="page-head-holder">

                <div class="container">

                    <div class="col-xs-10">



                        <div class="col-md-offset-5"><h1 class="page-title">My <span class="higlight">Panorama</span></h1></div>

                    </div>

                    <div class="col-xs-2">

                        <div class="breadcrumb-holder">

                            <ol class="breadcrumb">

                                <li><a href="#">Home</a></li>

                                <li class="active"><a href="#">Panorama</a></li>



                            </ol>

                        </div>

                    </div>

                </div>

            </section>


















                  <section id="contact" class="section wide-fat">





                <div class="container">	





                    	
		<div class="container">
            <form enctype="multipart/form-data">
                <div class="form-group">
                    <input id="file-0" class="file" type="file" multiple=true data-show-preview="true">
                </div>
            </form>
        </div>
        
<div class="main-contact-form">
<div class='col-md-3'>
<input type="button" class="button" onclick="enterTour()" value="Enter Tour" />
</div>
<div class='col-md-3'>
<input type="button" class="button" onclick="playTour()" value="Play Tour" />
</div>
<div class='col-md-3'>
<input type="button" class="button" onclick="pauseTour()" value="Pause Tour" />
</div>
<div class='col-md-3'>
<input type="button" class="button" onclick="resetTour()" value="Stop/Reset Tour" />
</div>

<br />&nbsp;

</div>

<article id="post-6" class="contact section-intro">



                        

                        <div class="entry-content">



                            <p><strong>Enter Tour</strong> 버튼을 누르면 파노라마에 여행사진들이 세팅됩니다. | <strong>Play Tour</strong> 버튼을 누르면 파노라마가 재생됩니다.<br />
                            <strong>Pause Tour</strong> 버튼을 누르면 파노라마가 일시 정지됩니다. | <strong>Stop/Reset Tour</strong> 버튼을 누르면 파노라마가 처음으로 돌아갑니다.</p>


                        </div>				



                    </article><!-- /#post-6.contact -->		

                    <div id="map3d" class="home-map" style="padding-top:10px;"></div>


                <hr/>






            </section><!-- /#contact.section -->	

























<footer id="footer-black" class="widefat ">







                <div class="container">





                    <div class="col-xs-12 col-md-4">

                        <div class="footer-logo">

                            <h1 class="site-title">



                                <a href="#"><img src="/resources/images/site-logo.png" alt="Traveline" /> <span>Travel<span class="higlight">ine</span></span></a>



                            </h1>

                            <p>

                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.

                            </p>

                            <p>

                                Sed sed malesuada orci, eu ornare sem. Pellentesque quis metus porta, varius nunc vitae, laoreet nisi. Aenean vitae est dui.

                            </p>

                        </div>

                    </div>





                    <div class="col-xs-12 col-md-4">

                        <div class="newsletter-holder">

                            <h3>



                                news letter

                            </h3>

                            <p>

                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.

                            </p>

                            <input type="text" placeholder="Your Name">

                            <input type="text" placeholder="Your Email Address">

                            <input type="submit" class="button green" value="Subscribe Now">

                        </div>

                    </div>



                    <div class="col-xs-12 col-md-4">

                        <div class="newsletter-holder">

                            <h3>



                                contact info

                            </h3>

                            <p>

                                Traveline - Copyright 2014. Designed by jThemes<br>

                                Email: info@example.com<br>

                                Address: Lorem Ipsuum, Manchester M12 345, UK<br>

                                +44 123 456 7890

                            </p>



                            <ul class="footer-social-icons">

                                <li><a href="#" class="fa fa-facebook"></a></li>

                                <li><a href="#" class="fa fa-twitter"></a></li>

                                <li><a href="#" class="fa fa-pinterest"></a></li>

                                <li><a href="#" class="fa fa-tumblr"></a></li>

                                <li><a href="#" class="fa fa-vimeo-square"></a></li>

                            </ul>

                        </div>

                    </div>





                </div>







            </footer><!-- /#footer -->

        

        





        </div><!-- /#site -->







       <!-- Scripts -->

    
    	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="/resources/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="/resources/js/fileinput.js" type="text/javascript"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js" type="text/javascript"></script>

    <!-- jQuery -->

    

      

        <script src="/resources/inc/js/jquery-1.10.2.min.js"></script>

        <script src="/resources/inc/js/jquery-migrate-1.2.1.js"></script>

    

    <!-- modernizer -->


      

        <script src="/resources/inc/js/modernizr.custom.63321.js"></script>

    

    <!-- FlexSlider -->

    <script type="text/javascript" src="/resources/inc/js/jquery.flexslider-min.js"></script>   

    

    

    <!-- CatSlider -->

    <script type="text/javascript" src="/resources/inc/js/jquery.catslider.js"></script>    



    

    <!-- Datepicker -->

    <script type="text/javascript" src="/resources/inc/js/jquery.ui.datepicker.min.js"></script>    

    

    

    <!-- Masonry -->

    <script type="text/javascript" src="/resources/inc/js/masonry.min.js"></script> 



    

    

    <!-- Increase/decrease quantity -->

    <script type="text/javascript" src="/resources/inc/js/increase-decrease-qty.js"></script>   

    

    <!-- Mixitup (filterable item) -->

    <script type="text/javascript" src="/resources/inc/js/jquery.mixitup.min.js"></script>  

    

    

    <!-- Google Map JS -->

    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>

    <script type="text/javascript" src="/resources/inc/js/google-map-infobox.js"></script>      

        

    

    <!-- Responsive Google Map (Fitmaps) JS -->

    <script type="text/javascript" src="/resources/inc/js/jquery.fitmaps.js"></script>  

    

    <!-- Chozen UI JS -->

    <script type="text/javascript" src="/resources/inc/js/chosen.jquery.js"></script>   

            

    

    <!-- Checkbox/Radio UI JS -->

    <script type="text/javascript" src="/resources/inc/js/jquery.screwdefaultbuttonsV2.js"></script>    

        

    

    <!-- Range Slider UI JS #2 -->

    <script type="text/javascript" src="/resources/inc/js/jquery.mousewheel.min.js"></script>   

    <script type="text/javascript" src="/resources/inc/js/jQRangeSlider-min.js"></script>   

    <!-- bootstrap JS -->

        <script type="text/javascript" src="/resources/inc/bootstrap/js/bootstrap.min.js"></script>     

    <!-- raty JS -->

        <script type="text/javascript" src="/resources/inc/js/jquery.raty.min.js"></script> 

    <!-- Custom JS -->

    <script type="text/javascript" src="/resources/inc/js/custom.js"></script>  

    <!-- Google Earth -->
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
    	$.getJSON("/panorama/google/list" , function (data) {
            var gps = "";
            var fileName = "";
            var lat = "";
            var lng	= "";
            $.each(data, function (key, val) {
            	fileName += val.fileName + " ";
            	lat += val.lat + " ";
            	lng += val.lng + " ";
            });
            
            
            console.log(fileName);
            console.log(lat);
            console.log(lng);
            
            
            var fileNames = fileName.split(" ");
            var lats = lat.split(" ");
            var lngs = lng.split(" ");
            
            console.log(fileNames);
            console.log(lats);
            console.log(lngs);
            
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
            	   
           	     for(i = 0; i < fileNames.length-1; i++){
                   	kmlString += '<Style id="mystyle_'+i+'">'
                        + '<IconStyle>'                          
                        + '<Icon><href>http://localhost:8080/panorama/google/view?filename='+fileNames[i]+'</href>'
                        + '</Icon>'
                        + '<scale>2.2</scale>'
                        + '</IconStyle>'   
                        + '</Style>'
	                   	+ '  <Placemark>'
	                    + '    <styleUrl>#mystyle_'+i+'</styleUrl>'
	                    + '    <Point>'
	                    + '      <coordinates>'+lngs[i]+','+lats[i]+',0</coordinates>'
	                    + '    </Point>'
	                    + '  </Placemark>';
                  }
            	    
            	  kmlString += 
            		  '<name>balloonVisibility Example</name>'
            	     +'<open>1</open>'
            	     +'<gx:Tour>'
            	     +'<name>Play me</name>'
            	     +'<gx:Playlist>';
            	       
           	     for(i = 0; i < fileNames.length-1; i++){
           	  			
           	    	kmlString += 
           	    		'<gx:FlyTo>'
           	           +'<gx:duration>5.0</gx:duration>'
           	           +'<LookAt>'
           	           +'<longitude>'+lngs[i]+'</longitude>'
           	           +'<latitude>'+lats[i]+'</latitude>'
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
    
    
    function upload(){
    	alert("업로드");
    	document.upFileForm.submit();
    }
    
    </script>

    </body>

</html>