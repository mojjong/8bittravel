<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../../include/header.jsp" %>

            <section class="page-head-holder">

                <div class="container">

                    <div class="col-sm-6 col-xs-12">



                        <h2>travel list</h2>

                    </div>

                    <div class="col-sm-6 col-xs-12">

                        <div class="breadcrumb-holder">

                            <ol class="breadcrumb">

                                <li><a href="#">Home</a></li>

                                <li class="active"><a href="#">travel list</a></li>



                            </ol>

                        </div>

                    </div>

                </div>

            </section>


            <section id="travel list" class="section wide-fat ">
            
            	

                <div class="container">
				<div class="search-heading col-md-2 col-sm-6">
					<h3>Region & Theme</h3>
				</div>
				<div class="vertical-hotel-filter col-md-10 col-sm-6" style="padding-right:10px">
					<form class="filter-form" name="regionfilter" method="get">
						<ul>
        						<div class="col-sm-1 selectContainer" style="margin-top:3px; padding-left:30px">
        						<label>Region</label>
        						</div>
       							<div class="col-sm-2 selectContainer" style="margin-top:3px; padding-left:0px">
            						<select class="form-control" onChange="change_regionDOchange(this)">
									<c:set var="region_temp" />
									<c:forEach var="region" items="${regionList }">
											<c:if test="${region.DO != region_temp }">
											<option value="${region.DO}">${region.DO}</option>
											</c:if>
											<c:set var="region_temp" value="${region.DO }" />
									</c:forEach>
            						</select>
        						</div>
        						
        						<div id="regionSIGUN" class="col-sm-2 selectContainer" style="margin-top:3px; padding-left:0px;">
            						<select class="form-control" name="regionno">
            						</select>
        						</div>
        						<div class="col-sm-1 selectContainer" style="margin-top:3px; padding-left:30px">
        						<label>Theme</label>
        						</div>
        						<div class="col-sm-2 selectContainer" style="margin-top:3px; padding-left:0px;">
            						<select onChange="change_thememode(this)" class="form-control">
									<c:set var="thememode_temp" />
									<c:forEach var="theme" items="${themeList }">
											<c:if test="${theme.thememode != thememode_temp }">
											<option value="${theme.thememode}">${theme.thememode}</option>
											</c:if>
											<c:set var="thememode_temp" value="${theme.thememode }" />
									</c:forEach>
            						</select>
        						</div>
        						
        						<div id="themename" class="col-sm-2 selectContainer" style="margin-top:3px; padding-left:0px;">
            						<select class="form-control" name="themeno">
            						</select>
        						</div>
        						<div id="themename" class="col-sm-2 selectContainer" style="margin-top:3px; padding-left:0px;">
        						<!-- <a class="button mini" style="height:30px; padding-left:0px;" href="javascript:filterSubmit();">Search</a> -->
        						<a href="javascript:filterSubmit();" class="button green mini">Search Now</a>
        						</div>
						</ul>
					</form>
				</div>
			</div>
	<!-- Include Bootstrap-select CSS, JS -->
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/js/bootstrap-select.min.js"></script>

<style type="text/css">
	#bootstrapSelectForm .selectContainer .form-control-feedback {
		/* Adjust feedback icon position */
		right: -15px;
	}
</style>

