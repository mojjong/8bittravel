<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../../include/header.jsp"%>



            <section class="page-head-holder">
             <h1 class="block-title text-center"> ※ N O T I C E ※ </h1>

                    <hr class="transparent">
                    

                    <h2 class="block-title text-center">Welcome to the HELL!!!</h2>
             
            </section>


            <section id="more-pages" class="section wide-fat">
                
                
                <div class="container">
                 <form name="form2">      
             <input type="hidden" name="page"/>
             <input type="hidden" name="no"/>
             
			
				<div class='panel-group' id='accordion'>
                   
             
             <c:forEach var="listBoard" items="${boardList}">
				
               <div class='panel panel-default'>
           <div class='panel-heading'>
           <h4 class='panel-title'>
           <a data-toggle='collapse' data-parent='#accordion' href='#collapse_${listBoard.no }'>${listBoard.title}</a></h4></div>
           <div id='collapse_${listBoard.no }' class='panel-collapse collapse' style='height: 0px;'>
           <div class='panel-body'>${listBoard.content}</div>
           <div class='panel-body'><a class="button mini" href="javascript:modify(${listBoard.no})">Modify</a>
                                   <a class="button mini" href="javascript:next(${listBoard.no })">delete</a>
           </div>
           
           </div></div>
       
          </c:forEach>
           </div>
                    </form>

				</div>
               <form name="form3">
                <br>
                </form>
                <div class="div-cell text-center" ><button class="button green" OnClick="window.location='/bbs/notice/write'">Write</button></div>
                <br> 
                  <div class="dataTables_paginate">
						<%@ include file="include_pageAction.jsp"%>
					</div>
					
                
 
 
 <script>
  function next(no){
    if(confirm("글 삭제 하시겠습니까??") == true)
    {
     
    del(no);
    }
    
    else
    {
    
    	alert('삭제안함');
    	
    	
    	location.reload();
    
    }
   }
   
   
   function del(no) {
      
	  
      document.form2.method = "get"
      document.form2.action = "/bbs/notice/delete"
      document.form2.no.value = no;
      document.form2.submit();
   }
   function modify(no) {
	      
		 
	      document.form2.method = "get"
	      document.form2.action = "/bbs/notice/update"
	      document.form2.no.value = no;
	      document.form2.submit();
	   }
   
   </script>
 
 
 
 
                
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
<script type="text/javascript" src="/WEB-INF/spring/views/bbs/notice/write.jsp"></script>
	

<!-- <script>
   $(document).ready(function() {
                  var currentPage = 1;
                  var currentLocation = null;
                  //                 checkForHash();
                  console.log("set currentPage = " + currentPage);
                
                  

                  $.getJSON("/bbs/notice/list?page="+ currentPage,function(data) {
                        $.each(data,function(key, val){
                           $("#accordion").append( 
                        		   
                                   "<div class='panel panel-default'>"
                                   +"<div class='panel-heading'>"
                                   +"<h4 class='panel-title'>"
                                   +"<a data-toggle='collapse' data-parent='#accordion' href='#collapse_"+val.no+"'>"+val.title+"</a></h4></div>"
                                   +"<div id='collapse_"+val.no+"' class='panel-collapse collapse' style='height: 0px;'>"
                                   +"<div class='panel-body'>"+val.content+"</div></div></div></div>");
                        		   
                        });  $("#noticebbs").append("<input type='hidden' name='noticebbsno'>");

                  });
            }); 
</script> -->

<script>
/* 
EventUtil.addHandler(document, "DOMContentLoaded", function(
        event) {
     EventUtil.addHandler(wrtiebtn, "click", function() {
        writepage();
     });
  });
  
   function writepage() {
     alert("글작성");
     document.form3.method = "get"
     document.form3.action = "/bbs/notice/write"
     document.form3.submit(); 
  } */

</script>



<script>
				function goPage(pageNo) {
					document.form2.page.value = pageNo;
					document.form2.submit();
				}
</script>
    
    
    </body>

</html>