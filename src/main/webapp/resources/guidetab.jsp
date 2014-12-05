<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

 
<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=8dc3f50341e3abc71540971185f76729"></script>

<h1>${tab }</h1>

<!--ë´ì© ì ì²´ DiV  -->     
   <div>
                         	 
	 <div  class="col-sm-5 contact section-intro">
	 <div style="width: 400px; height: 400px; margin: 0px 0px 20px 30px; padding: 0px; margin-bottom: 40px;" class="home-map no-margin-bottom">
		 <div id="map"> </div>
	
	
	 </div>				
							</div><!--ì§ëDIV  -->
							
							
				<div class="col-sm-7 sidebar">
					<div class="widget no-margin-bottom">
                                <h1 class="widget-title no-margin-top no-margin-bottom">지도에서  <span class="higlight">장소</span>를 선택하세요</h1>
                                <p>&nbsp;</p>
                         <div class="main-contact-form">
                           <!--ì¥ì ì¶ê° DIV  -->
                           <div class="widget no-margin-bottom">
                           		<!--ì¥ì ì¶ê° í¼ìì  -->
                                <form  name="formPlace${tab}" id="placeFormId${tab }" >
                                	
                                	<input type="hidden" name="gpno" value="61">
									<input type="hidden" name="lat">
									<input type="hidden" name="lng">
									<input type="hidden" name="tab" value = "${tab }"  >
                                    <div class="row">
                                        <div class="col-sm-6">
                                        <label for="check-in-date2">장소 이름</label>
                                        <input class="form-control" type="text" name="place" placeholder="장소 이름" /></div>
                                        <div class="col-sm-6">
                                        <label for="check-in-date2">상세 설명</label>
                                        <input class="form-control" type="text" name="msg" placeholder="상세 설명" /></div>     
									</div>
                                    <!-- <input class="button" type="submit" value="ì¥ì ì¶ê°" /> -->
                                    <li class="button"><a href='javascript:placeAdd(${tab })'>장소추가</a>&nbsp;&nbsp;</li>
                                </form><!--formPlace ë  -->                               
							</div><!--ì¥ìì¶ê°DIV ë  -->
								
						<!--ì¥ì ë¦¬ì¤í¸ append ëë form  -->				                      
                        <hr>
		                        <form name = "placeList" id = "placeListId_${tab }" action = "/bbs/guide/place" >    
			                        <input type="hidden" name="gpno" id = "gpnoId" value="61">  
			                        <input type="hidden" name = "no">  
			                        <input type="hidden" name="place"  >
			                        <input type="hidden" name="msg"  >
			                        <input type="hidden" name="tab" value = "${tab }"  >
			                        
			                        <div id= "placeDiv"  class="widget no-margin-bottom">
			                                <h3 class="widget-title">추가된 장소</h3>
			                                
			                        <c:forEach var="placevo" items="${placeList}">
			                        <div id= "place_${placevo.getNo()}">
			                           <address>
				       					<ul class='address-ul fa-ul'>
						       				<li id="placeId_${placevo.getNo() }"><span><i class='fa-li fa fa-home'></i>${placevo.getPlace()}+ ${placevo.getNo() }</span></li>
				       						<li id="msgId_${placevo.getNo() }"><span><i class='fa-li fa fa-map-marker'></i>${placevo.getMsg()}</span></li>
				       						<li><a href='javascript:placeModify(${placevo.getNo()})'>수정 </a>&nbsp;&nbsp;</li>
			       							<li><a href='/bbs/guide/placeDel?no=${placevo.getNo()}'>삭제 </a></li>
				       					</ul>
				       					</address>
				       					</div>
				       					<hr>
			                                <!--ë¦¬ì¤í¸ ì¶ê°ëë DIV  -->
			                                <div id="placeDiv"></div>
			                                
				       				</c:forEach>              
			                            </div> 
			                            
		                          </form>  <!--*********placeList í¼ ë  --> 
                             
                             <!--ê°ì´ë ë¹ì© div  -->   
                            <div class="main-contact-form">
	                               <form  name = "guideBbsForm" method="post" action="/bbs/guide/gWrite">
	                               	
	                               	<input type = "hidden" name="guideid" value="user03">
	                               	<input type = "hidden" name="travelno" value = "152"> 
	                               	
	                                   <div class="row">
	                                       <div class="col-sm-4">
	                                       <label for="check-in-date2">총 예상비용</label>
	                                       <input class="form-control" type="text" name="cost" placeholder="총 예상비용" /></div>
	                                       <div class="col-sm-8">
	                                       <label for="check-in-date2">가이드 비용</label>
	                                       <input class="form-control" type="text" name="pay" placeholder="가이드 비용" /></div>  
									</div>
	                                       <button class="button"  type ="submit" >글쓰기&nbsp;&nbsp;</button>  
	                               </form><!-- guideBbsForm ë -->
                               <hr>
                           </div>
                           <!--******ê°ì´ë ë¹ì© div  ë  -->         
                                                       
                   		 </div><!--ì¥ì ì í, ë¦¬ì¤í¸, ë¹ì© Div ë  -->                                                                
                	</div><!-- ì¥ìì ííë ê¸ì¨ë¥¼ ê°ì¸ë divë -->  
           		</div><!--ì ì²´ì¬ì´ëë°  -->
	  		 </div><!--ë´ì© ì ì²´ DiV  -->
