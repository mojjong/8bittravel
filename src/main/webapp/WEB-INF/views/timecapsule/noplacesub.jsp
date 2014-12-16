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
                <div class="area-404-2">

                    <div class='content-holder'>
                        <div class="branding">
                            <h1 class="site-title">
                                <a href="#"><img src="/resources/images/site-logo.png" alt="Traveline" /> <span>8BIT<span class="higlight"> Travel</span></span></a>
                            </h1>
                        </div>

                        <h1>No Timecapsule in this place</h1>

                        <h3><small>새로운 타임캡슐을 등록해주세요</small></h3>

                        <p class="margin-top-30"><a href='/timecapsule/sub/write?grno=${param.grno}' class="button green btn-lg"><small>타임캡슐 등록하러 가기</small></a></p>

                    </div>

                </div>

<%-- 				<div class="pagination-holder left">
					<%@ include file="include_timecapsulePageAction.jsp"%>
					
					<button type="button" class="button green" 
						Onclick='window.location="/timecapsule/sub/write?grno=${pageVo.grno}"' >write</button>
					
				</div> --%>
                    
                    
                  

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
	$("a[data-gal^='prettyPhoto']").prettyPhoto({
		theme : 'dark_square'
	});
</script>

<!-- Custom JS -->

<script type="text/javascript" src="/resources/inc/js/custom.js"></script>




</body>

</html>