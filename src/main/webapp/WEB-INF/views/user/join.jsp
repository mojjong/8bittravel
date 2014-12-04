<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<section class="page-head-holder">
	<div class="container">
		<div class="col-xs-12 col-sm-6">
			<h2>Join Page</h2>
		</div>
		<div class="col-xs-12 col-sm-6">
			<div class="breadcrumb-holder">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">User</a></li>
					<li class="active"><a href="#">Join</a></li>
				</ol>
			</div>
		</div>
	</div>
</section>

<section id="travel-info" class="section wide-fat reservation-pages">
	<div class="container">
		<div class="col-xs-12 col-sm-12">
			<div class="form-holder">
				<form class="info-form" name="infoForm">
					<div class="row field-row">
						<div class="col-xs-12 col-sm-6">
							<label style="padding-top: 8px">아이디</label>
							<input onkeyup="checkID(this)" class="formID" data-check="T" name="id" class="required " placeholder="ID"
								style="display: inline !important; width: 80%; float: right;">
						</div>
						<div class="col-xs-12 col-sm-6">
<!-- 							<div class="more-destinations">
								<a href="#" class="button green">중복체크</a>
							</div> -->
							<div id="idmessage"></div>
						</div>
					</div>

					<div class="row field-row">
						<div class="col-xs-12 col-sm-6">
							<label style="padding-top: 8px">패스워드</label>
							<input name="pw" class="required " type="password"
								placeholder="password"
								style="display: inline !important; width: 80%; float: right;">
						</div>
					</div>

					<div class="row field-row">
						<div class="col-xs-12 col-sm-6">
							<label style="padding-top: 8px">다시입력</label>
							<input onkeyup="checkPW(this)" name="pwcheck" class="required " type="password"
								placeholder="password"
								style="display: inline !important; width: 80%; float: right;">
						</div>
						<div class="col-xs-12 col-sm-6">
							<div id="pwmessage"></div>
						</div>
					</div>

					<div class="row field-row">
						<div class="col-xs-12 col-sm-6">
							<label style="padding-top: 8px">이름</label> <input
								name="name" class="required " placeholder="name"
								style="display: inline !important; width: 80%; float: right;">
						</div>
					</div>

					<div class="row field-row">
						<div class="col-xs-12 col-sm-6">
							<label style="padding-top: 8px">성별</label>
							<div class="btn-group" role="group"
								style="width: 80%; float: right; margin: 0 0 30px 0 !important;"
								aria-label="...">
								<input type="hidden" name="gender">
								<button type="button" onclick="setGender('M')"
									class="btn btn-default">Male</button>
								<button type="button" onclick="setGender('F')"
									class="btn btn-default">Female</button>
								<div id="gendermessage"></div>
							</div>
						</div>
							
					</div>

					<div class="row field-row">
						<div class="col-xs-12 col-sm-6">
							<label for="check-in-date2" style="padding-top: 8px">생년월일</label>
							<input id="check-in-date2" name="birth" class="traveline_date_input" style="display: inline !important; width: 80%; float: right; background: #ffffff url('/resources/images/calendar.png') 94% 50% no-repeat;" type="text" value="d MM yy" />
						</div>
					</div>

					<div class="row field-row">
						<div class="col-sm-6 selectContainer"
							style="margin: 0 0 30px 0 !important;">
							<label style="padding-top: 8px">도 선택</label>
							<select class="form-control"
								onChange="change_regionDOchange(this)"
								style="display: inline !important; width: 80%; float: right;">
								<option value="">도를 선택하세요</option>
								<c:set var="region_temp" />
								<c:forEach var="region" items="${regionList }">
									<c:if test="${region.DO != region_temp }">
										<option value="${region.DO}">${region.DO}</option>
									</c:if>
									<c:set var="region_temp" value="${region.DO }" />
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="row field-row">
						<div id="regionSIGUN" class="col-sm-6 selectContainer"
							style="margin: 0 0 30px 0 !important;">
							<label style="padding-top: 8px">시군
								선택</label> <select class="form-control" name="regionno"
								style="display: inline !important; width: 80%; float: right;">
							</select>
						</div>
					</div>

					<div class="row field-row">
						<div class="col-xs-12 col-sm-6">
							<label style="padding-top: 8px">사용언어</label>
							<div class="btn-group" role="group2"
								style="width: 80%; float: right; margin: 0 0 30px 0 !important;"
								aria-label="...">
								<input type="hidden" name="speak">
								<!--   <button type="button" onclick="setSpeak('한국어')" class="btn btn-default">한국어</button>
  <button type="button" onclick="setSpeak('영어')" class="btn btn-default">영어</button>
  <button type="button" onclick="setSpeak('중국어')" class="btn btn-default">중국어</button>
  <button type="button" onclick="setSpeak('일본어')" class="btn btn-default">일본어</button> -->
								<input type="checkbox" name="lang" value="한국어"
									style="width: 15px; height: 15px;"> <label
									for="check-in-date2"
									style="padding-top: 8px; padding-right: 10px;">한국어</label> <input
									type="checkbox" name="lang" value="영어"
									style="width: 15px; height: 15px;"> <label
									for="check-in-date2"
									style="padding-top: 8px; padding-right: 10px;">영어</label> <input
									type="checkbox" name="lang" value="중국어"
									style="width: 15px; height: 15px;"> <label
									for="check-in-date2"
									style="padding-top: 8px; padding-right: 10px;">중국어</label> <input
									type="checkbox" name="lang" value="일본어"
									style="width: 15px; height: 15px;"> <label
									for="check-in-date2"
									style="padding-top: 8px; padding-right: 10px;">일본어</label>
							</div>
						</div>
					</div>
					
					



					<!-- 					<label for="check-in-date2">하고싶은 말</label>
					<textarea class="col-xs-12" placeholder="Special Requests..."
						rows="7"></textarea> -->
					<div class="col-xs-12 col-sm-6">
						<a href="javascript:submitInfoForm()" style="float: right" class="button green narrow">회원 가입</a>
					</div>

				</form>
			</div>
		</div>
	</div>
</section>


<footer id="footer" class="widefat">
	<div class="container">
		<div class="footer-inner">
			<p class="credit">Traveline - Copyright 2014. Developed by
				jThemes</p>
		</div>
		<!-- /.footer-inner -->
	</div>
</footer>
<!-- /#footer -->
</div>
<!-- /#site -->

<!-- Scripts -->
<!-- jQuery -->
<script src="/resources/inc/js/jquery-1.10.2.min.js"></script>
<script src="/resources/inc/js/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript" src="/resources/js/event.js"></script>

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


<!-- 회원가입 자바스크립트 파일 -->
<script type="text/javascript" src="/resources/js/join.js"></script>

</body>

</html>