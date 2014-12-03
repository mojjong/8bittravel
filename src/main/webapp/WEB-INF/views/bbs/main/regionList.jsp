<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../../include/regionheader.jsp"%>

<section class="page-head-holder">
	<div class="container">
		<div class="col-xs-12 col-sm-6">
			<h2>SELECT REGION, THEME</h2>
		</div>
		<div class="col-xs-12 col-sm-6">
			<div class="breadcrumb-holder">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active"><a href="#">Region List</a></li>
				</ol>
			</div>
		</div>
	</div>
</section>



















<section id="hotels" class="section wide-fat page">
	<div class="container">
		<div class="hotels-filter">
			<div class="container">
				<div class="search-heading col-md-3 col-sm-6">
					<h3>Select Theme & Region</h3>
				</div>
				<div class="vertical-hotel-filter col-md-9 col-sm-6">
					<form class="filter-form" name="regionfilter" method="get">
						<ul>
        						
       							<div class="col-sm-3 selectContainer" style="width:200px; margin-top:3px; margin-left:20px; padding-left:0px">
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
        						
        						<div id="regionSIGUN" class="col-sm-3 selectContainer" style="width:200px; margin-top:3px; padding-left:0px;">
            						<select class="form-control" name="regionno">
            						</select>
        						</div>
        						
        						<div class="col-sm-3 selectContainer" style="width:200px; margin-top:3px; padding-left:0px;">
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
        						
        						<div id="themename" class="col-sm-3 selectContainer" style="width:200px; margin-top:3px; padding-left:0px;">
            						<select class="form-control" name="themeno">
            						</select>
        						</div>
        						
							<li class="filter-btn form-member"><a href="javascript:filterSubmit();"><img style="border: none; margin-top: 10px;" src="/resources/images/magnify.png" /></a></li>
							
<%-- 							<li class="form-member">
							<select class="chosen-select" onChange="change_regionDOchange(this)" name="regionDO">
									<c:set var="region_temp" />
									<c:forEach var="region" items="${regionList }">
											<c:if test="${region.DO != region_temp }">
											<option value="${region.DO}">${region.DO}</option>
											</c:if>
											<c:set var="region_temp" value="${region.DO }" />
									</c:forEach>
							</select>
							</li> 

							
							<li class="form-member" id="li_regionSIGUN"><select class="chosen-select" name="regionSIGUN">
							</select></li>
							
							<li class="form-member" id="li_thememode"><select class="chosen-select" onChange="change_thememode(this)" name="thememode">

									<c:set var="thememode_temp" />
									<c:forEach var="theme" items="${themeList }">
											<c:if test="${theme.thememode != thememode_temp }">
											<option value="${theme.thememode}">${theme.thememode}</option>
											</c:if>
											<c:set var="thememode_temp" value="${theme.thememode }" />
									</c:forEach>
							</select></li>
					 		<li class="form-member" id="li_themename"><select class="chosen-select" name="themename">
							</select></li>
							<li class="most-popular form-member"><span>Most
									Popular</span></li>
							<li class="filter-btn form-member"><input type="submit"
								value="Search" /></li>--%>
						</ul>
					</form>
				</div>
			</div>
		</div>
		<!-- /.hotels-filter -->
<!-- Include Bootstrap-select CSS, JS -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/js/bootstrap-select.min.js"></script>

<style type="text/css">
#bootstrapSelectForm .selectContainer .form-control-feedback {
    /* Adjust feedback icon position */
    right: -15px;
}
</style>
    






		<div class="contents-wrapper">
			<div class="row">
				<div class="contents grid-contents col-md-12 col-sm-6">
					<div class="row">
					<c:forEach var="r_photo" items="${r_photoList }">
						<div class="content col-md-3 col-sm-12">
							<div class="inner">
								<a class="thumbnailz" href="#"> 
								<img src="/file/download?filename=${r_photo.dir }" alt="Your Hotel Title Here" class="responsive-image" /> 
								<span class="overlay">${r_photo.regionname }</span>
								</a>
								<div class="entry">
									<article class="entry-content">
										<h2 class="post-title">
											<a href="#" title="Your Hotel Title Here">${r_photo.regionname }</a>
										</h2>
<%--  										<span class="price"><span
											class="higlight emphasize value">${r_photo.regionname }</span> 명소</span><br /> --%>
										<c:set var="content" value="${r_photo.content }" />
										<c:if test="${content.length() > 40 }">
										<p>${content.substring(0, 38) }...</p>
										</c:if>
										<c:if test="${content.length() <= 40 }">
										<p>${content }</p>
										</c:if>
									</article>
									<div class="entry-meta">
										<span class="review"><a href="#">24 Reviews</a></span> <span
											class="go-detail"><a href="#">More</a></span>
									</div>
								</div>
								<!--/.entry -->
							</div>
						</div>
						<!-- /.content -->
						</c:forEach>
						
                    </div>

