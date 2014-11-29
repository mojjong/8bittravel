<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../../include/header.jsp" %>

            <section class="page-head-holder">
                <div class="container">

                    <div class="col-xs-12 col-sm-6">
                        <h2>글쓰기</h2>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                        <div class="breadcrumb-holder">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li class="active"><a href="#">Write</a></li>
                            </ol>
                        </div>
                    </div>

                </div>
            </section>

            <section id="more-pages" class="section wide-fat">
                <div class="container">

                    <div class="row">
                        <div class="contents col-sm-8 col-md-9">

							<h2>필수 사항</h2>
                            <div class="form-holder booking-form">
                                <form class="info-form" name="writeForm" action="/bbs/travelbbs/write" method="post">
                                    <div class="row field-row">
                                        <div class="col-xs-10">
                                        	<label>제목</label>

                                             <br />
                                            <input class="required" name="title" placeholder="Title">
                                        </div>
                                        
                                         
                                         
                                    </div>
                                    
                                    <div class="row field-row">
                                    	<div class="col-xs-10">
		                                    <label>내용</label>
		
		                                    <br />
		                                    <textarea class="col-xs-12" placeholder="Additional information" rows="7"></textarea>
	                                  	</div>
        							</div>    
        							                      	
                                    <div class="row field-row">
                                    
                                    	<div class="col-xs-4 col-sm-2">
                                        	<label>어른</label>

                                             <br />
                                            <select class="custom-select" data-placeholder="Adults">
                                                <option value="Adults"></option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-4 col-sm-2">
                                        	<label>아동</label>

                                             <br />
                                            <select class="custom-select" data-placeholder="Kids">
                                                <option value="Kids"></option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select>
                                        </div>
                                        
                                        <div class="col-field-left col-xs-5 col-sm-3">

                                             <label for="check-in-date">시작일</label>

                                             <br />

                                             <input id="check-in-date" class="traveline_date_input" type="text" value="d MM yy" />

                                         </div>

                                         <div class="col-field-right col-xs-5 col-sm-3">

                                             <label for="check-out-date">종료일</label>

                                             <br />

                                             <input id="check-out-date" class="traveline_date_input" type="text" value="d MM yy" />

                                         </div>
                                    	
                                    	
                                    </div>
                                    
                                    <div class="row field-row">
                                    	<div class="col-xs-12 col-sm-3">
                                        	<label>테마1</label>

                                             <br />
                                            <select class="custom-select" data-placeholder="Theme1">
                                                <option value="테마"></option>
                                            </select>
                                         </div>
                                        
                                         <div class="col-xs-12 col-sm-3">
                                        	<label>테마2</label>

                                             <br />
                                            <select class="custom-select" data-placeholder="Theme2">
                                                <option value="테마"></option>
                                            </select>
                                         </div>
                                    	
                                        <div class="col-xs-12 col-sm-4">
                                        	<label>교통수단</label>

                                    		<br />
                                            <select class="custom-select" data-placeholder="Transport">
                                                <option value="none"></option>
                                                <option value="bus">버스</option>
                                                <option value="train">기차</option>
                                                <option value="car">자가용</option>
                                            </select>
                                        </div>
                                        
                                        <div class="col-xs-10 col-sm-6">
                                        	<label>예상 경비</label>

                                    		<br />
                                            <input class="required " placeholder="Cost">
                                        </div>
                                    </div>
                                    <br>
                                    <button type="submit" class="button green narrow">등록</button>
                                    <button type="reset" class="button green narrow">취소</button>
                                </form>



                            </div>




                        </div>

                    </div>

                </div>
            </section><!-- /#more-pages.section -->































         

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









        </div><!-- /#site -->

        <!-- Scripts -->



        <!-- jQuery -->



        <script src="/resources/inc/js/jquery-1.10.2.min.js"></script>

        <script src="/resources/inc/js/jquery-migrate-1.2.1.js"></script>
        
        <script type="text/javascript" src="/resources/js/event.js"></script>
        
        <script type="text/javascript" src="/resources/js/travelbbs.js"></script>
        
        <script>
        
        
        </script>


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
