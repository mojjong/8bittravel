  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/photoheader.jsp"%>

            <section class="page-head-holder">
                <div class="container">

                    <div class="col-xs-12 col-sm-6">
                        <h2>Timecapsules in the place</h2>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                        <div class="breadcrumb-holder">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Timecapsule</a></li>
                                <li class="active"><a href="#">sub</a></li>
                            </ol>
                        </div>
                    </div>

                </div> 
            </section>

			
			
				
            <section id="contact" class="section wide-fat">
                <div class="container">

                    <div class="row thumbnails">
                    
                    <sec:authentication var="user" property="principal" />
	                  
					<c:forEach var="capsule" items="${capsule }">
				       <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="thumbnail no-border no-padding">
                               <div class="media">
                                <img src="/file/thumbnail?filename=${capsule.filename}.${capsule.suffix}" style="width:370px; height:241px;">
                                    <div class="caption hovered">
                                        <div class="caption-wrapper div-table">
                                            <div class="caption-inner div-cell">
                                                <p class="caption-buttons">
                                                    <a href="/file/download?filename=${capsule.filename}.${capsule.suffix}" onclick="javascript:fillcontent.setting(this);" class="btn caption-zoom" data-gal="prettyPhoto" data-msg="${capsule.content }"><i class="fa fa-search"></i></a>
                                                    
                                                    <sec:authorize access="hasRole('ROLE_USER') and isAuthenticated()">
														<c:if test="${user == capsule.id}">
														<a href="/timecapsule/sub/delete?no=${capsule.no}&grno=${param.grno}" class="btn caption-link"><i class="fa fa-bitbucket"></i></a>
														</c:if>
													</sec:authorize>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="caption after-media">
                                    <p class="caption-category" style="color:#51575b" name="content">${capsule.subcontent }</p>
                                    <p class="caption-category" style="color:#95a8b4; font-weight:light;" name="id"><small>${capsule.id } | ${capsule.regdate }</small></p>
                                    <%-- <p class="caption-category" name="grno"><a href="#">${capsule.grno }</a></p> --%>
                                </div>
                            </div>
                  	    </div>
				</c:forEach>
					

                    </div>
                    <hr/>

				<div class="pagination-holder left">
					<%@ include file="include_timecapsulePageAction.jsp"%>
					
					<button type="button" class="button green" 
						Onclick='window.location="/timecapsule/sub/write?grno=${pageVo.grno}"' >write</button>
					
				</div>
                    
                    
                   
                    <!-- <div class="pagination-holder left">
                        <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div> -->

                </div>
            </section><!-- /#more-pages.section -->

 
<%@include file="../include/footer.jsp"%>




</div>
<!-- /#site -->





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

<!-- prettyphoto -->

<script type="text/javascript"
	src="/resources/inc/prettyphoto/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript">
	var contentMaker = function (){
		var msg = "";
		return {
			setting: function (obj) {
				msg = obj.dataset.msg;
				setTimeout(function(){document.getElementById("ppContent").innerHTML = msg}, 800);
			}
		}
	}
	
	var fillcontent = contentMaker();
	
	$("a[data-gal^='prettyPhoto']").prettyPhoto({
		theme : 'dark_square',
		social_tools : '<div id="ppContent" class="twitter"></div>'
	});
	
	
</script>

<!-- Custom JS -->

<script type="text/javascript" src="/resources/inc/js/custom.js"></script>




</body>

</html>