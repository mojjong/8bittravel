<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../../include/header.jsp" %>

<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=8dc3f50341e3abc71540971185f76729"></script>

             <section id="contact" class="section wide-fat">
                   
                <div class="container">
                    <div class="row">          
                     <div class="widget widget-tabs">
                           <div id="messagesAlert"></div>
                              <!--  <a href="javascript:;" id="btnAddPage" role="button">Add Page</a> -->
                                                     
                            <ul  id = "myTab" class="nav nav-tabs" role="tablist">
                                <li id="li1" class="active"><a href="#tab1" role="tab" data-toggle="tab">Tab 1</a></li>
                                <li id="last"><a href="#addTab"><span class="glyphicon glyphicon-plus"></span> Add Tab</a></li>
                                <!-- <li><a href="#recent" data-toggle="tab" >Day1</a></li> -->
                            </ul>
                            
                 <div id = "content" class="tab-content">           
                   <!--1DAY DIV  -->
                   <div class="tab-pane fade in active" id="tab1"><p>탭 1</p></div>
                   
                 </div> 
                             <hr></hr>Number of tabs: <span class="badge alert-success" id="displayElem"></span>


                   

        <!-- </div>TAB content DIV 끝  -->
                        </div><!-- /.widget -->
                    </div><!--row  -->
                </div><!--contaier  -->
            </section><!--지도 섹션끝  -->
                
    
