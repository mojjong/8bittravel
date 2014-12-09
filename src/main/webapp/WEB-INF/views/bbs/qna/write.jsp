<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@include file="../../include/header.jsp" %>
 
  <section class="page-head-holder">

                <div class="container">

                    <div class="col-xs-12 col-sm-6">



                        <h2>QNA 작성하는 화면</h2>

                    </div>

                    <div class="col-xs-12 col-sm-6">

                        <div class="breadcrumb-holder">

                            <ol class="breadcrumb">

                                <li><a href="#">Home</a></li>

                                <li><a href="#">hotel detail</a></li>

                                <li class="active"><a href="#">01-travel info</a></li>



                            </ol>

                        </div>

                    </div>

                </div>

            </section>

            <section id="travel-info" class="section wide-fat reservation-pages">
                <div class="container">
                
                <form class="info-forn" name="writeForm" action="/bbs/qna/write" method="post">
                
                  <div class="col-xs-12 col-sm-8">

                        <div class="form-holder">

                            

                                <div class="row field-row">

                                    <div class="col-xs-12 col-sm-6">

                                        <input type="text" class="required " name="title" placeholder="문의제목">

                                    </div>

                                </div>
                                
                               
                                
                                <div class="row field-row">

                                    <div class="col-xs-12 col-sm-6">

										
                                        <input type="text" class="required " name="userid" placeholder="유저아이디">

                                    </div>

                             </div>
 
                                <div class="row field-row">

                                    <div class="col-xs-12 col-sm-6">
                              			<textarea class="col-xs-12" name="content" placeholder="문의내용 입력" rows="7"></textarea>
									</div>
								</div>

                       </div>   

                    </div>
                                <button type="submit" class="button green narrow">확인</button>
 				</form>
                    <div class="col-xs-12 col-sm-4">
                           <div class="spicifications-widget">
                                </div>

                            </div>
                        </div>
                   </div>
               </div>
            </section>
            <footer id="footer" class="widefat">
                <div class="container">
                    <div class="footer-inner">
                       <p class="credit">Traveline - Copyright 2014. Developed by jThemes</p>
                    </div><!-- /.footer-inner -->
                </div>
      </footer><!-- /#footer -->
        </div><!-- /#site -->
       <!-- Scripts -->

        <!-- jQuery -->

        <script src="/resources/inc/js/jquery-1.10.2.min.js"></script>

        <script src="/resources/inc/js/jquery-migrate-1.2.1.js"></script>

        <script type="text/javascript" src="/resources/js/event.js"></script>
        
        <script type="text/javascript" src="/resources/js/travelbbs.js"></script>


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
    </body>

</html>