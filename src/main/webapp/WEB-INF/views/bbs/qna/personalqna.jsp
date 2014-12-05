<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../../include/header.jsp"%>

<section class="page-head-holder">
	<div class="container">

		<div class="col-xs-12 col-sm-6">
			<h2>Pages</h2>
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

<section id="more-pages" class="section wide-fat">
	<div class="container">

		<div class="contents-wrapper"></div>
		<div class="contents col-md-9 col-sm-6">

			<h2 class="block-title text-center">운영자에게 질문한 리스트 보는 곳</h2>




			<hr class="transparent" />
			<div class="panel-group" id="accordion">
				<!-- <div class="panel panel-default">  -->
				<!-- <div class="panel-heading"> -->
				<h4 class="panel-title">
					<a class="button green narrow collapsed" data-toggle="collapse"
						data-parent="#accordion" href="#collapse1"> 글쓰기 </a>
				</h4>
			</div>
			<br> <br>
				
			<form class="info-forn" name="writeForm" action="write" method="post">
				
				<div id="collapse1" class="panel-collapse collapse">
					<div class="row field-row" >
						<div class="col-xs-12 col-sm-6">
							<input class="required" placeholder="title" name="title"> <br> <br>

							<input type="text" class="required " name="userid"
								placeholder="userid"> <br> <br>

							<textarea class="col-xs-12" placeholder="content" name="content" rows="7"></textarea>


					
							<button type="submit" class="button green narrow">확인</button>
						</div>
					</div>
				</div>
			</form>

		</div>

	</div>

	<br> <br>
		<div class="panel-group" id="accordion" >
			<div class="panel panel-default">
		<c:forEach var="qna" items="${qnaList }">
				<div class="panel-heading" id="mod_${ qna.no}">
	
					<h4 class="panel-title">
					<div id="title_${qna.no }">
						제목 : <a data-toggle="collapse" data-parent="#accordion"
							href="#${qna.no }"   > ${qna.title} </a>

						</div>
					</h4>
					<div class="media story">
						<a href="#" class="pull-left story-avatar"> <img alt=""
							src="images/blog/avatar-1.jpg" class="media-object img-circle">
						</a>
						<div class="media-body">

							<p class="story-meta">
								<span class="story-author"><i class="fa fa-user"></i> <a
									href="#">${qna.userid}</a></span> <span class="story-miles"><i
									class="fa fa-location-arrow"></i> 1,555 Miles traveled</span> <span
									class="story-date"><i class="fa fa-clock-o"></i>
									${qna.regdate}</span>
							</p>

						</div>
					</div>



				</div>
				<div id="${qna.no}" class='panel-collapse collapse'
					style='height: 0px;'>
					<div class="panel-body" id="content_${qna.no }">${qna.content }</div>
					
					<span class="story-category"><i class="fa fa-tag"></i>
						<a class='button mini' href="/bbs/qna/delete?no=${qna.getNo() }" >삭제</a> 
						<a class='button mini' onclick="javascript:modify(${ qna.no});">수정</a></span>
				
				<!-- <button type="button" class="btn btn-default btn-flat"
					OnClick='window.location="/bbs/write"'>WRITE</button>  -->
				
 			</div>
		 </c:forEach>
			</div>
			</div>
	</form>
	<div class="pagination-holder left">
		<%@ include file="include_qnaPageAction.jsp"%>
	</div>
	</div>
	</div>

</section>
<!-- /#more-pages.section -->

<footer id="footer-black" class="widefat ">


	<div class="container">

		<div class="col-xs-12 col-md-4">

			<div class="footer-logo">

				<h1 class="site-title">

					<a href="#"><img src="images/site-logo.png" alt="Traveline" />
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

<script type="text/javascript" src="/resources/js/event.js"></script>

<script type="text/javascript" src="/resources/js/qna.js"></script>

<script>



/* function modify(no){
	   
	   var div = document.getElementById("mod_"+no);
	   
	   var title =  document.getElementById("title_"+no);
	   var content = document.getElementById("content_"+no);
	   
	   console.dir(content);
	   
	   var modTitle = title.firstElementChild.innerText;
	   var modContent = content.firstElementChild.innerText;
	   
	   div.innerHTML =  "<input id='mod_no' type='hidden'  value='"+no+"'>" +
	                      "<input id='mod_title' type='text' class='media-heading' value='"+modTitle+"' />"+  
	                      "<br>" +
	                      "<textarea id='mod_content' class='story-text col-sm-12 col-md-14' rows='5'>"+modContent+"</textarea>" +
	                      "<a  class='button mini' href='javascript:modiComplete("+no+")'>Complete</a>";
	                    /*  var head = document.getElementsByTagName('head')[0];
	                    var script = document.createElement('script');
	                    script.type = 'text/javascript';

	                    script.innerHTML = "EventUtil.addHandler(modiCompleteBtn,'click',function(event){ "
	                          + "modiComplete();" + "});";

	                    head.appendChild(script);
	           */
	           

	
</script>

<!-- <script>
   		$(document).ready(function() {
                  var currentPage = 1;
                  var currentLocation = null;
                  //                 checkForHash();
                  console.log("set currentPage = " + currentPage);
                
                  

                  $.getJSON("/bbs/qna/persqna?page="+ currentPage,function(data) {
                        $.each(data,function(key, val){
                           $("#accordion").append( 
                                 
                                   "<div class='panel panel-default'>"
                                   +"<div class='panel-heading'>"
                                   +"<h4 class='panel-title'>"
                                   +"<a data-toggle='collapse' data-parent='#accordion' href='#collapse_"+val.no+"'>"+val.title+"</a></h4></div>"
                                   +"<div id='collapse_"+val.no+"' class='panel-collapse collapse' style='height: 0px;'>"
                                   +"<div class='panel-body'>"+val.content+"</div></div></div></div>");
                                 
                        });  $("#qnaDiv").append("<input type='hidden' name='no'>");

                  });
            }); 
	</script>
 -->

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
</body>

</html>