<!--       네이버 지도 api 관련 스크립트 -->

                        
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
        
    <!--     <script>
        var scroll = function(){
             /* var formData = $("#guideForm").serialize();
 */        /*    console.info("폼테이터" + formData); */
        $.ajax({
                url:"/bbs/guide/list",
                dataType:'json',
                type:"post",
                success: function (data) {
                   //데이터의 갯수만큼 알아서 반복!(each)
                    $.each(data, function(k,v){
                        $("#guideList").append(
                              "<ul class='target'>"
                                +"<li class='no'>No : "+v.no+"</li>"
                                +"<li class='userid'>Userid : "+v.userid+"</li>"
                                +"<li class='cost'>Cost : "+v.cost+"</li>"
                                +"<li class='pay'>Pay : "+v.pay+"</li>"
                                +"<li class='regdate'>Reagdate : "+v.regdate+"</li>"
                                +"</ul>"
                        )})
                }
              ,error:function(){
                   alert("history load error!");
                }
            });
       }
        scroll();
                   
        </script> -->
        
       <script>
        function placeAdd(){
            
           var a =$('#placeFormId').serialize();
       
             $.post( "/bbs/guide/place",a, function( data ) {
             }, "json");
           //var no = document.formList.no.value;
          
            var place = document.formPlace.place.value;
            var msg = document.formPlace.msg.value;
            var lat = document.formPlace.lat.value;
            var lng = document.formPlace.lng.value;
            
            var html = "<address>"
                      +"<ul class='address-ul fa-ul'>"
                      +"<li>"
                      +"<span>"
                      +"<i class='fa-li fa fa-home'></i>"+place
                      +"</span> "   
                      +"</li>"
                      +"<li>"
                      +"<span >"
                      +"<i class='fa-li fa fa-map-marker'></i>"+msg+','+lat+','+lng
                      +"</span></li>"
                      +"<li><a href='javascript:placeModify(${placevo.getNo()})'>수정</a>&nbsp;&nbsp;</li>"
                      +"<li><a href='/bbs/guide/placeDel?no=${placevo.getNo() }'>삭제</a></li>"
                      +"</ul>"
                      +"</address><hr>";
            $("#placeDiv").append(html);
                        
            document.formPlace.place.value="";
            document.formPlace.msg.value=""; 
            //location.reload();
            //top.document.프레임이름.location.reload();
        }              
        </script>
        
        <script>
        function placeModify(placeNo){
           
           var div = document.getElementById("place_"+placeNo);
           
           var modiPlace=$("#placeId_"+placeNo).text();
           var modiMsg = $("#msgId_"+placeNo).text();
           alert(modiMsg);
           if(modiPlace !==null && modiMsg!== null){
              div.innerHTML =  "<address>"
               +"<ul class='address-ul fa-ul'>"
               +"<input id='modi_placeNo' type='hidden'  value='"+placeNo+"'>" 
               +"<li >"
                  +"<i class='fa-li fa fa-home'></i>"
                  +"<input id='modi_place' type = 'text' value='"+modiPlace+"'/>"
               +"</li>"
               +"<li>"
                  +"<i class='fa-li fa fa-map-marker'></i>"
                  +"<input id='modi_msg' type = 'text' value='"+modiMsg+"'/>"
               +"</li>"
               +"<li><a href='javascript:placeUpdate()'>Complete</a>&nbsp;&nbsp;</li>"
               +"</ul>"
               +"</address>"
               
               
           }
           
        }
        
        </script>
        
        <script>
        function placeUpdate(){
           
           var placeNo = document.getElementById('modi_placeNo').value;
           var place = document.getElementById('modi_place').value;
           var placeMsg = document.getElementById('modi_msg').value;
           
           document.placeList.no.value = placeNo;
           
           document.placeList.place.value = place;
          
           document.placeList.msg.value = placeMsg;
           
           var a= $('#placeListId').serialize();
           alert(a);
           $.post( "/bbs/guide/placeModify", a, function( data ) {
          }, "json");
           
           
           location.reload();
        }
        
        </script>
   
       <!--  <script>
        
        $(function(){ 
            $('.nav-tabs a').on('click', function (e) {
                
                console.log("AAAAAA");
               
                   //alert($('#placeListId').html());
                $('#placeListId').each(function(){
                      
                      //var a =$(this).find('input')[0].value="";
                      alert( $(this).find('input')[0].value="");
                    
                  });
                    $(this).tab('show');
            });  
        });
 
        
        </script> -->
        
        <script>
        $(document).ready(function(){
           $(function () {
               // This line is not required (I just up the system and say there is 1 tab in the <div id="messagesAlert"></div> markup)
               $('#displayElem').html('1');

               // add버튼 누를때 연결되는 이벤트.
               $('#myTab a[href="#addTab"]').on('click', function () { 
                   // li가 얼마나 추가되었는지 (-1하는 것은 AddTab이라는 버튼을 빼기 위해서.)
                   var nbrLiElem = ($('ul#myTab li').length) - 1; 

                   nbrLiElem = nbrLiElem + 1; 
                   
                   // last-child앞에 새로운 tab li가 추가된다.
                   // li ID랑 그 li가 눌렸을때 어떻게 동작하는지 완전한 구조로 append된다.
                   $('ul#myTab li:last-child').before('<li id="li' + (nbrLiElem) + '"><a href="#tab' + (nbrLiElem) + '" role="tab" data-toggle="tab">Tab ' + (nbrLiElem) + ' <button type="button" class="btn btn-warning btn-xs" onclick="removeTab(' + (nbrLiElem) + ');"><span class="glyphicon glyphicon-remove"></span></button></a>');
                   
                   // <div class="tab-content">의 last-child 뒤에 새로운 div요소가 추가된다.
                   //$('div.tab-content div:last-child').after('<div class="tab-pane fade" id="tab'+(nbrLiElem)+'"></div>');
                   // 탭시스템 안에 하나 이상의 element를 추가한다.
                    $('div.tab-content').append('<div class="tab-pane fade" id="tab'+(nbrLiElem)+'"></div>');
                   
                   console.dir($('div.tab-pane fade div:last-child'));
                   
                   //nbrLiElem = nbrLiElem + 1; 
                   
                   $.get("/resources/guidetab.jsp", function(data) {
                      alert(nbrLiElem);
                      var tab = document.getElementById('tab'+nbrLiElem);
                   

                      tab.innerHTML = data;
                      
                      console.dir(tab);
                     
                    /*  document.getElementsByTagName("head")[0].appendChild(script);
                     script.src = "naverapi.js"; */
                     
                      
                     });
                    
            
                 
                   // This line is not required (I just display, inside the <div id="messagesAlert"></div> markup, how many tabs there is)
                   $('#displayElem').html(nbrLiElem); 
               });
           });
            
           
        });
        </script>
        <script>
        // Function 삭제 tab with the <li> number
       function removeTab(liElem) {
            // Display "Are you sure message" and wait for you to press "Ok" 
           if (confirm("Are you sure?")) {
               $('ul#myTab > li#li' + liElem).fadeOut(1000, function () { 
                   // Remove the <li></li> with a fadeout effect
                   $(this).remove(); 
                   // Empty the <div id="messagesAlert"></div>
                   $('#messagesAlert').text(''); 
               });
               // Also remove the correct <div> inside <div class="tab-content">
               $('div.tab-content div#tab' + liElem).remove(); 
               
                // Select all <li> from <ul id="myTab"> except the last (with is the "Add Tab" button) and without the one we deleted
               $('ul#myTab > li').not('#last').not('#li' + liElem).each(function(i){
                    // We get the <li> div attribute
                   var getAttr = $(this).attr('id').split('li');
                    // We change the div attribute of all <li>: the first is 1, then 2, then 3...
                   $('ul#myTab li#li' + getAttr[1]).attr('id', 'li' + (i + 1));
                   
                   var tabContent = 'Tab ' + (i + 1); // 
                   alert(getAttr[1]);
                   if (getAttr[1] != 1) tabContent += ' <button type="button" class="btn btn-warning btn-xs" onclick="removeTab(' + (i + 1) + ');"><span class="glyphicon glyphicon-remove"></span></button>';
                   // tabContent variable, inside the <li>. We change the number also, 1, then 2, then3...
                   $('#myTab a[href="#tab' + getAttr[1] + '"]').html(tabContent) 
                                                               .attr('href', '#tab' + (i + 1)); // Same for the href attribute

                   // We do the same for all <div> from <div class="tab-content">: we change the number: 1, then 2, then 3...
                   $('div.tab-content div#tab' + getAttr[1]).html('<p>Content tab ' + (i + 1) + '</p>') 
                                                           .attr('id', 'tab' + (i + 1)); // Same for the id attribute

                    // This line is not required (I just display, inside the <div id="messagesAlert"></div> markup, how many tabs there is)                                        
                   $('#displayElem').html(i+1);
               });
               
               // Message saying that the tab has been deleted
               $('#messagesAlert').html('<div class="alert alert-danger" id="alertFadeOut">This tab has been deleted!</div>'); 
           }
           return false;
       }
        </script>
    </body>

</html>
                        
                        
                        