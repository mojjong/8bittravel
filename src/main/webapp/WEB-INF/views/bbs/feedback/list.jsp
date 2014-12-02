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


<section class="container" >
	<div class="container">

		<div class="div-table" style="width: 80%;">
			<div class="div-cell">
				<h1 class="section-title">
					Have any great travel experience? <small> 당신의 여행과 가이드에 대한 피드백을
						남겨주세요!</small>
				</h1>
			</div>
		</div>
		
		<div class="panel-group" id="accordion1">
   
       
            <h4 class="panel-title">
   
     <a data-toggle="collapse" data-parent="#accordion1" href="#collapse11" class="button green">
                 PUSH!!    
               
               </a>
            
                
            </h4>
        </div>
        <form name="writeForm">
        <div id="collapse11" class="panel-collapse collapse" style="height: 0px;">
            <div class="panel-body">
                 
                
           
           			<div class="row field-row">
           				<div class="col-xs-12 col-sm-6">
                 			<input type="text" name="title" class="required " placeholder="Title">
           				</div>
           			</div>
           <br>
           			<div class="row field-row">
           				<div class="col-xs-12 col-sm-6">
                 			<textarea class="col-xs-12 col-sm-13" name="content" placeholder="Content" rows="3"></textarea>
           				</div>
           			</div>
           			
           			<div class="row field-row">
           				<div class="col-xs-12 col-sm-6">
                 			<input type="text" name="rating" class="col-xs-12 col-sm-2 " placeholder="Rating">
           				</div>
           			</div>
				
				<br>
				
				<div class="div-cell text-center">
				<button id="wrtiebtn" class="button green" >등록</button>
			</div>
				
            </div>
        </div>
        </form>
    </div>


	
</section>

<hr style="border-color: pink;">



<section id="more-pages" class="section wide-fat">
	
	<div class="container" >
	<form name="viewForm" id="viewID">
		<input type="hidden" name="no" >
		<input type="hidden" name="title">
		<input type="hidden" name="content">
			
		
		 <div class="row">
			<div class="contents col-sm-8 col-md-9">


				<div class="stories" >

					<div class="media story" id="feedbackcon"> </div>
                 </div>
              </div>
         </div>
					
		</form>			
				</div>
		
		

	
	
	<button id="infiBtn" class="button btn-block" OnClick="javascript:infinityScrollFunction()"> 글 더 보기...</button>
	

	

</section>

<!-- /#more-pages.section -->


<footer id="footer-black" class="widefat ">







	<div class="container">





		<div class="col-xs-12 col-md-4">

			<div class="footer-logo">

				<h1 class="site-title">



					<a href="#"><img src="/resources/images/site-logo.png" alt="Traveline" />
						<span>8 bit<span class="higlight">Travel</span></span></a>



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

					8bitTravel - Copyright 2014. Designed by MomZZong<br> Email:
					whdgus0313@naver.com<br> Address: 106-9, Cho-dong, Jung-gu, Seoul, Korea
					<br> +82 010 4935 3595

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
 <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
	/* $(document).ready(function() {
						var currentPage = 1;
						var currentLocation = null;
						//                 checkForHash();
						console.log("set currentPage = " + currentPage);
						

						$.getJSON("/bbs/feedback/list?page="+ currentPage,function(data) {
								$.each(data,function(key, val){
									$("#feedbackcon").append( 
											"<div id='modm_"+val.no+"'class='media story'>"
											+"<a href='#' class='pull-left story-avatar'><img alt='' src='/resources/images/blog/avatar-1.jpg' class='media-object img-circle'></a>"
											+ "<div id='mod_"+val.no+"' class='media-body'>"
											+ "<div id='title_"+val.no+"'><h2 class='media-heading'> "+val.title+"</h2></div><br>"
											+ "<div id='content_"+val.no+"'><p class='story-text'> "+val.content+"</p></div></div>"
											
											+ "<p class='story-meta'>"
											+ "<span class='story-author'>"
											  + "<i class='fa fa-user'></i> "
											  + "<a href='#'>"+val.userId+"</a></span>"
											+"<span class='story-miles'>"
												+ "<img src='/resources/images/star-on.png'>x"+val.rating+""
												+ " </span> "
											+"<span class='story-date'><i class='fa fa-clock-o'></i>"
											+ ""+val.regdate+"</span>"
											+ "<span class='story-category'><i class='fa fa-tag'></i>"
											+"<a id='modifyBtn' href='javascript:modify("+val.no+")' class='button mini'>modify</a></span>"
											+"<button id='deletebtn' onClick='javascript:next("+val.no+")' class='button mini'>delete</button>"
											+ "</p></div>");

								});  $("#feedbackcon").append("<input type='hidden' name='feedbackno'>");

						});
				}); */
				
	var EventUtil = {
			addHandler: function(element, type, handler){
				element.addEventListener(type, handler, false);
			}
	}	

	EventUtil.addHandler(document, "DOMContentLoaded", function(
			event) {
		EventUtil.addHandler(wrtiebtn, "click", function() {
			write();
		});
	});
	
	function write() {
		alert("글작성");
		document.writeForm.method = "post"
		document.writeForm.action = "/bbs/feedback/write"
		document.writeForm.submit();
	}
	
	function next(no){
	 if(confirm("글 삭제 하시겠습니까??") == true)
	 {
	  alert(no);
	  del(no);
	 }
	 
	 else
	 {
	 alert('삭제안함');
	 
	 return "/bbs/feedback/board";
	 }
	}
	
	
	function del(no) {
		
		alert("글삭제");
		document.viewForm.method = "get"
		document.viewForm.action = "/bbs/feedback/delete"
		document.viewForm.no.value = no;
		document.viewForm.submit();
	}
	
	
	function modify(no){
		
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
              
	}
	
	function modiComplete(no){
		   var modiNo = document.getElementById("mod_no").value;
	       var modiTitle = document.getElementById("mod_title").value;
	       var modiContent = document.getElementById("mod_content").value;
	    	alert(modiNo);
	       document.viewForm.no.value = modiNo;
	       document.viewForm.title.value = modiTitle;
	       document.viewForm.content.value = modiContent;
	       
	       alert(document.viewForm.no.value);
	       
	    
	       //form에 대한 값들을 jquery로 한꺼번에 submit 한다
	       $.post( "/bbs/feedback/update", $("#viewID").serialize(), function( data ) {
	      }, "json");
	    
	       location.reload(true);
	}
	
				