</section><!-- /#hotels.section -->      





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



        <!-- jQuery -->



        <script src="/resources/inc/js/jquery-1.10.2.min.js"></script>

        <script src="/resources/inc/js/jquery-migrate-1.2.1.js"></script>

        <script type="text/javascript" src="/resources/js/event.js"></script>
        
        <script type="text/javascript" src="/resources/js/travelbbs.js"></script>

		
		
		<script type="text/javascript">
			
		$(document).ready(function(){
			    	var currentPage = 1;
			    	var currentLocation = null;
// 			    	checkForHash();

					
			    	console.log("set currentPage = " + currentPage);
			        var target = $(".contents");
			        
			        $.getJSON("/bbs/travelbbs/filterlist?themeno=${cri.themeno}&regionno=${regionno}&page=" + currentPage, function (data) {
			            
			            $.each(data, function (key, val) {
			            	target.append(
			            			"<div class='row' >"+
                                    "<div class='content  wide col-md-8' >"+
			            			"<div class='inner'>"+
			            			"<div class='col-md-4 col-lg-1 no-margin'>"+
			            			"<br><br><br><br><br><span class='higlight emphasize value'>가이드 가능</span>"+
			            			"</div><div class=' col-md-9 col-lg-9'>"+
			            			"<div class='entry' >"+
			            			"<article class='entry-content'>"+
			            			"<h2 class='post-title col-md-10'>"+ val.no +" <a href='/bbs/travelbbs/read?no="+ val.no +"'> "+ val.title +"</a></h2><span class='user col-md-2'><strong>U_user00</strong></span><br>"+
			            			"<br><br><span class='price col-md-3'><span class='higlight emphasize value'>"+ val.cost +"원</span> / 3 Day</span>"+
			            			"<span class='member col-md-offset-2'>인원 : "+ val.teammember +"명</span>"+
			            			"<span class='region col-md-offset-2'>지역 : "+ val.region +"</span><br />"+
			            			"<br><br><p class='text-left col-md-11'>"+ val.content +"</p></article>"+
			            			"<div class='entry-meta'>"+
			            			"<br><span class='go-detail'><a href='#'>More</a></span>"+
			            			"<span class='review'><a href='#'>24 Reviews</a></span></div>"+
			            			"</div><!-- /.entry -->"+ 
			            			"</div>"+
			            			"<div class='col-md-2 col-lg-2 no-margin'>"+
			            			"<div class='right-area'><br><br><br><br>"+
			            			"<div class='book-holder'>"+
			            			"<a href='javascript:doguide(" + val.no + ")'>Guide</a>"+
			            			"</div></div></div></div></div></div>"
			            	);
			            
			            	
			            	if(key == 4) {
			                    $(window).bind("scroll",function infinityScrollFunction(){
			                    	
			                    	
			                    	//현재문서의 높이를 구함.
			                        var documentHeight  = $(document).height();
			                        //console.log("documentHeight : " + documentHeight);
			                        //scrollTop() 메서드는 선택된 요소의 세로 스크롤 위치를 설정하거나 반환
			                        //스크롤바가 맨 위쪽에 있을때 , 위치는 0
			                        //console.log("window의 scrollTop() : " + $(window).scrollTop());
			                        //height() 메서드는 브라우저 창의 높이를 설정하거나 반환
			                        //console.log("window의 height() : " + $(window).height());
			                        //세로 스크롤위치 max값과 창의 높이를 더하면 현재문서의 높이를 구할수있음.
			                        //세로 스크롤위치 값이 max이면 문서의 끝에 도달했다는 의미
			                        var scrollHeight = $(window).scrollTop()+$(window).height();
			                        //console.log("scrollHeight : " + scrollHeight);
			                        
			                        
			                        if(scrollHeight == documentHeight) { //문서의 맨끝에 도달했을때 내용 추가
			                        	currentPage++;
			                        	console.log(currentPage + " 페이지 로드");
			                        	/* var target = $(".ul_table"); */
			                            $.getJSON("/bbs/travelbbs/filterlist?themeno=${cri.themeno}&regionno=${regionno}&page=" + currentPage, function (data) {
			                                
			                                $.each(data, function (key, val) {
			                                	target.append(
			        			            			"<div class='row' >"+
			                                            "<div class='content  wide col-md-8' >"+
			        			            			"<div class='inner'>"+
			        			            			"<div class='col-md-4 col-lg-1 no-margin'>"+
			        			            			"<br><br><br><br><br><span class='higlight emphasize value'>가이드 가능</span>"+
			        			            			"</div><div class=' col-md-9 col-lg-9'>"+
			        			            			"<div class='entry' >"+
			        			            			"<article class='entry-content'>"+
			        			            			"<h2 class='post-title col-md-10'>"+ val.no +" <a href='/bbs/travelbbs/read?no="+ val.no +"'> "+ val.title +"</a></h2><span class='user col-md-2'><strong>U_user00</strong></span><br>"+
			        			            			"<br><br><span class='price col-md-3'><span class='higlight emphasize value'>"+ val.cost +"원</span> / 3 Day</span>"+
			        			            			"<span class='member col-md-offset-2'>인원 : "+ val.teammember +"명</span>"+
			        			            			"<span class='region col-md-offset-2'>지역 : "+ val.region +"</span><br />"+
			        			            			"<br><br><p class='text-left col-md-11'>"+ val.content +"</p></article>"+
			        			            			"<div class='entry-meta'>"+
			        			            			"<br><span class='go-detail'><a href='#'>More</a></span>"+
			        			            			"<span class='review'><a href='#'>24 Reviews</a></span></div>"+
			        			            			"</div><!-- /.entry -->"+ 
			        			            			"</div>"+
			        			            			"<div class='col-md-2 col-lg-2 no-margin'>"+
			        			            			"<div class='right-area'><br><br><br><br>"+
			        			            			"<div class='book-holder'>"+
			        			            			"<a href='javascript:doguide(" + val.no + ")'>Guide</a>"+
			        			            			"</div></div></div></div></div></div>"
			        			            	);
			                                });
			                                
			                            });
			                        };
			                    });
			            	};
			            });
			        });
		});
		
		EventUtil.addHandler(document, "DOMContentLoaded", function(event) {
			EventUtil.addHandler(writeBtn, "click", function(event) {
				write();
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
        
        <!-- 선택시 리스트 변화 -->
<script>
//지역 도 옵션값 변화시 호출됨.
function change_regionDOchange(obj)
{   
	  $.ajax({
          type:"GET",
          url: "/main/region/jsonRegionList",
          dataType: "JSON",
          success: function(data){
        	  var str = new Array();
        	  str.push("<select class='form-control' name='regionno'>");
        	  $.each(data, function(idx, item){
            	  if(item.do == obj.value){
                		str.push("<option value='"+item.no+"'>"+ item.sigun +"</option>");
            	 }
              })
              
              str.push("</select>")
              
              $("#regionSIGUN").html(str.join(""));
          }
      });
}

//테마모드 변경시 호출됨.
function change_thememode(obj)
{
	  $.ajax({
          type:"GET",
          url: "/main/region/jsonThemeList",
          dataType: "JSON",
          success: function(data){
        	  var str = new Array();
        	  str.push("<select class='form-control' name='themeno'>");
        	  $.each(data, function(idx, item){
        		  if(item.thememode == obj.value){
                		str.push("<option value='"+item.no+"'>"+ item.name +"</option>");
            	 }
              })
        	  str.push("</select>");
				$("#themename").html(str.join(""));
          }
      });
	

}


function filterSubmit(){
	if(document.regionfilter.regionno.value == "" || document.regionfilter.themeno.value == ""){
		alert("지역, 테마 선택을 완료해주세요");
	}else {
		alert("리스트");
		document.regionfilter.method = "GET";
		document.regionfilter.action = "/bbs/travelbbs/fiterlist";
		document.regionfilter.submit();	
	}
}

</script>
          
    </body>

</html>