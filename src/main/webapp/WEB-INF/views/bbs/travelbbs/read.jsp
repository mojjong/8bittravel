<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp" %>

            <section class="page-head-holder">

                <div class="container">

                    <div class="col-xs-12 col-sm-6">



                        <h2>Content</h2>

                    </div>

                    <div class="col-xs-12 col-sm-6">

                        <div class="breadcrumb-holder">

                            <ol class="breadcrumb">

                                <li><a href="#">Home</a></li>

                              
                                <li><a href="#">Content</a></li>

                               

                            </ol>

                        </div>

                    </div>

                </div>

            </section>


            <section id="confirm-page" class="section wide-fat reservation-pages">





                <div class="container">   





                    <div class="col-xs-12 col-sm-8">

                        <div class="confirm-page">

                            <h1>${vo.title }</h1>

                            <hr>
                            
         
                            <article>

                            
                                <ul class="tabled-ul">

                                    <li>

                                        <div class="lbl"><strong>userid</strong></div>

                                        <div class="value">${vo.userid }</div>

                                    </li>
                                    <hr style="margin-top:0px;border-color:#BDBDBD;">
                                    <li>

                                        <div class="lbl"><strong>content</strong></div>

                                        <div class="value">${vo.content }</div>

                                    </li>
<hr style="margin-top:0px;border-color:#BDBDBD;">
                                    <li>

                                        <div class="lbl"><strong>Date</strong></div>

                                        <div class="value">${vo.startdate }&nbsp&nbsp&nbsp&nbsp~&nbsp&nbsp&nbsp&nbsp ${vo.enddate }</div>

                                    </li>
<hr style="margin-top:0px;border-color:#BDBDBD;">
                                    <li>

                                        <div class="lbl"><strong>member</strong></div>

                                        <div class="value">${vo.teammember }</div>

                                    </li>
<hr style="margin-top:0px;border-color:#BDBDBD;">
                                    <li>

                                        <div class="lbl"><strong>cost</strong></div>

                                        <div class="value">${vo.cost }원</div>

                                    </li>
<hr style="margin-top:0px;border-color:#BDBDBD;">
                                    <li>

                                        <div class="lbl"><strong>transport</strong></div>

                                        <div class="value">${vo.transport }</div>

                                    </li>
<hr style="margin-top:0px;border-color:#BDBDBD;">
                                  
                                    <li>

                                        <div class="lbl"><strong>bidstate</strong></div>

                                        <div class="value">${vo.bidstate }</div>

                                    </li>
<hr style="margin-top:0px;border-color:#BDBDBD;">
                                    <li>

                                        <div class="lbl"><strong>theme</strong></div>

                                        <div class="value">${vo.themename},${vo.thememode}</div>

                                    </li>

                                </ul>
                      

                            </article>
<hr style="margin-top:0px;border-color:#BDBDBD;">
                     <button class="btn btn-success btn-sm" id="listBtn">목록</button>
                     <button class="btn btn-success btn-sm" id="updateBtn">수정</button>
                     <button class="btn btn-danger btn-sm" id="deleteBtn">삭제</button>
                        </div>

                    </div>
                     
                     
                        <div class="col-xs-12 col-sm-4">
                     <div class="confirm-page">
   
                      
                         <h1>Guide List</h1>

                            <hr>
                     <form name="guideForm" id="guideForm">
                        <input type="hidden" name="travelno" value="${vo.no}">
                        
                     </form>
                     <div id="guideList"></div>
                      </div>
               </div>

                </div>
                <hr>
                <div class="container">   
               
            </div>
            </section>


            <footer id="footer-black" class="widefat ">







                <div class="container">





                    <div class="col-xs-12 col-md-4">

                        <div class="footer-logo">

                            <h1 class="site-title">



                                <a href="#"><img src="images/site-logo.png" alt="Traveline"> <span>Travel<span class="higlight">ine</span></span></a>



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







            </footer>









       <!-- /#site -->




        <!-- Scripts -->



        <!-- jQuery -->



        <script src="/resources/inc/js/jquery-1.10.2.min.js"></script>

        <script src="/resources/inc/js/jquery-migrate-1.2.1.js"></script>
        
        <script type="text/javascript" src="/resources/js/event.js"></script>
        
        <script type="text/javascript" src="/resources/js/travelbbs.js"></script>
        
        <script>
        
        $(document).ready(function(){
           
           
           var formData = $("#guideForm").serialize();
           var target = $("#guideList");
           
           console.log(target);
           console.log(formData);
           
           $.ajax({
            type : "GET",
            url : "/bbs/guide/guidelist",
            data : formData, //변환된 formData를 요청
            success : function(data) {
               $.each(data, function(key, val) {
                  target.append("<h3 class='post-title col-md-10'><a href='/bbs/guide/userGviewlist?guideno="+val.guideno+"&travelno="+val.travelno+"'>"+val.guideid+"님의 Guide</a></h3>");
               });
            }
           });
        });
        
        EventUtil.addHandler(document, "DOMContentLoaded", function(event) {
         EventUtil.addHandler(updateBtn, "click", function(event) {
            update();
         });
      });
        </script>


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
    </body>

</html>