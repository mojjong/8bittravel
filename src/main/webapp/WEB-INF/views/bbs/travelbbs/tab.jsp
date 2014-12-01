<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../../include/header.jsp" %>

 <section id="contact" class="section wide-fat">
<div class="col-xs-12 col-md-6">

                          <br>
                        <div class="tab-holder">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" >
                                <li class="active"><a href="#overview" data-toggle="tab">1DAY</a></li>
                                <li><a href="#review" data-toggle="tab">2DAY</a></li>
                                <li><a href="#articles" data-toggle="tab">3DAY</a></li>
                            </ul>
                            <!-- Tab panes -->

                            <div class="tab-content">
                                <div class="tab-pane active" id="overview">

                                    <!--지도 보여주기  -->
            <div id="map_canvas" class="home-map no-margin-bottom"></div>
			<!--일정계획하기  -->
            
                <div class="container">

                    <div class="row">
                     <!--가이드가 제시한 비용과 가이드 비용  -->
                    <div class="hotels-filter">
                            <div class="vertical-hotel-filter col-md-9 col-sm-6">
                                <form id= "guideForm" class="hotels-filter-form"  method="get">
                                    <ul>

                                        <li class="search-heading col-md-3 col-sm-6"><h3>Place</h3></li>                                       
										<li>
											<input class="most-popular form-member" type="text" name="Place" placeholder="Place input.." />
										</li>    
										                                                                       
                                       	<li class="search-heading col-md-3 col-sm-6"><h3>Desc</h3></li>
                                        <li>
											<input class="most-popular form-member" type="text" name="desc" placeholder="Desc input..." />
										</li>
										
										
                                    </ul>
                                    <a href="#" class="button mini navy">+ADD</a>
                                </form>                       
                        </div>
                    </div><!-- /.hotels-filter -->
                     <ul class="head">
									<li class='no'>No</li>
									<li class='userid'>UserId</li>
									<li class='pay'>Pay</li>
									<li class='cost'>Cost</li>
									<li class='regdate'>Regdate</li>
								</ul>
                                
                                <!--가이드 리스트 출력  -->
								<div  id="guideList"> </div>                     
                    </div>
                    
                    <!--가이드가 제시한 비용과 가이드 비용  -->
                    <div class="hotels-filter">
                            <div class="vertical-hotel-filter col-md-9 col-sm-6">
                                <form class="hotels-filter-form"  method="get">
                                    <ul>

                                        <li class="search-heading col-md-3 col-sm-6"><h3>Expect Cost</h3></li>                                       
										<li><input class="most-popular form-member" /></li>    
										                                                                       
                                       	<li class="search-heading col-md-3 col-sm-6"><h3>Guide Fee</h3></li>
                                        <li><input class="most-popular form-member"/></li>
                                    </ul>
                                </form>                       
                        </div>
                    </div><!-- /.hotels-filter -->
                    
                </div>        
            
                           
     </div><!--#overview tab 끝  -->

                                <div class="tab-pane" id="review">
                                    <h2>Review</h2>
                                    <div class="star-holder "><div class="star big" data-score="4"></div></div><br>
                                    <p>
                                        Morbi imperdiet lacus nec ante blandit, sit amet fermentum magna faucibus. Nunc nec libero id urna vulputate venenatis. Aenean vulputate odio felis, in rhoncus sapien auctor nec. Donec non posuere sem. Ut quis egestas libero, mattis gravida nibh. Phasellus a nisi ac mi luctus tincidunt et non est. Proin ac orci rhoncus arcu bibendum molestie vel et metus. Aenean iaculis purus et velit iaculis, nec convallis ipsum ornare. Integer a orci enim.
                                    </p>
                                </div><!--Review div 끝  -->
                                
                                <div class="tab-pane" id="articles">
                                    <h2>Article</h2>

                                </div><!--article div 끝  -->

                                </div>

                            </div>

                            <br>

                        </div>
                        
                        </section><!-- /#contact.section -->
                        
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
        
        <script>
        var scroll = function(){
       		/* var formData = $("#guideForm").serialize();
 */        /* 	console.info("폼테이터" + formData); */
        $.ajax({
                url:"/bbs/guide/list",
                dataType:'json',
                type:"post",
                success: function (data) {
                	//데이터의 갯수만큼 알아서 반복!(each)
                    $.each(data, function(k,v){
                        $("#guideList").append(
                        		"<ul class='target'>"
                                +"<li class='no'>No : "+v.no+"</li>"
                                +"<li class='userid'>Userid : "+v.userid+"</li>"
                                +"<li class='cost'>Cost : "+v.cost+"</li>"
                                +"<li class='pay'>Pay : "+v.pay+"</li>"
                                +"<li class='regdate'>Reagdate : "+v.regdate+"</li>"
                                +"</ul>"
                        )})
                }
        		,error:function(){
                	alert("history load error!");
                }
            });
    	}
        scroll();
                   
        </script>
        
        <script>
	/* $(window).scroll(function(){  
        if  ($(window).scrollTop() == $(document).height() - $(window).height()){  
        	scroll();  
        }  
	});  
 */
	</script>
    </body>

</html>
                        
                        
                        