<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>

            <section class="page-head-holder">
                <div class="container">

                    <div class="col-xs-12 col-sm-6">
                        <h2>Realtime Chat</h2>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                        <div class="breadcrumb-holder">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Pages</a></li>
                                <li class="active"><a href="#">Realtime Chat</a></li>
                            </ol>
                        </div>
                    </div>

                </div>
            </section>

            <section id="contact" class="section wide-fat">
                <div class="container">
                    <div class="row">
                    <div class="contents col-sm-8 col-md-9">
 
 				<div class="row field-row">
                <div class="col-sm-11">
                <sec:authentication var="user" property="principal" />
                <sec:authorize access="hasRole('ROLE_USER') and isAuthenticated()">
					<input type="hidden" id="userid" value="${user }" />
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_ANONYMOUS')">
					<input type="hidden" id="userid" value="user00" />
				</sec:authorize>
				<input id="msg" type="text" placeholder="여행자에게 보낼 메시지를 쓰고 G 버튼을 눌러주세요."/>
				</div>
				<div class="col-sm-1" style="padding-bottom:12px">
				<a onclick="javascript:sendGuideMsg()" data-toggle="modal" data-target="#searchResult" href="#" class="button navy wide-fat">G</a>
				</div>
				</div>

                        <div id="chatZone" style="margin-bottom:10px; overflow-y:scroll; height:400px; background-color: #dbe1ed; border:1px #b3c1c9 solid;">
                        			<c:forEach var="chat" items="${chatlist }">
											<c:if test="${chat.sender == 'T' }">
												<div class="col-xs-12 infoBoxGuide" style="padding-left:12%; padding-bottom:10px; opacity: 1; visibility: visible;">
												<div style="margin-top: 8px; color: rgb(149, 168, 180); padding: 20px; background-color: #eff2f3">
												<h3>Traveler</h3>${chat.content}
												<br /><small>&nbsp;${chat.regdate}
												</small></div></div>											
											</c:if>
											<c:if test="${chat.sender == 'G' }">
												<div class="col-xs-12 infoBox" style="padding-right:12%; opacity: 1; visibility: visible;">
												<div style="margin-top: 8px; color: rgb(255, 255, 255); padding: 20px; background-color: rgb(133, 198, 22);">
												<h3>Guide</h3>${chat.content}
												<br /><small>&nbsp;${chat.regdate}
												</small></div></div>
											</c:if>
									</c:forEach>
                        </div>
                   </div>
                        
                        
                                            <div class="sidebar col-sm-4 col-md-3">
                                <div class="widget">
                                <h3 class="widget-title" onclick="getLocation()">Recent Traveler's Location</h3>
                                <div class="recent-tweets" id="geolocation" style="overflow-y:hidden;overflow-x:hidden;height:300px;">
                                
                                <c:forEach var="history" items="${historylist }">
                                <div class="media"><span class="media-object pull-left"><i class="fa fa-dribbble"></i></span>
								<div class="media-body">
								<p>Latitude: ${history.lat} 
								<br />Longitude: ${history.lng}
								</p><small>at ${history.time}</small></div></div>    
                                </c:forEach>    
                                
                                </div>
                            </div><!-- /.widget -->
                        </div>
                        
                    
                    </div>





                </div>
            </section><!-- /#more-pages.section -->

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
	
	
	<script src="http://192.168.0.79:5555/socket.io/socket.io.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>

    var socket = io.connect("http://192.168.0.79:5555");
    var chatList = new Array();

    //로그인버튼
    socket.emit("login", "GUIDE");
    
    socket.emit("joinRoom", document.getElementById("userid").value);
    
    var chatList = new Array();
    chatList.push(document.getElementById("chatZone").innerHTML);

    var sendUserMsg = function(){
    	socket.emit("userChatMsg", document.getElementById("msg").value);
    }
    
    var sendGuideMsg = function(){
    	var userData = {
        		userid: document.getElementById("userid").value,
        		guideid: 'user02',
        		content: document.getElementById("msg").value,
        		sender: 'G'
        	}
        	
      	  $.ajax({
              type:"POST",
              url: "/chat/sendmsg",
              data: userData,
              dataType: "JSON",
              success: function(data){
            	  socket.emit("guideChatMsg", document.getElementById("msg").value);
              }
          });
    	
    	
    }

    //★ 로그인 환영인사
    socket.on("welcome", function (loginname) {
        alert(loginname + "님 반가워요!");
    });

    //★방에 입장한 사람들 확인 메시지
    socket.on("joinMember", function(nickname){
        alert(nickname + "님이 입장하셨습니다");
    });

    
    //★채팅메시지
    socket.on("guideChatMsg", function(chatMsg){
    	var d = new Date();
    	chatList.unshift('<div class="col-xs-12 infoBox" style="padding-right:12%; opacity: 1; visibility: visible;">'
        		+'<div style="margin-top: 8px; color: rgb(255, 255, 255); padding: 20px; background-color: rgb(133, 198, 22);">'
        		+'<h3>Guide</h3>' + chatMsg
        		+'<br /><small>&nbsp;'+ d.getHours() +":"+ d.getMinutes() +":"+ d.getSeconds()
        		+'</small></div></div>');
        $("#chatZone").html(chatList.join(""));
    });
    
    socket.on("userChatMsg", function(chatMsg){
    	var d = new Date();
        chatList.unshift('<div class="col-xs-12 infoBoxGuide" style="padding-left:12%; padding-bottom:10px; opacity: 1; visibility: visible;">'
        		+'<div style="margin-top: 8px; color: rgb(149, 168, 180); padding: 20px; background-color: #eff2f3">'
        		+'<h3>Traveler</h3>' + chatMsg
        		+'<br /><small>&nbsp;'+ d.getHours() +":"+ d.getMinutes() +":"+ d.getSeconds()
        		+'</small></div></div>');
        $("#chatZone").html(chatList.join(""));
    });

    
    
    socket.on("userLocation", function(data){
    	var d = new Date();
    	$("#geolocation").prepend('<div class="media"><span class="media-object pull-left"><i class="fa fa-dribbble"></i></span>'
    			+'<div class="media-body">'
    			+'<p>'
    			+"Latitude: " + data.lat 
    			+"<br />Longitude: " + data.lng
    			+'</p><small>at '+ d.getHours() +":"+ d.getMinutes() +":"+ d.getSeconds() +'</small></div></div>');
    });


</script>

	



    </body>

</html>