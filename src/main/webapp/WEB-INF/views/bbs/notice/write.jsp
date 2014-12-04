<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../../include/header.jsp"%>

            

            <section class="page-head-holder">
                <div class="container">

                    <div class="col-xs-12 col-sm-6">
                        <h2>NOTICE WRITE</h2>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                        <div class="breadcrumb-holder">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Pages</a></li>
                                <li class="active"><a href="#">page</a></li>
                            </ol>
                        </div>
                    </div>

                </div>
            </section>

            <section id="more-pages" class="section wide-fat">
                <div class="container">

                    <div class="row">
                        <div class="contents col-sm-8 col-md-9">

                            <h3>Title</h3>
                            <div class="form-holder booking-form">
                                <form name="writeForm">
                                    <div class="row field-row">
                                        <div class="col-xs-12 ">
                                            <input name="title" class="required " placeholder="Enter">
                                        </div>
                                        </div>
                                        
                                    <hr class="transparent"/>
                                 	
                                 	<h3>Content</h3>
                                    <textarea name="content" style="resize:none"  class="col-xs-12" placeholder="Enter" rows="14"></textarea>

									<button id="wrtiebtn" class="button green narrow"> SEND </button>
                                    <hr class="transparent"/>
                                  </form>  
                            </div>
                        </div>
                    </div>

                </div>
            </section><!-- /#more-pages.section -->

<script>
var EventUtil = {
         addHandler: function(element, type, handler){
            element.addEventListener(type, handler, false);
         }
   }   

   EventUtil.addHandler(document, "DOMContentLoaded", function(
         event) {
      EventUtil.addHandler(wrtiebtn, "click", function() {
         write();
      });
   });
   
   function write() {
      alert("글작성");
      document.writeForm.method = "post"
      document.writeForm.action = "/bbs/notice/write"
      document.writeForm.submit();
   }
   </script>





		<footer id="footer-black" class="widefat ">




                <div class="container">


                    <div class="col-xs-12 col-md-4">

                        <div class="footer-logo">

                            <h1 class="site-title">



                                <a href="#"><img src="images/site-logo.png" alt="Traveline" /> <span>Travel<span class="higlight">ine</span></span></a>



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





<!-- Scripts -->

	

	<!-- jQuery -->

	

      

<script src="/resources/inc/js/jquery-1.10.2.min.js"></script>

<script src="/resources/inc/js/jquery-migrate-1.2.1.js"></script>



<!-- modernizer -->


<script src="/resources/inc/js/modernizr.custom.63321.js"></script>



<!-- FlexSlider -->

<script type="text/javascript"
	src="/resources/inc/js/jquery.flexslider-min.js"></script>


<!-- CatSlider -->

<script type="text/javascript"
	src="/resources/inc/js/jquery.catslider.js"></script>



<!-- Datepicker -->

<script type="text/javascript"
	src="/resources/inc/js/jquery.ui.datepicker.min.js"></script>



<!-- Masonry -->

<script type="text/javascript" src="/resources/inc/js/masonry.min.js"></script>



<!-- Increase/decrease quantity -->

<script type="text/javascript"
	src="/resources/inc/js/increase-decrease-qty.js"></script>



<!-- Mixitup (filterable item) -->

<script type="text/javascript"
	src="/resources/inc/js/jquery.mixitup.min.js"></script>



<!-- Google Map JS -->

<script
	src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>

<script type="text/javascript"
	src="/resources/inc/js/google-map-infobox.js"></script>



<!-- Responsive Google Map (Fitmaps) JS -->

<script type="text/javascript" src="/resources/inc/js/jquery.fitmaps.js"></script>


<!-- Chozen UI JS -->

<script type="text/javascript" src="/resources/inc/js/chosen.jquery.js"></script>



<!-- Checkbox/Radio UI JS -->

<script type="text/javascript"
	src="/resources/inc/js/jquery.screwdefaultbuttonsV2.js"></script>



<!-- Range Slider UI JS #2 -->

<script type="text/javascript"
	src="/resources/inc/js/jquery.mousewheel.min.js"></script>

<script type="text/javascript"
	src="/resources/inc/js/jQRangeSlider-min.js"></script>

<!-- bootstrap JS -->

<script type="text/javascript"
	src="/resources/inc/bootstrap/js/bootstrap.min.js"></script>

<!-- raty JS -->

<script type="text/javascript"
	src="/resources/inc/js/jquery.raty.min.js"></script>

<!-- Custom JS -->

<script type="text/javascript" src="/resources/inc/js/custom.js"></script>



    </body>

</html>