</script>

<script>
    $(document).ready(function()
    {
    	var currentPage = 1;
    	/* checkForHash(); */
    	console.log("set currentPage = " + currentPage);
        var target = $("#feedbackcon");
        
        $.getJSON("/bbs/feedback/list?page="+ currentPage,function(data) {
			$.each(data,function(key, val){
				$("#feedbackcon").append( 
						"<div id='modm_"+val.no+"'class='media story'>"
						+"<a href='#' class='pull-left story-avatar'><img alt='' src='/resources/images/blog/avatar-1.jpg' class='media-object img-circle'></a>"
						+ "<div id='mod_"+val.no+"' class='media-body'>"
						+ "<div id='title_"+val.no+"'><h2 class='media-heading'> "+val.title+"</h2></div><br>"
						+ "<div id='content_"+val.no+"'><p class='story-text'> "+val.content+"</p></div></div>"
						
						+ "<p class='story-meta'>"
						+ "<span class='story-author'>"
						  + "<i class='fa fa-user'></i> "
						  + "<a href='#'>"+val.userId+"</a></span>"
						+"<span class='story-miles'>"
							+ "<img src='/resources/images/star-on.png'>x"+val.rating+""
							+ " </span> "
						+"<span class='story-date'><i class='fa fa-clock-o'></i>"
						+ ""+val.regdate+"</span>"
						+ "<span class='story-category'><i class='fa fa-tag'></i>"
						+"<a id='modifyBtn' href='javascript:modify("+val.no+")' class='button mini'>modify</a></span>"
						+"<button id='deletebtn' onClick='javascript:next("+val.no+")' class='button mini'>delete</button>"
						+ "</p></div>");

				if(key == 4) {
                    $("#infiBtn").on("click",function infinityScrollFunction(){
                    	
                    	
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
                        	var target = $("#feedbackcon");
                        	$.getJSON("/bbs/feedback/list?page="+ currentPage,function(data) {
								$.each(data,function(key, val){
									$("#feedbackcon").append( 
											"<div id='modm_"+val.no+"'class='media story'>"
											+"<a href='#' class='pull-left story-avatar'><img alt='' src='/resources/images/blog/avatar-1.jpg' class='media-object img-circle'></a>"
											+ "<div id='mod_"+val.no+"' class='media-body'>"
											+ "<div id='title_"+val.no+"'><h2 class='media-heading'> "+val.title+"</h2></div><br>"
											+ "<div id='content_"+val.no+"'><p class='story-text'> "+val.content+"</p></div></div>"
											
											+ "<p class='story-meta'>"
											+ "<span class='story-author'>"
											  + "<i class='fa fa-user'></i> "
											  + "<a href='#'>"+val.userId+"</a></span>"
											+"<span class='story-miles'>"
												+ "<img src='/resources/images/star-on.png'>x"+val.rating+""
												+ " </span> "
											+"<span class='story-date'><i class='fa fa-clock-o'></i>"
											+ ""+val.regdate+"</span>"
											+ "<span class='story-category'><i class='fa fa-tag'></i>"
											+"<a id='modifyBtn' href='javascript:modify("+val.no+")' class='button mini'>modify</a></span>"
											+"<button id='deletebtn' onClick='javascript:next("+val.no+")' class='button mini'>delete</button>"
											+ "</p></div>");

								});  $("#feedbackcon").append("<input type='hidden' name='feedbackno'>");

						});
                        }
                    });
                }
			});  $("#feedbackcon").append("<input type='hidden' name='feedbackno'>");

	});
            
                
                
            });
          
            
  
</script>






</body>
</html>