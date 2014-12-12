<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/timecapsulewriteheader.jsp"%>
            <section class="page-head-holder">
                <div class="container">

                    <div class="col-xs-12 col-sm-6">
                        <h2>Timecapsule Upload</h2>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                        <div class="breadcrumb-holder">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Timecapsule</a></li>
                                <li class="active"><a href="#">upload</a></li>
                            </ol>
                        </div>
                    </div>

                </div>
            </section>

            <section id="more-pages" class="section wide-fat">
                <div class="container">

                    <!-- Project Details -->


                    <div class="row project-single">
                        <div class="col-lg-8 col-md-7 col-sm-12">
                            <div class="owl-carousel img-carousel">
                                <div class="item"><img name="carouselitem0" class="img-responsive" src="/resources/images/transparent.png" alt=""/></div>
                                <div class="item"><img name="carouselitem1" class="img-responsive" src="/resources/images/transparent.png" alt=""/></div>
                                <div class="item"><img name="carouselitem2" class="img-responsive" src="/resources/images/transparent.png" alt=""/></div>
                            </div>
                            <hr class="hidden-md hidden-lg"/>
                        </div>
                        <div class="col-lg-4 col-md-5 col-sm-7 project-overview">
                            <h3 class="block-title">Timcapsule Upload</h3>
                            <!-- <input class="required " id="fileUpload1" type="file" style="margin-bottom:20px;"> -->
                            
							                                      	<!--파일업로드DIV  -->
							<form target="zero" name="fileUploadForm" id="fileUploadFormId" action="/file/upload" method="post" enctype="multipart/form-data">
								
								<input type="hidden" name="foldername" value="TIMECAPSULEFILE" />
								<input type='file' name='file' id="inputfile" style="margin-bottom:10px;">
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
                            <form name=writeForm>
                            <input type="hidden" name="grno" value="${param.grno}" />
                            <input type="hidden" name="id" value="user02" />
                            <input type="hidden" name="fileList" />
                            <input type="hidden" name="isfile" value="f" />
                                    <h3 class="block-title">Timcapsule Details</h3>
                                    <textarea class="col-xs-12" name="content" placeholder="여행지에서 당신의 느낌을 남겨주세요." rows="9"></textarea>
                                    <p><a class="button green margi" href="javascript:writeSubmit();">타임캡슐 묻기 </a> &nbsp;&nbsp;&nbsp;&nbsp; <small>(타임캡슐은 다른 여행자들과 공유됩니다)</small></p>
                        	</form>
                        </div>

                    </div>

                    <hr/>

                    <!-- /Project Details -->
                </div>
            </section><!-- /#more-pages.section -->































         

        <footer id="footer-black" class="widefat ">







                <div class="container">





                    <div class="col-xs-12 col-md-4">

                        <div class="footer-logo">

                            <h1 class="site-title">



                                <a href="#"><img src="/resources/images/site-logo.png" alt="Traveline" /> <span>Travel<span class="higlight">ine</span></span></a>



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







            </footer><!-- /#footer -->









        </div><!-- /#site -->





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

    
	<!-- File Upload -->
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
        	var srcList = [];
        	for(var i=0; i<$(".img-responsive").length; i++){
        		var src = $($(".img-responsive" ).get(i)).attr("data-src");
        		if(src !== undefined){
        			srcList.push(src);
        		}	
        	}
        	srcList = jQuery.unique( srcList );
        	
/*         unique 함수 실제.	
        	Array.prototype.getUnique = function(){
 		   var u = {}, a = [];
 		   for(var i = 0, l = this.length; i < l; ++i){
 		      if(u.hasOwnProperty(this[i])) {
 		         continue;
 		      }
 		      a.push(this[i]);
 		      u[this[i]] = 1;
 		   }
 		   return a;
 		}
*
*/
        	
             document.writeForm.action="/timecapsule/sub/write";
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
       
        	
	</script>

    </body>

</html>