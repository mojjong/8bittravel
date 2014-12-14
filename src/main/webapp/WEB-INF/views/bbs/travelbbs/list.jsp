<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../../include/regionheader.jsp"%>

<section class="page-head-holder">
	<div class="container">
		<div class="col-xs-12 col-sm-6">
			<h2>Travel List</h2>
		</div>
		<div class="col-xs-12 col-sm-6">
			<div class="breadcrumb-holder">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active"><a href="#">Travel List</a></li>
				</ol>
			</div>
		</div>
	</div>
</section>


<section id="hotels" class="section wide-fat page" style="padding-top:50px;">
	<div class="container">
		<div class="hotels-filter">
			<div class="container">
				<div class="search-heading col-md-2 col-sm-6">
					<h3>Region & Theme</h3>
				</div>
				<div class="vertical-hotel-filter col-md-10 col-sm-6" style="padding-right:10px">
					<form class="filter-form" name="regionfilter" id="regionfilterID" method="get">
					<input type="hidden" name="no">
					<input type="hidden" name="page">
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
		</div>
		<!-- /.hotels-filter -->
                                <div class="tab-pane" id="availability">

                                 <div class="contents grid-contents available-rooms " id="listContents">

                                 </div>

                                </div>
		<!-- /.contents-wrapper -->
</section>
<!-- /#hotels.section -->

<%@include file="../../include/footer.jsp"%>
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
		var data = $("#regionfilterID").serialize();
		window.location.assign("/bbs/travelbbs/board?"+data);
	}
}


function read(no){
/* 	document.regionfilter.no.value = no;
	document.regionfilter.action = "/bbs/travelbbs/read";
	document.regionfilter.method = "get";
	document.regionfilter.submit(); */
	
	var data = $("#regionfilterID").serialize();
	window.location.assign("/bbs/travelbbs/read?no="+no+"&themeno="+qs["themeno"]+"&regionno="+qs["regionno"]);
}

var qs = (function(a) {
    if (a == "") return {};
    var b = {};
    for (var i = 0; i < a.length; ++i)
    {
        var p=a[i].split('=', 2);
        if (p.length == 1)
            b[p[0]] = "";
        else
            b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
    }
    return b;
})(window.location.search.substr(1).split('&'));


$(document).ready(function(){
	var currentPage = 1;
	var currentLocation = null;
// 	checkForHash();

	
	console.log("set currentPage = " + currentPage);
    var target = $("#listContents");
    
    $.getJSON("/bbs/travelbbs/filterlist?themeno="+qs["themeno"]+"&regionno="+qs["regionno"]+"&page=" + currentPage, function (data) {
        
        $.each(data, function (key, val) {
        	var content = val.content;
        	if((val.content).length > 50){
        		content = content.substring(0,47)+"...";
        	}
        	var str = '<div class="row col-md-6"><div class="content  wide" style="display:block;">'
        		+'<div class="inner"><div class="col-xs-12 col-md-1 no-margin"></div>'
        		+'<div class="col-xs-12 col-md-7 no-margin" style="padding-top:20px">'
        		+'<div class="entry"><article class="entry-content">'
        		+'<h2 class="post-title"><a href="javascript:read('+val.no+')" title="Your Hotel Title Here">'+val.title+'</a></h2>'
        		+'<span class="price"><span class="higlight emphasize value">₩'+val.cost+'</span> / 3Day</span><br />'
        		+'<p><small>'+content+'</small></p></article>'
        		+'</div></div>'
        		+'<div class="col-xs-12 col-md-4 no-margin"><div class="right-area">'
        		+'<div class="book-holder"><div class="field review"><small><strong>'+val.region+', '+val.transport+'</strong></small></div>'
        		+'<div class="field max-holder"><span>';
        		for(var i=0; i < val.teammember; i++){
        		    str += '<i class="fa fa-user"></i>';
        		}
        		str += '</span></div><div class="field"><a href="/bbs/guide/place?travelno='+val.no+'&guideno=1" class="button wide-fat"><small>가이드 신청</small></a>';
        		str += '</div></div></div></div></div></div></div>';


        	target.append(str);
        
        	
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
                        	console.dir(data);
                            $.each(data, function (key, val) {
                            	
                            	
                            	var content = val.content;
                            	if((val.content).length > 50){
                            		content = content.substring(0,47)+"...";
                            	}
                            	var str = '<div class="row col-md-6"><div class="content  wide" style="display:block;">'
                            		+'<div class="inner"><div class="col-xs-12 col-md-1 no-margin"></div>'
                            		+'<div class="col-xs-12 col-md-7 no-margin" style="padding-top:20px">'
                            		+'<div class="entry"><article class="entry-content">'
                            		+'<h2 class="post-title"><a href="javascript:read('+val.no+')" title="Your Hotel Title Here">'+val.title+'</a></h2>'
                            		+'<span class="price"><span class="higlight emphasize value">₩'+val.cost+'</span> / 3Day</span><br />'
                            		+'<p><small>'+content+'</small></p></article>'
                            		+'</div></div>'
                            		+'<div class="col-xs-12 col-md-4 no-margin"><div class="right-area">'
                            		+'<div class="book-holder"><div class="field review"><small><strong>'+val.region+', '+val.transport+'</strong></small></div>'
                            		+'<div class="field max-holder"><span>';
                            		for(var i=0; i < val.teammember; i++){
                            		    str += '<i class="fa fa-user"></i>';
                            		}
                            		str += '</span></div><div class="field"><a href="/bbs/guide/place?travelno='+val.no+'&guideno=1" class="button wide-fat"><small>가이드 신청</small></a>';
                            		str += '</div></div></div></div></div></div></div>';


                            	target.append(str);
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

</body>
</html>