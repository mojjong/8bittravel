<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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


            <section id="contact" class="section wide-fat reservation-pages">





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
                     <button onclick="applyGuide(${vo.no})" class="btn btn-success btn-sm" style="float:right;">가이드신청</button>
                        </div>

                    </div>
                     
                     
                        <div class="col-xs-12 col-sm-4">
                     <div class="confirm-page">
   
                      
                         <h1>Guide List</h1>

                            <hr>
                     <form name="guideForm" id="guideForm">
                        <input type="hidden" name="travelno" value="${vo.no}">
                                <sec:authentication var="user" property="principal" />
        <sec:authorize access="hasRole('ROLE_USER') and isAuthenticated()">
          <input type="hidden" id="userid" value="${user }" />
        </sec:authorize>
        <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
          <input type="hidden" id="userid" value="user00" />
        </sec:authorize>
                     </form>
                     <div id="guideList"></div>
                      </div>
               </div>

                </div>
                <hr>
                <div class="container">   
               
            </div>
            </section>

<%@include file="../../include/footer.jsp"%>
</div>
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
               var str = "<article><ul>";
               $.each(data, function(key, val) {
                    str += "<li>"+
                    "<h3 class='post-title col-md-12'>"+
                    "<a href='/bbs/guide/userGviewlist?guideno="+val.guideno+"&travelno="+val.travelno+"'>"+
                    val.guideid+"`s&nbsp;&nbsp;&nbsp;&nbsp;Guide</a></h3></li>"+
                    "<hr style='margin-top:-2px;border-color:#BDBDBD;'>";
               });
               str += "<ul></article>";
                 target.html(str);
            }
           });
        });
        
        
        function applyGuide(no){
           window.location.assign("/bbs/guide/place?travelno="+no+"&guideid="+document.guideForm.userid.value);
        }
        

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