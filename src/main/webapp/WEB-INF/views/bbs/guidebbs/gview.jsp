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
                              
                              
                             <!--탭 DIv  -->                        
                            <ul  id = "myTab" class="nav nav-tabs" role="tablist">
                                <li id="li1" class="active"><a href="#plandate1" role="tab" data-toggle="tab">plandate 1</a></li>
                                <li id="last"><a href="#addTab"><span class="glyphicon glyphicon-plus"></span> Add Tab</a></li>
                                <!-- <li><a href="#recent" data-toggle="tab" >Day1</a></li> -->
                            </ul>
                            
                            <!--day별 내용  -->
                 			<div id = "content" class="tab-content">           
                   
                   				<div class="tab-pane fade in active" id="plandate1"><p>Region</p></div>
                   				<!--append 되는 곳  -->
                 			</div> 
        
                        </div><!-- /.widget -->
                    </div><!--row  -->
                </div><!--contaier  -->
            </section><!--지도 섹션끝  -->
                
    
<!-- 네이버 지도 api 관련 스크립트 -->
<script type="text/javascript">
   var mapObj= (function (div, plandate){
    var oSeoulCityPoint = new nhn.api.map.LatLng(37.5675451, 126.9773356);
    var defaultLevel = 11;
    var oMap = new nhn.api.map.Map(div, {
        point : oSeoulCityPoint,
        zoom : defaultLevel,
        enableWheelZoom : true,
        enableDragPan : true,
        enableDblClickZoom : false,
        mapMode : 0,
        activateTrafficMap : false,
        activateBicycleMap : false,
        minMaxLevel : [ 1, 14 ],
        size : new nhn.api.map.Size(400, 400)      });
    var oSlider = new nhn.api.map.ZoomControl();
    oMap.addControl(oSlider);
    oSlider.setPosition({
        top : 10,
        left : 10
    });

    var oMapTypeBtn = new nhn.api.map.MapTypeBtn();
    oMap.addControl(oMapTypeBtn);
    oMapTypeBtn.setPosition({
        bottom : 10,
        right : 80
    });

    var oThemeMapBtn = new nhn.api.map.ThemeMapBtn();
    oThemeMapBtn.setPosition({
        bottom : 10,
        right : 10
    });
    oMap.addControl(oThemeMapBtn);

    var oBicycleGuide = new nhn.api.map.BicycleGuide(); // - 자전거 범례 선언
    oBicycleGuide.setPosition({
        top : 10,
        right : 10
    }); // - 자전거 범례 위치 지정
    oMap.addControl(oBicycleGuide);// - 자전거 범례를 지도에 추가.

    var oTrafficGuide = new nhn.api.map.TrafficGuide(); // - 교통 범례 선언
    oTrafficGuide.setPosition({
        bottom : 30,
        left : 10
    });  // - 교통 범례 위치 지정.
    oMap.addControl(oTrafficGuide); // - 교통 범례를 지도에 추가.

    var trafficButton = new nhn.api.map.TrafficMapBtn(); // - 실시간 교통지도 버튼 선언
    trafficButton.setPosition({
        bottom:10,
        right:150
    }); // - 실시간 교통지도 버튼 위치 지정
    oMap.addControl(trafficButton);

    var oSize = new nhn.api.map.Size(28, 37);
    var oOffset = new nhn.api.map.Size(14, 37);
    var oIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);

    var oInfoWnd = new nhn.api.map.InfoWindow();
    oInfoWnd.setVisible(false);
    oMap.addOverlay(oInfoWnd);

    oInfoWnd.setPosition({
        top : 20,
        left :20
    });

    var oLabel = new nhn.api.map.MarkerLabel(); // - 마커 라벨 선언.
    oMap.addOverlay(oLabel); // - 마커 라벨 지도에 추가. 기본은 라벨이 보이지 않는 상태로 추가됨.

    oInfoWnd.attach('changeVisible', function(oCustomEvent) {
        if (oCustomEvent.visible) {
            oLabel.setVisible(false);
        }
    });

    var oPolyline = new nhn.api.map.Polyline([], {
        strokeColor : '#f00', // - 선의 색깔
        strokeWidth : 5, // - 선의 두께
        strokeOpacity : 0.5 // - 선의 투명도
    }); // - polyline 선언, 첫번째 인자는 선이 그려질 점의 위치. 현재는 없음.
    oMap.addOverlay(oPolyline); // - 지도에 선을 추가함.

    oMap.attach('mouseenter', function(oCustomEvent) {

        var oTarget = oCustomEvent.target;
        // 마커위에 마우스 올라간거면
        if (oTarget instanceof nhn.api.map.Marker) {
            var oMarker = oTarget;
            oLabel.setVisible(true, oMarker); // - 특정 마커를 지정하여 해당 마커의 title을 보여준다.
        }
    });

    oMap.attach('mouseleave', function(oCustomEvent) {

        var oTarget = oCustomEvent.target;
        // 마커위에서 마우스 나간거면
        if (oTarget instanceof nhn.api.map.Marker) {
            oLabel.setVisible(false);
        }
    });

    oMap.attach('click', function(oCustomEvent) {
        var oPoint = oCustomEvent.point;
        var oTarget = oCustomEvent.target;
        console.dir(oCustomEvent);
        oInfoWnd.setVisible(false);
        // 마커 클릭하면
        if (oTarget instanceof nhn.api.map.Marker) {
            // 겹침 마커 클릭한거면
            if (oCustomEvent.clickCoveredMarker) {
                return;
            }
            // - InfoWindow 에 들어갈 내용은 setContent 로 자유롭게 넣을 수 있습니다. 외부 css를 이용할 수 있으며,
            // - 외부 css에 선언된 class를 이용하면 해당 class의 스타일을 바로 적용할 수 있습니다.
            // - 단, DIV 의 position style 은 absolute 가 되면 안되며,
            // - absolute 의 경우 autoPosition 이 동작하지 않습니다.
            oInfoWnd.setContent('<DIV style="border-top:1px solid; border-bottom:2px groove black; border-left:1px solid; border-right:2px groove black;margin-bottom:1px;color:black;background-color:white; width:auto; height:auto;">'+
                    '<span style="color: #000000 !important;display: inline-block;font-size: 12px !important;font-weight: bold !important;letter-spacing: -1px !important;white-space: nowrap !important; padding: 2px 5px 2px 2px !important">' +
                    'Hello World <br /> ' + oTarget.getPoint()
                    +'<span></div>');
            oInfoWnd.setPoint(oTarget.getPoint());
            oInfoWnd.setPosition({right : 15, top : 30});
            oInfoWnd.setVisible(true);
            oInfoWnd.autoPosition();
            return;
        }
        var oMarker = new nhn.api.map.Marker(oIcon, { title : '마커 : ' + oPoint.toString() });
        oMarker.setPoint(oPoint);
        oMap.addOverlay(oMarker);

        var aPoints = oPolyline.getPoints(); // - 현재 폴리라인을 이루는 점을 가져와서 배열에 저장.
        aPoints.push(oPoint); // - 추가하고자 하는 점을 추가하여 배열로 저장함.
        oPolyline.setPoints(aPoints); // - 해당 폴리라인에 배열에 저장된 점을 추가함
    });

    oMap.attach("click", function(pos){
       
       
       var form1 = document.getElementById('placeFormId'+plandate);
      
       
       form1.lat.value = pos.point.getX();
       form1.lng.value = pos.point.getY();
       
       alert(form1.lat.value+", "+form1.lng.value);
    }); 
    });
    </script>  		 
                        
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
        $(document).ready(function(){
           $(function () {
        	  
        	   
        	   
               // This line is not required (I just up the system and say there is 1 tab in the <div id="messagesAlert"></div> markup)
               $('#displayElem').html('1');

               // add버튼 누를때 연결되는 이벤트.
               $('#myTab a[href="#addTab"]').on('click', function () { 
                   // li가 얼마나 추가되었는지 (-1하는 것은 AddTab이라는 버튼을 빼기 위해서.)
                   var nbrLiElem = ($('ul#myTab li').length) - 2; 

                   nbrLiElem = nbrLiElem + 1; 
                   
                   
                   // last-child앞에 새로운 tab li가 추가된다.
                   // li ID랑 그 li가 눌렸을때 어떻게 동작하는지 완전한 구조로 append된다.
                   $('ul#myTab li:last-child').before('<li id="li' + (nbrLiElem) + '"><a href="#plandate' + (nbrLiElem) + '" role="tab" data-toggle="tab">plandate ' + (nbrLiElem) + ' <button type="button" class="btn btn-warning btn-xs" onclick="removeTab(' + (nbrLiElem) + ');"><span class="glyphicon glyphicon-remove"></span></button></a>');
                   
                   // <div class="tab-content">의 last-child 뒤에 새로운 div요소가 추가된다.
                   //$('div.tab-content div:last-child').after('<div class="tab-pane fade" id="tab'+(nbrLiElem)+'"></div>');
                   // 탭시스템 안에 하나 이상의 element를 추가한다.
                    $('div.tab-content').append('<div class="tab-pane fade" id="plandate'+(nbrLiElem)+'"></div>');
                   
                  	//get방식으로 컨트롤러에게 안에 내용을 가져와 달라고 요청한다.
                   $.get("/bbs/guide/guidetab?plandate="+nbrLiElem+" &travelno=159", function(data) {
                     
                      var tab = document.getElementById('plandate'+nbrLiElem);
                      var no = document.getElementById('placeListId'+nbrLiElem);
                      alert(no);
                      tab.innerHTML = data;
                      
					  //jquery로 추가한탭의 아이디로 map div를 이용해 지도를 붙여넣는다,
                      var q=$('div#plandate'+nbrLiElem+' div#map');
                      alert("AAAA"+q); 
                      mapObj(q[0], nbrLiElem);
                     });

                   // This line is not required (I just display, inside the <div id="messagesAlert"></div> markup, how many tabs there is)
                   $('#displayElem').html(nbrLiElem); 
               });
           }); 
        });
        </script>
        <!-- <script>
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
        </script> -->
    </body>

</html>
                        
                        
                        