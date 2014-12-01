<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<section class="page-head-holder">
	<div class="container">

		<div class="col-xs-12 col-sm-6">
			<h2>FeedBack Page</h2>
		</div>

		<div class="col-xs-12 col-sm-6">
			<div class="breadcrumb-holder">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Pages</a></li>
					<li class="active"><a href="#">page</a></li>
				</ol>
			</div>
		</div>

	</div>
</section>


<section class="section wide-fat image-bg" >
	<div class="container">

		<div class="div-table" style="width: 80%;">
			<div class="div-cell">
				<h1 class="section-title">
					Have any great travel experience? <small> 당신의 여행과 가이드에 대한 피드백을
						남겨주세요!</small>
				</h1>
			</div>
			<div class="div-cell text-center">
				<a class="button green" href="#">Write your story</a>
			</div>
		</div>

				<form name="writeForm">
				
				<input type="text" name="userId" size="20" placeholder="userId"> 
				<input type="text" name="title" size="100" placeholder="title">
			   <input type="text" name="content" size="20" placeholder="content">
			   <input type="text" name="guideId" size="20" placeholder="guideId">
			   <input type="text" name="rating" size="20" placeholder="rating">
				
				<button id="writebtn">확인</button>
				</form>


	</div>
</section>

<hr style="border-color: pink;">



<section id="more-pages" class="section wide-fat">
	<div class="container" >

		 <div class="row">
			<div class="contents col-sm-8 col-md-9">


				<div class="stories" >

					<div class="media story" id="feedbackcon">
					
					
					

                                                        

                                                    </div>
                                                    </div>
                                                    </div>
                                                    
						
					</div>
				</div>
		
		

	
	
	<a class="button btn-block" href="#"> 글 더 보기...</a>
	

	


</section>

<!-- /#more-pages.section -->


<footer id="footer-black" class="widefat ">







	<div class="container">





		<div class="col-xs-12 col-md-4">

			<div class="footer-logo">

				<h1 class="site-title">



					<a href="#"><img src="/resources/images/site-logo.png" alt="Traveline" />
						<span>Travel<span class="higlight">ine</span></span></a>



				</h1>

				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

				<p>Sed sed malesuada orci, eu ornare sem. Pellentesque quis
					metus porta, varius nunc vitae, laoreet nisi. Aenean vitae est dui.

				</p>

			</div>

		</div>





		<div class="col-xs-12 col-md-4">

			<div class="newsletter-holder">

				<h3>news letter</h3>

				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

				<input type="text" placeholder="Your Name"> <input
					type="text" placeholder="Your Email Address"> <input
					type="submit" class="button green" value="Subscribe Now">

			</div>

		</div>



		<div class="col-xs-12 col-md-4">

			<div class="newsletter-holder">

				<h3>contact info</h3>

				<p>

					Traveline - Copyright 2014. Designed by jThemes<br> Email:
					info@example.com<br> Address: Lorem Ipsuum, Manchester M12
					345, UK<br> +44 123 456 7890

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







</footer>
<!-- /#footer -->









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
	$(document).ready(function() {
						var currentPage = 1;
						var currentLocation = null;
						//                 checkForHash();
						console.log("set currentPage = " + currentPage);
						

						$.getJSON("/bbs/feedback/list?page="+ currentPage,function(data) {
								$.each(data,function(key, val){
									$("#feedbackcon").append( 
											"<a href='#' class='pull-left story-avatar'><img alt='' src='/resources/images/blog/avatar-1.jpg' class='media-object img-circle'></a>"
											+ "<div class='media-body'>"
											+ "<h2 class='media-heading'> "+val.title+"</h2><br>"
											+ "<p class='story-text'> "+val.content+"</p></div>"
											
											+ "<p class='story-meta'>"
											+ "<span class='story-author'>"
											  + "<i class='fa fa-user'></i> "
											  + "<a href='#'>"+val.userId+"</a></span>"
											+"<span class='story-miles'>"
												+ "<img src='/resources/images/star-on.png'>x"+val.rating+""
												+ " </span> "
											+"<span class='story-date'><i class='fa fa-clock-o'></i>"
											+ ""+val.regdate+"</span>"
											+ "<span class='story-category'><i class='fa fa-tag'></i><a href='#'>Single Travel</a></span>"
											+ "</p>");

								});

						});
				});
				
	var EventUtil = {
			addHandler: function(element, type, handler){
				element.addEventListener(type, handler, false);
			}
	}	
	
	
	EventUtil.addHandler(document, "DOMContentLoaded", function(
			event) {
		EventUtil.addHandler(writebtn, "click", function() {
			write();
		});
	});
	
	function write() {
		alert("글작성");
		document.writeForm.method = "post"
		document.writeForm.action = "/bbs/feedback/write"
		document.writeForm.submit();
	}
	
				
</script>

</body>
</html>