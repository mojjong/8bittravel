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
							
							 <div class="col-sm-5 contact section-intro">
							 <div style="width: 400px; height: 400px; margin: 0px 0px 20px 30px; padding: 0px; margin-bottom: 40px;" class="home-map no-margin-bottom">
							 <div id="map"></div>
							 </div>
							 
							<!-- <div id="map_canvas" style="width: 400px; height: 400px; margin: 0px 0px 20px 30px; padding: 0px; margin-bottom: 40px;" class="home-map no-margin-bottom"></div> -->
							
							</div>
							<div class="col-sm-7 sidebar">
							                            <div class="widget no-margin-bottom">
                                <h1 class="widget-title no-margin-top no-margin-bottom">당신의 <span class="higlight">1일차 </span>일정 입니다.</h1>
                                <p>&nbsp;</p>
                            <div class="main-contact-form">
                            
                              <!--하나의 div  -->
                                <div class="widget no-margin-bottom">
                                	<form name = "placeList" id = "placeListId" action = "/bbs/guide/guideview" >    
				                        <input type="hidden" name="gpno" value="61">  
				                        <input type="hidden" name = "no">  
				                        <input type="hidden" name="place"  >
				                        <input type="hidden" name="msg"  >
	                        
	                        <div class="widget no-margin-bottom">
	                                <h3 class="widget-title">1DAY 일정</h3>
	                                
	                        <c:forEach var="placevo" items="${placeList}">
	                        
	                           <address >
		       					<ul class='address-ul fa-ul'>
				       				<li id="placeId_${placevo.getNo() }"><span><i class='fa-li fa fa-home'></i>${placevo.getPlace()}+ ${placevo.getNo() }</span></li>
		       						<li id="msgId_${placevo.getNo() }"><span><i class='fa-li fa fa-map-marker'></i>${placevo.getMsg()}</span></li>
		       						
		       					</ul>
		       					</address>
		       				
		       					<hr>
	                                
		       				</c:forEach>              
		       					<hr>
	                               
	                            </div> 
                          </form>   
                             
								</div>
							                  
                                <hr>
                        
                                
                             <div class="main-contact-form">
                                <form  name = "costForm" method="post">
                                    <div class="row">
                                        <div class="col-sm-4">
                                        <label for="check-in-date2">가이드 비용</label>
                                        <input class="form-control" type="text" name="name" placeholder="가이드 비용" /></div>
                                        <div class="col-sm-8">
                                        <label for="check-in-date2">가이드 내용</label>
                                        <input class="form-control" type="text" name="email" placeholder="추가 사항" /></div>    
									</div>
                                </form><!-- costForm 끝 -->
                                <hr>
                            </div>                                    
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