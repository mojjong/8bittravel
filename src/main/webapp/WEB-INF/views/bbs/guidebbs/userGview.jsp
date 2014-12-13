<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../../include/photoheader.jsp"%>

	<section class="page-head-holder">
                <div class="container">

                    <div class="col-xs-12 col-sm-6">
                        <h2>TourList</h2>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                        <div class="breadcrumb-holder">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>                              
                                <li><a href="#">List</a></li>         
                                <li><a href="#">Content</a></li> 
                                <li><a href="#">TourList</a></li>   
                            </ol>
                        </div>
                    </div>
                </div>
            </section>


    <section id="contact" class="section wide-fat">        
                <div class="container">
                    <div class="row">  
                    
                    
			<div class="row thumbnails">
			
                   <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="thumbnail no-border no-padding">
                                <div class="media">
	                                	
	                                    <img name="carouselitem0" class="img-responsive" src="/file/view/${gpphoto.filename }/${gpphoto.suffix}" alt=""/>
                                    <div class="caption hovered">
                                        <div class="caption-wrapper div-table">
                                            <div class="caption-inner div-cell">
                                                <p class="caption-buttons">
                                                     <a href="/file/download?filename=${gpphoto.filename}.${gpphoto.suffix}"  class="btn caption-zoom" data-gal="prettyPhoto" ><i class="fa fa-search"></i></a> 
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--media div 끝  -->
                                
                                <div class="caption after-media">
	                                 <p  style="color:#51575b" name="content"><span>${gpphoto.content }</span></p>
	                                  
                                   <%--  <span>${gpphoto.content }</span> --%>
                                </div><!--caption after-media  -->
                            </div>
                        </div> 
                  
          
                     <!--가이드 Plan 시작  -->
                     <div class="col-sm-7 sidebar">
					<div class="widget no-margin-bottom">
							 <h1 class="widget-title no-margin-top no-margin-bottom">당신의 여행 장소는 <span class="higlight">"전주"</span> 입니다.</h1>
                                <p>&nbsp;</p> 
                               
                         <div class="main-contact-form">
                           <!--ì¥ì ì¶ê° DIV  -->
            
                        <hr>
		               <form name = "placeList" id = "placeListId"  >    
			                        <input type="hidden" name="travelno" value="159">  
			                        <input type = "hidden" name="guideid" value="user02">
			                        <input type="hidden" name = "guideno" > 
			                        <input type="hidden" name="gpno"> 
			                       
			                        <input type="hidden" name="lat">
			                        <input type="hidden" name="lng">
			                        
			              
			               	<c:forEach var="i" begin="1" end="3" step="1"  >
			               	<blockquote>
			                 <h2 class="post-title"><span class="higlight">${i}</span> DAY 일정입니다</h2>
			                 
			                 <small style="float:left;">※일정은 순서대로 진행됩니다.</small>
			                 <h2>&nbsp;</h2>
			                 <hr>
			                   <div id="userGviewlist" class="widget no-margin-bottom">
			                       <c:forEach var="guvo" items="${guList}" > 
			                       <c:if test="${guvo.getPlandate()==i }">
			                      		<div id= "place_${guvo.getGrno() }">  
			                            <address>
				       					<ul class='address-ul fa-ul'>
				       						<li><input id="lat_${guvo.getGrno() }" type="hidden"  value="${guvo.getLat() }" ></li>
			           						<li><input id="lng_${guvo.getGrno() }" type="hidden" value="${guvo.getLng() }" ></li>
						       				<li id="placeId_${guvo.getGrno() }"><span><i class='fa-li fa fa-home'></i>${guvo.getPlace()}+ ${guvo.getGrno()} + ${guvo.getPlandate()}</span></li>
				       						<li id="msgId_${guvo.getGrno() }"><span><i class='fa-li fa fa-map-marker'></i>${guvo.getMsg()}</span></li>
				       					</ul>
				       					</address>
				       				 	</div> 
				       				 	<hr>
				       					</c:if>     
			                      	 </c:forEach>
			                      	 		     
	                                       <label for="check-in-date2">총 예상비용 : ${guvo.getCost() } </label>
	                                       
	                                       
	                                       <label for="check-in-date2">가이드 비용 : ${guvo.getPay() }</label>
	                                       
			                      	 </div> 
			                      	 
			                      	</blockquote>
			                      	</c:forEach>  
			                            </form>         	

		                          <!--*********placeList í¼ ë  --> 
                             
                             <!--GuideBbs div  -->   
                            <div class="main-contact-form">
	                               <%-- <form  name = "guideBbsForm" >
	                               	
	                               	<input type = "hidden" name="guideid" value="user03">
	                               	<input type = "hidden" name="travelno" value = "152"> 
	                               	
	                                   <div class="row">
	                                    <c:forEach var="guvo" items="${guList}">
	                                       <div class="col-sm-4">         
	                                       <label for="check-in-date2">총 예상비용</label>
	                                       <input class="form-control" type="text" name="cost" value="${guvo.getCost() }"  /></div>
	                                       <div class="col-sm-8">
	                                       <label for="check-in-date2">가이드 비용</label>
	                                       <input class="form-control" type="text" name="pay" value="${guvo.getPay() }" /></div>  
									</c:forEach>
									</div>
	                                       <button class="button"  type ="submit" >글쓰기&nbsp;&nbsp;</button>  
	                               </form><!-- guideBbsForm ë --> --%>
                               <hr>
                           </div>
                           <!--******GuideBbs div 끝  -->         
                                                       
                   		 </div><!--main-contact-form 끝  -->                                                                
                	</div><!-- ì¥ìì ííë ê¸ì¨ë¥¼ ê°ì¸ë divë -->  
           		</div><!--ì ì²´ì¬ì´ëë°  --> 
           		  </div><!--row thumnail 끝  -->
                    </div><!--row  -->
                </div><!--contaier  -->
            </section><!--지도 섹션끝  -->
   <!-- Scripts -->
   
   
   <script>
   var updateCounter = function() {
	   	  var privateCounter = 0;
	   	  function changeBy(val) {
	   	    privateCounter += val;
	   	  }
	   	  return { 
	   		  increment: function(data) {
	   			//var obj =$("#carouselitem"+(privateCounter%3));
	     	    	var obj = document.getElementsByName("carouselitem"+(privateCounter%3));
	   			
	   			for (i = 0; i < obj.length; i++) { 
	   				obj[i].src = "/file/view/"+data.foldername+"/"+data.fileName+"/"+data.suffix;
	   				$(obj[i]).attr("data-src", data.foldername+"\\"+data.fileName+"."+data.suffix);
	   			}

	   			changeBy(1);
	   	 	 }
	   	  }  
	  };
	  
	  var updateResult = updateCounter();
   
   
   </script>
        <!-- jQuery -->

    
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

<!-- prettyphoto -->

<script type="text/javascript"
	src="/resources/inc/prettyphoto/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript">
	var contentMaker = function (){
		var msg = "";
		return {
			setting: function (obj) {
				msg = obj.dataset.msg;
				setTimeout(function(){document.getElementById("ppContent").innerHTML = msg}, 800);
			}
		}
	}
	
	var fillcontent = contentMaker();
	
	$("a[data-gal^='prettyPhoto']").prettyPhoto({
		theme : 'dark_square',
		social_tools : '<div id="ppContent" class="twitter"></div>'
	});
	
	
</script>

<!-- Custom JS -->

<script type="text/javascript" src="/resources/inc/js/custom.js"></script>

         
  
            
           
</body>
</html>