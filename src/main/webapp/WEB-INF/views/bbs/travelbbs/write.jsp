<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../../include/header.jsp" %>
		

            <section class="page-head-holder">
                <div class="container">

                    <div class="col-xs-12 col-sm-6">
                        <h2>WRITE</h2>
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

            <section id="contact" class="section wide-fat travel_write-bg">
                <div class="container col-md-offset-3">
							<h1 class="widget-title no-margin-top no-margin-bottom">어떤 <span class="higlight"> 여행 </span>을 가고 싶습니까?&nbsp;&nbsp;</h1>

                    <div class="row">
                        <div class="contents col-sm-8 col-md-9">
							
                            <div class="form-holder booking-form">
                                <form class="info-form" name="writeForm" action="/bbs/travelbbs/write" method="post">
                                 <input name = "regionno" type = "hidden" value= "377">
                                 <input name = "userid" type = "hidden"  value = "user00">
                                 <input name = "themeno" type = "hidden" value = "41">
                                 
                                 
                                 
                                    <div class="row field-row">
                                        <div class="col-xs-10">
                                        	<label>Title</label>

                                             <br />
                                            <input name = "title" class="required" name="title" placeholder="Title">
                                        </div>
                                        
                                    </div>
                                    
                                    <script type="text/javascript" src="/resources/fck/ckeditor.js"></script>
                                    
                                    <div class="row field-row">
                                    	<div class="col-xs-10">
		                                    <label>Contents</label>
		
		                                    <br />
		                                    <textarea name ="content" class="required" id="content" placeholder="Additional information" rows="7"></textarea>
		                                    <!-- fck editor 설정 -->
											<script type="text/javascript">
		              			 					CKEDITOR.replace( 'content' );
		           							</script>
	                                  	</div>
        						 </div> 
        							                      	
                                    <div class="row field-row">
                                    	<div class="col-xs-4 col-sm-2">
                                           <label>Persons</label>

                                             <br />
                                            <select name ="teammember" class="custom-select" data-placeholder="Persons">
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
                                        
                                        
                                        <div class="col-field-left col-xs-5 col-sm-3">

                                             <label for="check-in-date">Start DATE</label>

                                             <br />

                                             <input name = "startdate" id="check-in-date" class="traveline_date_input" type="text" value="dd month yyyy" />

                                         </div>

                                         <div class="col-field-right col-xs-5 col-sm-3">

                                             <label for="check-out-date">End DATE</label>

                                             <br />

                                             <input name="enddate" id="check-out-date" class="traveline_date_input" type="text" value="dd month yyyy" />

                                         </div>
                                    	
                                    	
                                    </div>
                                    
                                     <div class="row field-row">
                                    	
                                    	
                                        <div class="col-xs-12 col-sm-4">
                                        	<label>Transport</label>

                                    		<br />
                                            <select name ="transport"  class="custom-select" data-placeholder="Transport">
                                                <option value="none"></option>
                                                <option value="bus">BUS</option>
                                                <option value="train">TRAIN</option>
                                                <option value="car">CAR</option>
                                            </select>
                                        </div>
                                        
                                        <div class="col-xs-10 col-sm-6">
                                        	<label>COST</label>

                                    		<br />
                                            <input name= "cost" class="required" placeholder="Cost">
                                        </div>
                                    </div>
                                  
                                    <hr>
                                    
                                    <button type="submit" class="button green narrow" >Register</button>
                                    <button type="reset" class="button green narrow">Cancel</button>
                                </form>



                            </div>




                        </div>

                    </div>

                </div>
            </section><!-- /#more-pages.section -->































 <%@include file="../../include/footer.jsp"%>








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
