
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@include file="../include/header.jsp"%>
<section class="page-head-holder">
	<div class="container">

		<div class="col-xs-12 col-sm-6">
			<h2>Timecapsule</h2>
		</div>

		<div class="col-xs-12 col-sm-6">
			<div class="breadcrumb-holder">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active"><a href="#">Timecapsule</a></li>
				</ol>
			</div>
		</div>

	</div>
</section>




<section class="section wide-fat holidays-bg">

	<div class="container">
			<div class="search-field">
				<div class="destination-field">
					<h1 class="section-title">여행지에서 당신의 타임캡슐을 공유하세요<small>1,894
				timecapsules in 99 places</small></h1>
				<div class="col-xs-12 col-sm-10">
				<input id="destination" type="text" name="place" placeholder="여행장소 이름으로 검색"/>
				</div>
				<div class="col-xs-12 col-sm-2 search-field">
				<a onclick="javascript:searchTimecapsule()" data-toggle="modal" data-target="#searchResult" href="#" class="button wide-fat">search</a></div>
				</div>
			</div>
<!-- 			<div class="search-field">
				<input type="submit" class="button wide-fat" value="Search">
			</div> -->
		<h1 class="section-title">
			<!-- 타임캡슐을 공유하세요 <a href="/timecapsule/write">Click!!</a>  -->
		</h1>

	</div>
</section>

<section id="more-pages" class="section wide-fat no-padding-top">
	<div class="container">

		<h2 class="section-title">Recent Timecapsule</h2>

		<div class="row">
			<c:forEach var="recent" varStatus="status" items="${recentList }">
				<c:if test="${status.count%3 == 1}">
					<div class="col-lg-3 col-md-6">
						<ul class="list-caret">
				</c:if>
				<li><a
					href="/timecapsule/sub/placesublist?grno=${recent.grno }">${recent.place }
						<small>${recent.capsulecount } timecapsules</small>
				</a></li>
				<c:if test="${status.count%3 == 0}">
					</ul>
		</div>
		</c:if>
		</c:forEach>

	</div>

</section>
<!-- /#more-pages.section -->






























<%@include file="../include/footer.jsp"%>

            <div class="modal fade" id="searchResult" tabindex="-1" role="dialog"  aria-hidden="true">

                <div class="modal-dialog">

                    <div class="modal-content">

                        <div class="modal-body">

                    <h2 class="section-title">타임캡슐 장소 검색 결과</h2>
						<hr>
                    <div class="row" id="searchResultDiv">
                                        <center>검색결과가 없습니다.</center>
                    </div>
                        <hr>

                    </div>

                </div>

            </div>
            </div>







</div>
<!-- /#site -->





<!-- Scripts -->



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

<!-- Custom JS -->

<script type="text/javascript" src="/resources/inc/js/custom.js"></script>

<script>
function searchTimecapsule(){
	var placeValue = document.getElementById("destination").value;
	var innerDiv = document.getElementById("searchResultDiv");
	if(placeValue == "" || placeValue == " " ){
		str.push("<center>검색결과가 없습니다.</center>");
		innerDiv.innerHTML = str.join("");
		return false;
	} else {
	  $.ajax({
          type:"GET",
          url: "/timecapsule/jsonSearchPlaceList",
          data: { place: placeValue },
          dataType: "JSON",
          success: function(data){
        	  var str = new Array();
        	  if(data.length == 0){
        		  str.push("<center>검색결과가 없습니다.</center>");
        	  };
        	  $.each(data, function(idx, item){
            	  str.push("<div class='col-md-4'><ul class='to-go-filters'>");
              if(item.capsulecount == 0){
                  str.push("<li><i class='fa fa-check-circle'></i><a href='/timecapsule/sub/placesublist?grno="+item.grno+"'>"+item.place);
                  str.push("<small>No timecapsules</small></a></li>");
              } else{
                  str.push("<li><i class='fa fa-check-circle'></i><a href='/timecapsule/sub/placesublist?grno="+item.grno+"'>"+item.place);
            	  str.push("<small>"+item.capsulecount +" timecapsules</small></a></li>");
              }
        	  str.push("</ul></div>");
              })
              
        		innerDiv.innerHTML = str.join("");
        	  
          }
      });
	}
	  
}
</script>





</body>

</html>