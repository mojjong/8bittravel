<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../../include/timecapsulewriteheader.jsp" %>


<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=8dc3f50341e3abc71540971185f76729"></script>
<section class="page-head-holder">
                <div class="container">

                    <div class="col-xs-12 col-sm-6">
                    
                        <h2>GuideWrite</h2>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                        <div class="breadcrumb-holder">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>                              
                                <li><a href="#">List</a></li>         
                                <li><a href="#">Content</a></li> 
                                <li><a href="#">GuideWrite</a></li>   
                            </ol>
                        </div>
                    </div>
                </div>
            </section>



             <section id="contact" class="section wide-fat">        
                <div class="container">
                    <div class="row"> 
                     <div class="widget widget-tabs"> 
                    	
                    	 
                				    
                           		<div id="messagesAlert"></div>
                           		
	                             <!--탭 DIv  -->                        
	                            <ul  id = "myTab" class="nav nav-tabs" role="tablist">
	                                <li id="li1" class="active"><a href="#theme" role="tab" data-toggle="tab">REGION</a></li>
	                                <li id="last"><a href="#addTab"><span class="glyphicon glyphicon-plus"></span> Add Tab</a></li>
	                                <!-- <li><a href="#recent" data-toggle="tab" >Day1</a></li> -->
	                            </ul>
	                            
	                            
                            <!--테마내용  -->
                            
                 			<div id = "content" class="tab-content">  
                 			         
			                   <div class="tab-pane fade in active" id="theme">
			                   	<div class="row project-single">
			                        <div class="col-lg-8 col-md-7 col-sm-12">
			                          <!-- <div class="owl-carousel img-carousel"> -->
			                          <c:choose>
			                          <c:when test="${gpphoto.isfile == 't'}">
			                                <div class="item"><img name="carouselitem0" class="img-responsive" src="/file/view/${gpphoto.filename }/${gpphoto.suffix}" alt=""/></div>   
			                          </c:when>
			                          <c:otherwise>
                                		 <div class="item"><img name="carouselitem0" class="img-responsive" src="/resources/images/transparent.png" alt=""/></div>
			                          </c:otherwise>
			                          </c:choose>
			                          <!-- </div>   -->
			                            <hr class="hidden-md hidden-lg"/>
			                        </div>
			                        <div class="col-lg-4 col-md-5 col-sm-7 project-overview">
			                            <h3 class="block-title">Upload File</h3>
			                            <!-- <input class="required " id="fileUpload1" type="file" style="margin-bottom:20px;"> -->
			                            
										<!--파일업로드DIV  -->
										<form target="zero" name="fileUploadForm" id="fileUploadFormId" action="/file/upload" method="post" enctype="multipart/form-data">
											<input type="hidden" name="gpphotono" value="${gpphoto.gpphotono }"/>
											<input type="hidden" name="foldername" value="GUIDEPLAN" />
											
											  <p class="form-control-static">선택된 파일 : ${gpphoto.getOriginfilename() }.${gpphoto.getSuffix() }</p>&nbsp;
											<input type='file' name='file' id="inputfile"   style="margin-bottom:10px;" >
											
											<a class="button mini low-blue" href="javascript:fileupload.upload()">upload</a>
											<small style="float:right;">jpg, gif, png 이미지 파일만 업로드 가능</small>
										</form>
										
										<iframe name="zero"  height = "0" frameborder="0">
										</iframe>
										<ul class="fileUL">	
										</ul>
			                        </div>
			                        
			                        <div class="col-lg-4 col-md-5 col-sm-7 project-overview">
			                            <hr class="page-divider half hidden-sm"/>
			                            <form name="writeForm">
				                            <input type="hidden" name="travelno" value="${guideplan.travelno}" />
				                            <input type="hidden" name="guideno" value="${guideplan.guideno }" />
 			                            	<input type="hidden" name="gpphotono" value="${gpphoto.gpphotono }"/>
				                            <input type="hidden" name="fileList" value="${gpphoto.originfilename}.${gpphoto.suffix}"/>
				                            <input type="hidden" name="isfile" value="f" />
			                                    <h3 class="block-title">Region Details</h3>
			                                    <textarea class="col-xs-12" name="content" placeholder="이 지역에 대한 코멘트를 남겨주세요." rows="9"> ${gpphoto.content } </textarea>
			                                    <p><a class="button green margi" href="javascript:writeSubmit();">테마 저장 </a> &nbsp;&nbsp;&nbsp;&nbsp; <small>(타임캡슐은 다른 여행자들과 공유됩니다)</small></p>
			                        	<hr>
			                        	</form>
			                        </div>	
			                        	<hr/>
			                    </div><!--썸네일추가끝  -->		
			                    </div><!--ㅌㅔ마div끝  -->
			                    
			       
			                    
			                    
			                    
                   				</div><!--tab content끝  -->
                   				
     					           				
							
                       
                         </div><!-- -widget - -->
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

    <!-- prettyphoto -->
    <script type="text/javascript" src="/resources/inc/prettyphoto/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript">
        $("a[data-gal^='prettyPhoto']").prettyPhoto({
            theme: 'dark_square'
        });
    </script>

    <!-- OWL Carousel -->
    <script src="/resources/inc/owlcarousel2/owl.carousel.min.js"></script>

    <!-- Custom JS -->

    <script type="text/javascript" src="/resources/inc/js/custom.js"></script>  
       
   <script>
   
  
   
   var fileCounter = function() {

		var fileCount = 0;
		
	  	  return { 
			  upload: function() {
					var file = document.fileUploadForm.file.value;
					var suffix = file.substring(file.lastIndexOf("."), file.length);
					if(suffix==".jpg" || suffix == ".png" || suffix == ".gif"){
						fileCount += 1;
						document.writeForm.isfile.value = 't';
						if(fileCount > 3) {
							alert("3개이상 업로드 불가");
						}else{
							document.fileUploadForm.submit();
						}
					}else{
						alert("jpg, gif, png 이미지 파일만 업로드 가능");
					}
		 	 }
		  }  

		};    
		
		var fileupload = fileCounter();
		
     
     function writeSubmit() {
    	 
    	var gpphotonno = document.writeForm.gpphotono.value;
    	 if(gpphotonno == ""){
    		 
    		 document.writeForm.gpphotono.value = 0;
    	 }
    	 
     	var srcList = [];
     	for(var i=0; i<$(".img-responsive").length; i++){
     		var src = $($(".img-responsive" ).get(i)).attr("data-src");
     		if(src !== undefined){
     			srcList.push(src);
     		}	
     	}
     	srcList = jQuery.unique(srcList);
     	console.log(srcList);
     	
         document.writeForm.action="/bbs/guide/guidep";
         document.writeForm.method="post";
         document.writeForm.fileList.value = srcList;
         document.writeForm.submit();
 }
     
     var updateCounter = function() {
   	  var privateCounter = 0;
   	  function changeBy(val) {
   	    privateCounter += val;
   	  }
   	  return { 
   		  increment: function(data) {
   			//var obj =$("#carouselitem"+(privateCounter%3));
     	    	var obj = document.getElementsByName("carouselitem"+(privateCounter%3));
   			
   			for (i = 0; i < obj.length; i++) { 
   				obj[i].src = "/file/view/"+data.foldername+"/"+data.fileName+"/"+data.suffix;
   				$(obj[i]).attr("data-src", data.foldername+"\\"+data.fileName+"."+data.suffix);
   			}

   			changeBy(1);
   	 	 }
   	  }  
  };
  
  var updateResult = updateCounter();
     
     
    
        
      function placeAdd(plandate, gpno){
    	 
          	var a =$('#placeFormId'+plandate).serialize();
          	//placeFormId${plandate }
    		
           $.ajax({
               url:"/bbs/guide/place",
               data: a,
               dataType:'json',
               type:"post",
               success: function (data) {
            	   console.dir(data);
            	   var str = "";
            	   $.each(data, function(k,v){
           
            		   str += "<div id= 'place_"+v.grno+" class='widget no-margin-bottom'>"
            		   +"<address >"
                       +"<ul class='address-ul fa-ul'>"
                       +"<input id='grno_"+v.grno+"' type='hidden'  value='"+v.grno+"'>"
                       +"<input id='gpno_"+v.grno+"' type='hidden'  value='"+v.gpno+"'>"
                       +"<input id='lat_"+v.grno+"' type='hidden'  value='"+v.lat+"'>"
			           +"<input id='lng_"+v.grno+"' type='hidden'  value='"+v.lng+"'>"
			           
                       +"<li id='placeId_"+v.grno+"'><span>"
                       +"<i class='fa-li fa fa-home'></i>"+v.place+"</span> "   
                       +"</li>"
                       +"<li id= 'msgId_"+v.grno+"'>"
                       +"<span >"
                       +"<i class='fa-li fa fa-map-marker'></i>"+v.msg
                       +"</span></li>"
                       +"<li><a href='javascript:placeModify("+v.grno+")'>수정</a>&nbsp;&nbsp;</li>"
                       +"<li><a href='javascript:placeDel("+v.grno+")'>삭제</a></li>"
                       +"</ul>"
                       +"</address><hr></div>";
            		 	
            	   });
            	 $("#addplaceID"+gpno).html(str);
            	   
               }
           });
      }
        
		
        function placeModify(grno){
           
           var div = document.getElementById("place_"+grno);
           var modiPlace=$("#placeId_"+grno).text();
           var modiMsg = $("#msgId_"+grno).text();
           var modilat = $("#lat_"+grno).val();
           var modilng = $("#lng_"+grno).val();
          
           
           
           if(modiPlace !==null && modiMsg!== null){
              div.innerHTML =  "<div id= 'place_"+grno+"'>"
            	  			 +"<address>"
               				  +"<ul class='address-ul fa-ul'>"
				              +"<input id='modi_placeNo' type='hidden'  value='"+grno+"'>" 
				           
				              +"<input id='modi_lat' type='hidden'  value='"+modilat+"'>"
				              +"<input id='modi_lng' type='hidden'  value='"+modilng+"'>"
				              +"<li >"
			                  +"<i class='fa-li fa fa-home'></i>"
			                  +"<input id='modi_place' type = 'text' value='"+modiPlace+"'/>"
				              +"</li>"
				              +"<li>"
			                  +"<i class='fa-li fa fa-map-marker'></i>"
			                  +"<input id='modi_msg' type = 'text' value='"+modiMsg+"'/>"
			                  +"</li>"
			                  +"<li><a href='javascript:placeUpdate("+grno+")'>Complete</a>&nbsp;&nbsp;</li>"
			                  +"</ul>"
			                  +"</address><hr></div>"  
           }  
        }
        
        
        function placeUpdate(grno){

	        var lat = document.getElementById('modi_lat').value;
	        
	        var lng = document.getElementById('modi_lng').value;
	        var place = document.getElementById('modi_place').value;
	        var placeMsg = document.getElementById('modi_msg').value;
	       
         
	        document.placeList.no.value = grno;
	        document.placeList.lat.value = lat;
	        document.placeList.lng.value = lng;
	        document.placeList.place.value = place; 
	        document.placeList.msg.value = placeMsg;
	        
         	var modidata= $('#placeListId').serialize();
        
	        $.ajax({
	               url:"/bbs/guide/placeModify",
	               data: modidata,
	               dataType:'json',
	               type:"post",
	               success: function (data) {
	                  var str = "";
	                  $.each(data, function(k,v){
	                	  str +=  "<div id= 'place_"+v.grno+"'>"
			            		   +"<address >"
			                       +"<ul class='address-ul fa-ul'>"
			                       
			                       +"<input id='lat_"+v.grno+"' type='hidden'  value='"+v.lat+"'>"
						           +"<input id='lng_"+v.grno+"' type='hidden'  value='"+v.lng+"'>"
			                       +"<li id='placeId_"+v.grno+"'>"
			                       +"<span>"
			                       +"<i class='fa-li fa fa-home'></i>"+v.place
			                       +"</span> "   
			                       +"</li>"
			                       +"<li id= 'msgId_"+v.grno+"'>"
			                       +"<span >"
			                       +"<i class='fa-li fa fa-map-marker'></i>"+v.msg
			                       +"</span></li>"
			                       +"<li><a href='javascript:placeModify("+v.grno+")'>수정</a>&nbsp;&nbsp;</li>"
			                       +"<li><a href='javascript:placeDel("+v.grno+")'>삭제</a></li>"
			                       +"</ul>"
			                       +"</address><hr></div>";
	                   });
	                 $("#addplaceID").html(str);
	                   
	                }
	            });
          
        }
        
        function placeDel(grno){
            console.log(grno);
	        $.ajax({
	               url:"/bbs/guide/placeDel",
	               data: "grno="+grno,
	               type:"POST",
	               success: function (data) {
	                  var str = "";
	                  $.each(data, function(k,v){
	                	  str +=  "<div id= 'place_"+v.grno+"'>"
			            		   +"<address >"
			                       +"<ul class='address-ul fa-ul'>"
			                       +"<input id='lat_"+v.grno+"' type='hidden'  value='"+v.lat+"'>"
						           +"<input id='lng_"+v.grno+"' type='hidden'  value='"+v.lng+"'>"
			                       +"<li id='placeId_"+v.grno+"'>"
			                       +"<span>"
			                       +"<i class='fa-li fa fa-home'></i>"+v.place
			                       +"</span> "   
			                       +"</li>"
			                       +"<li id= 'msgId_"+v.grno+"'>"
			                       +"<span >"
			                       +"<i class='fa-li fa fa-map-marker'></i>"+v.msg
			                       +"</span></li>"
			                       +"<li><a href='javascript:placeModify("+v.grno+")'>수정</a>&nbsp;&nbsp;</li>"
			                       +"<li><a href='/bbs/guide/placeDel?grno="+v.grno+"'>삭제</a></li>"
			                       +"</ul>"
			                       +"</address><hr></div>";
	                   });
	                 $("#addplaceID").html(str);
	                   
	                }
	            });
        };
        
        
        
        $(document).ready(function(){
               // This line is not required (I just up the system and say there is 1 tab in the <div id="messagesAlert"></div> markup)
               $('#displayElem').html('1');

               // add버튼 누를때 연결되는 이벤트.
               $('#myTab a[href="#addTab"]').on('click', function () { 
                   // li가 얼마나 추가되었는지 (-1하는 것은 AddTab이라는 버튼을 빼기 위해서.)
                   var nbrLiElem = ($('ul#myTab li').length) - 2; 

                   nbrLiElem = nbrLiElem + 1; 
                   
                   
                   // last-child앞에 새로운 tab li가 추가된다.
                   // li ID랑 그 li가 눌렸을때 어떻게 동작하는지 완전한 구조로 append된다.
                   $('ul#myTab li:last-child').before('<li id="li' + (nbrLiElem) + '">'
                   +'<a href="#plandate' + (nbrLiElem) + '" role="tab" data-toggle="tab">plandate ' + (nbrLiElem) + ' </a>');
                   
                   // <div class="tab-content">의 last-child 뒤에 새로운 div요소가 추가된다.
                   //$('div.tab-content div:last-child').after('<div class="tab-pane fade" id="tab'+(nbrLiElem)+'"></div>');
                   // 탭시스템 안에 하나 이상의 element를 추가한다.
                    $('div.tab-content').append('<div class="tab-pane fade" id="plandate'+(nbrLiElem)+'"></div>');
                   
                  	//get방식으로 컨트롤러에게 안에 내용을 가져와 달라고 요청한다.
                   $.get("/bbs/guide/guidetab?plandate="+nbrLiElem+"&travelno=${guideplan.travelno}", function(data) {
                     
                      var tab = document.getElementById('plandate'+nbrLiElem);

                      tab.innerHTML = data;
                      
					  //jquery로 추가한탭의 아이디로 map div를 이용해 지도를 붙여넣는다,
                      var q=$('div#plandate'+nbrLiElem+' div#map');
                      
                      mapObj(q[0], nbrLiElem);
                     });
					
					
					
                   // This line is not required (I just display, inside the <div id="messagesAlert"></div> markup, how many tabs there is)
                   $('#displayElem').html(nbrLiElem); 
               });
       
            /*  //for bootstrap 3 use 'shown.bs.tab' instead of 'shown' in the next line
               $('a[data-toggle="tab"]').on('click', function (e) {
                 //save the latest tab; use cookies if you like 'em better:
                 localStorage.setItem('lastTab', $(e.target).attr('href'));
               });

               //go to the latest tab, if it exists:
               var lastTab = localStorage.getItem('lastTab');

               if (lastTab) {
                   $('a[href="'+lastTab+'"]').click();
               } */
           }); 

        
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
      
        
       $(document).ready(function() {
    	  	$('#rootwizard').bootstrapWizard({'tabClass': 'nav nav-tabs'});
    	});
        </script>
    </body>

</html>
                        
                        
                        