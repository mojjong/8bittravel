<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=e0e69ff3e4c9fb550cdd83e5db85f04c"></script>

                  <section id="contact" class="section wide-fat">
                        
  

                <div class="container">
                    <div class="row">          
   <div class="widget widget-tabs">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#recent" data-toggle="tab">Map</a></li>
                                <li><a href="#popular" data-toggle="tab">Day1</a></li>
                                <li><a href="#popular" data-toggle="tab">Day2</a></li>
                                <li><a href="#popular" data-toggle="tab">Day3</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active featured-posts" id="recent">
							
							 <div class="col-sm-5 contact section-intro">
							 <div style="width: 400px; height: 400px; margin: 0px 0px 20px 30px; padding: 0px; margin-bottom: 40px;" class="home-map no-margin-bottom">
							 <div id="map"></div>
							 </div>
							 
							<!-- <div id="map_canvas" style="width: 400px; height: 400px; margin: 0px 0px 20px 30px; padding: 0px; margin-bottom: 40px;" class="home-map no-margin-bottom"></div> -->
							
							</div>
							<div class="col-sm-7 sidebar">
							                            <div class="widget no-margin-bottom">
                                <h1 class="widget-title no-margin-top no-margin-bottom">지도에서 <span class="higlight">장소</span>를 선택하세요</h1>
                                <p>&nbsp;</p>
                            <div class="main-contact-form">
                                <div class="widget no-margin-bottom">
                                <form  method="post" name="formPlace">
									<input type="hidden" name="lat">
									<input type="hidden" name="lng">
                                    <div class="row">
                                        <div class="col-sm-6">
                                        <label for="check-in-date2">장소 이름</label>
                                        <input class="form-control" type="text" name="name" placeholder="장소 이름" /></div>
                                        <div class="col-sm-6">
                                        <label for="check-in-date2">상세 설명</label>
                                        <input class="form-control" type="text" name="email" placeholder="상세 설명" /></div>     
									</div>
                                    <input class="button" type="submit" value="장소 추가" />

                                </form>
								</div>                                
                                <hr>
                        <div class="widget no-margin-bottom">
                                <h3 class="widget-title">추가된 장소</h3>
                                <address>
                                    <ul class="address-ul fa-ul">
                                        <li>
                                            <i class="fa-li fa fa-home"></i>Company, Inc. 
                                            795 Folsom Ave, Suite 600 
                                            San Francisco, CA 94107
                                        </li>
                                        <li><i class="fa-li fa fa-map-marker"></i><a href="#">View large map</a></li>
                                    </ul>
                                </address>
                                <hr>
                                <address>
                                    <ul class="address-ul fa-ul">
                                        <li>
                                            <i class="fa-li fa fa-home"></i>Company, Inc. 
                                            795 Folsom Ave, Suite 600 
                                            San Francisco, CA 94107
                                        </li>
                                        <li><i class="fa-li fa fa-map-marker"></i><a href="#">View large map</a></li>
                                    </ul>
                                </address>
                            </div>
                                
                                <hr>
                                                           <div class="main-contact-form">
                                <form  method="post">

                                    <div class="row">
                                        <div class="col-sm-4">
                                        <label for="check-in-date2">가이드 비용</label>
                                        <input class="form-control" type="text" name="name" placeholder="가이드 비용" /></div>
                                        <div class="col-sm-8">
                                        <label for="check-in-date2">가이드 내용</label>
                                        <input class="form-control" type="text" name="email" placeholder="추가 사항" /></div>    
									</div>

                                </form>
                                <hr>
                            </div>
                                    
                                                                </div>
                                                                
                        </div>
                                                                
                        </div>
                            

                            
                            
                            
                  </div>
                                <div class="tab-pane fade featured-posts" id="popular">
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="images/blog/blog-sidebar-2.jpg" alt="">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="#">Suspendisse risus sem</a></h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel euismod neque.</p>
                                            <p class="post-date"><i class="fa fa-clock-o"></i> about 5 house ago</p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="images/blog/blog-sidebar-1.jpg" alt="">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="#">Curabitur sed lorem </a></h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel euismod neque.</p>
                                            <p class="post-date"><i class="fa fa-clock-o"></i> about 5 house ago</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.widget -->
                        
                    


                    </div>
                </div>
                </section><!--지도 섹션끝  -->
                


                        
                        <!-- Scripts -->
        <!-- jQuery -->
        <script src="../resources/inc/js/jquery-1.10.2.min.js"></script>
        <script src="../resources/inc/js/jquery-migrate-1.2.1.js"></script>

        <!-- modernizer -->
        <script src="../resources/inc/js/modernizr.custom.63321.js"></script>

        <!-- FlexSlider -->
        <script type="text/javascript" src="../resources/inc/js/jquery.flexslider-min.js"></script>   

        <!-- CatSlider -->
        <script type="text/javascript" src="../resources/inc/js/jquery.catslider.js"></script>    

        <!-- Datepicker -->
        <script type="text/javascript" src="../resources/inc/js/jquery.ui.datepicker.min.js"></script>    

        <!-- Masonry -->
        <script type="text/javascript" src="../resources/inc/js/masonry.min.js"></script> 

        <!-- Increase/decrease quantity -->
        <script type="text/javascript" src="../resources/inc/js/increase-decrease-qty.js"></script>   
        
        <!-- Mixitup (filterable item) -->
        <script type="text/javascript" src="../resources/inc/js/jquery.mixitup.min.js"></script>  

        <!-- Google Map JS -->
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
        <script type="text/javascript" src="../resources/inc/js/google-map-infobox.js"></script>      

        <!-- Responsive Google Map (Fitmaps) JS -->
        <script type="text/javascript" src="../resources/inc/js/jquery.fitmaps.js"></script>  

        <!-- Chozen UI JS -->
        <script type="text/javascript" src="../resources/inc/js/chosen.jquery.js"></script>   

        <!-- Checkbox/Radio UI JS -->
        <script type="text/javascript" src="../resources/inc/js/jquery.screwdefaultbuttonsV2.js"></script>    

        <!-- Range Slider UI JS #2 -->

        <script type="text/javascript" src="../resources/inc/js/jquery.mousewheel.min.js"></script>   

        <script type="text/javascript" src="../resources/inc/js/jQRangeSlider-min.js"></script>   

        <!-- bootstrap JS -->

        <script type="text/javascript" src="../resources/inc/bootstrap/js/bootstrap.min.js"></script>     

        <!-- raty JS -->

        <script type="text/javascript" src="../resources/inc/js/jquery.raty.min.js"></script> 

        <!-- Custom JS -->

        <script type="text/javascript" src="../resources/inc/js/custom.js"></script>  
        
        
        <!-- 네이버 지도 api 관련 스크립트 -->
        <script type="text/javascript">
    var oSeoulCityPoint = new nhn.api.map.LatLng(37.5675451, 126.9773356);
    var defaultLevel = 11;
    var oMap = new nhn.api.map.Map(document.getElementById('map'), {
        point : oSeoulCityPoint,
        zoom : defaultLevel,
        enableWheelZoom : true,
        enableDragPan : true,
        enableDblClickZoom : false,
        mapMode : 0,
        activateTrafficMap : false,
        activateBicycleMap : false,
        minMaxLevel : [ 1, 14 ],
        size : new nhn.api.map.Size(400, 400)		});
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
    	
    	document.formPlace.lat.value = pos.point.getX();
    	document.formPlace.lng.value = pos.point.getY();
    	
    	alert(document.formPlace.lat.value+", "+document.formPlace.lng.value);
       
    });
</script>
        
        
        
<!--         <script>
        var scroll = function(){
             /* var formData = $("#guideForm").serialize();
 */        /*    console.info("폼테이터" + formData); */
        $.ajax({
                url:"http://192.168.0.76:8080/bbs/guide/list",
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
   /* $(window).scroll(function(){  
        if  ($(window).scrollTop() == $(document).height() - $(window).height()){  
           scroll();  
        }  
   });  
 */
   </script>
    </body>

</html>
                        
                        
                        