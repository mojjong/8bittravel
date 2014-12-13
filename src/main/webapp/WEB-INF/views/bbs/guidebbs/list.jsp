<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../../include/header.jsp" %>
<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=e0e69ff3e4c9fb550cdd83e5db85f04c"></script>

                  <section id="contact" class="section wide-fat">
                   
                <div class="container">
                    <div class="row">          
   <div class="widget widget-tabs">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#recent" data-toggle="tab">Map</a></li>
                                <li><a href="#popular" data-toggle="tab">Day1</a></li>
                                <li><a href="#popular" data-toggle="tab">Day2</a></li>
                                <li><a href="#popular" data-toggle="tab">Day3</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active featured-posts" id="recent">
						
							<div class="col-sm-7 sidebar">
							
							  <div class="widget no-margin-bottom">
							  <c:forEach var="guvo" items="${guList}">
							  	<h1 class="block-title text-center" >
							  		<a href='/bbs/guide/guideview?no=${guvo.getTravelno()}'>${guvo.getGuideid()}님의 Guide</a>
						  		</h1>
                                <p>&nbsp;</p>
                              </c:forEach>
                            <div class="main-contact-form">
                            
                            
							                  
                                <hr>
                                                        
                   		 </div>                                                                
                	</div>
           		</div>
	  		</div>
                                <div class="tab-pane fade featured-posts" id="popular">
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="images/blog/blog-sidebar-2.jpg" alt="">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="#">Suspendisse risus sem</a></h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel euismod neque.</p>
                                            <p class="post-date"><i class="fa fa-clock-o"></i> about 5 house ago</p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="images/blog/blog-sidebar-1.jpg" alt="">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="#">Curabitur sed lorem </a></h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel euismod neque.</p>
                                            <p class="post-date"><i class="fa fa-clock-o"></i> about 5 house ago</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.widget -->                     
                    </div>
                </div>
                </section><!--지도 섹션끝  -->
       
       
  
       
       
       
       
       
       
       
       
                        
                        <!-- Scripts -->
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