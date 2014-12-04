<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp" %>

            <section class="page-head-holder">

                <div class="container">

                    <div class="col-xs-12 col-sm-6">



                        <h2>상세 보기</h2>

                    </div>

                    <div class="col-xs-12 col-sm-6">

                        <div class="breadcrumb-holder">

                            <ol class="breadcrumb">

                                <li><a href="#">Home</a></li>

                                <li><a href="#">hotel detail</a></li>

                                <li><a href="#">01.travel info</a></li>

                                <li><a href="#">02.payment</a></li>

                                <li class="active"><a href="#">03.confirm</a></li>



                            </ol>

                        </div>

                    </div>

                </div>

            </section>


            <section id="confirm-page" class="section wide-fat reservation-pages">





                <div class="container">	





                    <div class="col-xs-12 col-sm-8">

                        <div class="confirm-page">

                            <h1>${vo.title }</h1>

                            <hr>

                            <article>

                                <ul class="tabled-ul">

                                    <li>

                                        <div class="lbl">userid</div>

                                        <div class="value">${vo.userid }</div>

                                    </li>

                                    <li>

                                        <div class="lbl">content</div>

                                        <div class="value">${vo.content }</div>

                                    </li>

                                    <li>

                                        <div class="lbl">start ~ end</div>

                                        <div class="value">${vo.startdate } ~ ${vo.enddate }</div>

                                    </li>

                                    <li>

                                        <div class="lbl">member</div>

                                        <div class="value">${vo.teammember }</div>

                                    </li>

                                    <li>

                                        <div class="lbl">cost</div>

                                        <div class="value">${vo.cost }</div>

                                    </li>

                                    <li>

                                        <div class="lbl">transport</div>

                                        <div class="value">${vo.transport }</div>

                                    </li>

                                    <li>

                                        <div class="lbl">memo</div>

                                        <div class="value">${vo.memo }</div>

                                    </li>

                                    <li>

                                        <div class="lbl">bidstate</div>

                                        <div class="value">${vo.bidstate }</div>

                                    </li>
                                    
                                    <li>

                                        <div class="lbl">theme</div>

                                        <div class="value">${vo.bidstate }</div>

                                    </li>

                                </ul>

                            </article>

							<button class="btn btn-success btn-sm" id="listBtn">목록</button>
							<button class="btn btn-success btn-sm" id="updateBtn">수정</button>
							<button class="btn btn-danger btn-sm" id="deleteBtn">삭제</button>
                        </div>

                    </div>

                </div>
                <hr>
                <div class="container">	
	                <div class="col-xs-12 col-sm-8">
	
	                	<div class="guide-page">
	                		<h1>Guide List</h1>

                            <hr>
							<form name="guideForm" id="guideForm">
								<input type="hidden" name="travelno" value="${vo.no}">
							</form>
							<div id="guideList"></div>
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
        
        <script>
        
        $(document).ready(function(){
        	
        	
        	var formData = $("#guideForm").serialize();
        	var target = $("#guideList");
        	
        	console.log(target);
        	console.log(formData);
        	
        	$.ajax({
				type : "GET",
				url : "/bbs/guide/guidelist",
				data : formData, //변환된 formData를 요청
				success : function(data) {
					$.each(data, function(key, val) {
						target.append("<h3 class='post-title col-md-10'><a href='/bbs/guide/guideview?no="+val.no+"'>"+val.guideid+"님의 Guide</a></h3>");
					});
				}
        	});
        });
        
        EventUtil.addHandler(document, "DOMContentLoaded", function(event) {
			EventUtil.addHandler(updateBtn, "click", function(event) {
				update();
			});
		});
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