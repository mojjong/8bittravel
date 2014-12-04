<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <div class="tab-pane fade in active featured-posts" id="#page0"> -->
							
							 <div id="AAA" class="col-sm-5 contact section-intro">
								 <div style="width: 400px; height: 400px; margin: 0px 0px 20px 30px; padding: 0px; margin-bottom: 40px;" class="home-map no-margin-bottom">
								 <div id="map"></div>
								 </div>				
							 </div><!--지도DIV  -->
							
							
							<div class="col-sm-7 sidebar">
							      <div class="widget no-margin-bottom">
                                <h1 class="widget-title no-margin-top no-margin-bottom">지도에서 <span class="higlight">장소</span>를 선택하세요</h1>
                                <p>&nbsp;</p>
                            <div class="main-contact-form">
                                <div class="widget no-margin-bottom">
                                
                                <form  name="formPlace" id="placeFormId" >
                                	
                                	<input type="hidden" name="gpno" value="61">
									<input type="hidden" name="lat">
									<input type="hidden" name="lng">
                                    <div class="row">
                                        <div class="col-sm-6">
                                        <label for="check-in-date2">장소 이름</label>
                                        <input class="form-control" type="text" name="place" placeholder="장소 이름" /></div>
                                        <div class="col-sm-6">
                                        <label for="check-in-date2">상세 설명</label>
                                        <input class="form-control" type="text" name="msg" placeholder="상세 설명" /></div>     
									</div>
                                    <!-- <input class="button" type="submit" value="장소 추가" /> -->
                                    <li class="button"><a href='javascript:placeAdd()'>장소추가</a>&nbsp;&nbsp;</li>
                                </form><!--formPlace 끝  -->
                                
								</div>
								
						<!--장소 리스트 append 되는 form  -->				                      
                                <hr>
                        <form name = "placeList" id = "placeListId" action = "/bbs/guide/place" >    
	                        <input type="hidden" name="gpno" id = "gpnoId" value="61">  
	                        <input type="hidden" name = "no">  
	                        <input type="hidden" name="place"  >
	                        <input type="hidden" name="msg"  >
	                        
	                        <div class="widget no-margin-bottom">
	                                <h3 class="widget-title">추가된 장소</h3>
	                                
	                        <c:forEach var="placevo" items="${placeList}">
	                        <div id= "place_${placevo.getNo()}">
	                           <address >
		       					<ul class='address-ul fa-ul'>
				       				<li id="placeId_${placevo.getNo() }"><span><i class='fa-li fa fa-home'></i>${placevo.getPlace()}+ ${placevo.getNo() }</span></li>
		       						<li id="msgId_${placevo.getNo() }"><span><i class='fa-li fa fa-map-marker'></i>${placevo.getMsg()}</span></li>
		       						<li><a href='javascript:placeModify(${placevo.getNo()})'>수정</a>&nbsp;&nbsp;</li>
	       							<li><a href='/bbs/guide/placeDel?no=${placevo.getNo()}'>삭제</a></li>
		       					</ul>
		       					</address>
		       					</div>
		       					<hr>
	                                <!--리스트 추가되는 DIV  -->
	                                <div id="placeDiv">                        
	                                </div>
	                                
	                               
	                                
		       				</c:forEach>              
		       					<hr>
	                               
	                            </div> 
                          </form>   
                             
                                
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
                                </form><!-- guideBbsForm 끝 -->
                                <hr>
                            </div>                                    
                   		 </div>                                                                
                	</div>
           		</div>
           		<!-- </div> -->