<!-- 						<div class="col-xs-12">

							<div class="pagination-holder center">

								<ul class="pagination">

									<li><a href="#">&laquo;</a></li>

									<li class="active"><a href="#">1</a></li>

									<li><a href="#">2</a></li>

									<li><a href="#">3</a></li>

									<li><a href="#">4</a></li>

									<li><a href="#">5</a></li>

									<li><a href="#">&raquo;</a></li>

								</ul>

							</div>
						</div> -->

					</div>
					<!-- /.row -->







				</div>
				<!-- /.contents.grid-contents -->









			</div>
			<!-- /.row -->



		</div>
		<!-- /.contents-wrapper -->





</section>
<!-- /#hotels.section -->

























<footer id="footer-2" class="widefat ">







	<div class="container">





		<div class="col-xs-12 ">

			<ul class="footer-social-icons">

				<li><a href="#" class="fa fa-facebook"></a></li>

				<li><a href="#" class="fa fa-twitter"></a></li>

				<li><a href="#" class="fa fa-pinterest"></a></li>

				<li><a href="#" class="fa fa-tumblr"></a></li>

				<li><a href="#" class="fa fa-vimeo-square"></a></li>

			</ul>

			<p>

				Traveline - Copyright 2014. Designed by jThemes<br> Email:
				info@example.com<br> Address: Lorem Ipsuum, Manchester M12 345,
				UK<br> +44 123 456 7890

			</p>

		</div>















	</div>







</footer>
<!-- /#footer -->









</div>
<!-- /#site -->





<!-- Scripts -->



<!-- jQuery -->





<script src="../../resources/inc/js/jquery-1.10.2.min.js"></script>

<script src="../../resources/inc/js/jquery-migrate-1.2.1.js"></script>



<!-- modernizer -->





<script src="../../resources/inc/js/modernizr.custom.63321.js"></script>



<!-- FlexSlider -->

<script type="text/javascript"
	src="../../resources/inc/js/jquery.flexslider-min.js"></script>





<!-- CatSlider -->

<script type="text/javascript"
	src="../../resources/inc/js/jquery.catslider.js"></script>





<!-- Datepicker -->

<script type="text/javascript"
	src="../../resources/inc/js/jquery.ui.datepicker.min.js"></script>





<!-- Masonry -->

<script type="text/javascript" src="../../resources/inc/js/masonry.min.js"></script>







<!-- Increase/decrease quantity -->

<script type="text/javascript"
	src="../../resources/inc/js/increase-decrease-qty.js"></script>



<!-- Mixitup (filterable item) -->

<script type="text/javascript"
	src="../../resources/inc/js/jquery.mixitup.min.js"></script>





<!-- Google Map JS -->

<script
	src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>

<script type="text/javascript"
	src="../../resources/inc/js/google-map-infobox.js"></script>





<!-- Responsive Google Map (Fitmaps) JS -->

<script type="text/javascript"
	src="../../resources/inc/js/jquery.fitmaps.js"></script>



<!-- Chozen UI JS -->

<script type="text/javascript"
	src="../../resources/inc/js/chosen.jquery.js"></script>





<!-- Checkbox/Radio UI JS -->

<script type="text/javascript"
	src="../../resources/inc/js/jquery.screwdefaultbuttonsV2.js"></script>





<!-- Range Slider UI JS #2 -->

<script type="text/javascript"
	src="../../resources/inc/js/jquery.mousewheel.min.js"></script>

<script type="text/javascript"
	src="../../resources/inc/js/jQRangeSlider-min.js"></script>

<!-- bootstrap JS -->

<script type="text/javascript"
	src="../../resources/inc/bootstrap/js/bootstrap.min.js"></script>

<!-- raty JS -->

<script type="text/javascript"
	src="../../resources/inc/js/jquery.raty.min.js"></script>

<!-- Custom JS -->

<script type="text/javascript" src="../../resources/inc/js/custom.js"></script>


<!-- 선택시 리스트 변화 -->
<script>
//지역 도 옵션값 변화시 호출됨.
function change_regionDOchange(obj)
{   
	  $.ajax({
          type:"GET",
          url: "jsonRegionList",
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
          url: "jsonThemeList",
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
		document.regionfilter.method = "GET";
		document.regionfilter.action = "/bbs/travelbbs/board";
		document.regionfilter.submit();	
	}
}

</script>





</body>

</html>