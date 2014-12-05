<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>8Bit Travel</title>

        <link rel="stylesheet" href="/resources/inc/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/resources/styles/themes/default/stylesheet.css" />
   
        <link rel="alternate stylesheet" type="text/css"  title="02" href="/resources/styles/themes/style02/stylesheet02.css" />
        <link rel="alternate stylesheet" type="text/css"  title="03" href="/resources/styles/themes/style03/stylesheet03.css" />
        <link rel="alternate stylesheet" type="text/css"  title="04" href="/resources/styles/themes/style04/stylesheet04.css" />
        <link rel="alternate stylesheet" type="text/css"  title="05" href="/resources/styles/themes/style05/stylesheet05.css" />
        <link rel="alternate stylesheet" type="text/css"  title="06" href="/resources/styles/themes/style06/stylesheet06.css" />
        <link rel="alternate stylesheet" type="text/css"  title="07" href="/resources/styles/themes/style07/stylesheet07.css" />
        <link rel="alternate stylesheet" type="text/css"  title="08" href="/resources/styles/themes/style08/stylesheet08.css" />
        <link rel="alternate stylesheet" type="text/css"  title="09" href="/resources/styles/themes/style09/stylesheet09.css" />
        <link rel="alternate stylesheet" type="text/css"  title="10" href="/resources/styles/themes/style10/stylesheet10.css" />
        <link rel="alternate stylesheet" type="text/css"  title="11" href="/resources/styles/themes/style11/stylesheet11.css" />
        <link rel="alternate stylesheet" type="text/css"  title="12" href="/resources/styles/themes/style12/stylesheet12.css" />
        <link rel="alternate stylesheet" type="text/css"  title="13" href="/resources/styles/themes/style13/stylesheet13.css" />
        <link rel="alternate stylesheet" type="text/css"  title="14" href="/resources/styles/themes/style14/stylesheet14.css" />
        <link rel="alternate stylesheet" type="text/css"  title="15" href="/resources/styles/themes/style15/stylesheet15.css" />

        <script src="/resources/inc/js/styleswitch.js" type="text/javascript">

/***********************************************

* Style Sheet Switcher v1.1- © Dynamic Drive DHTML code library (www.dynamicdrive.com)

* This notice MUST stay intact for legal use

* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more

***********************************************/

</script>

        <!-- Flexslider -->
        <link rel="stylesheet" href="/resources/styles/flexslider.css" />

        <!-- fontawesome -->
        <link rel="stylesheet" href="/resources/styles/fontawesome/font-awesome.min.css" />

        <!-- Datepicker UI -->
        <link rel="stylesheet" href="/resources/styles/jquery-ui-1.10.3.custom.min.css" />

        <!-- MI slider -->
        <link rel="stylesheet" href="/resources/styles/mi-slider.css" />   

        <!-- Chozen UI -->
        <link rel="stylesheet" href="/resources/styles/chosen.css" />   

        <!-- Range Slider UI #2 -->
        <link rel="stylesheet" href="/resources/styles/rangeslider-classic.css" />

        <!-- Elegant Font -->
        <link rel="stylesheet" href="/resources/inc/elegant-font/style.css" />

        <!--[if lte IE 7]><script src="/resources/inc/elegant-font/lte-ie7.js"></script><![endif]-->

     <link rel="stylesheet" href="/resources/demo/switcher.css" />

    </head>

    <body class="login-page-bg">


<div id="preloader">
    <div id="status">&nbsp;</div>
    <noscript>JavaScript is off. Please enable to view full site.</noscript>
</div>

        <div id="site">
            <!-- /#header -->
            <section id="more-pages" class="section wide-fat">
                <div class="container">
                <div class="login-wrapper">
                    <div class='content-holder'>
                        <div class="branding">
                            <h1 class="site-title">
                                <img src="/resources/images/site-logo.png" alt="Traveline" /> <span>8BIT<span class="higlight"> Travel</span></span>
                            </h1>
                        </div>
                        <h1>Welcome back!</h1>
                        <p>Please login to your account.</p>
                        <form name="loginForm" action="/user/loginProcess" method="post">
                            <div class=" field-row">
                                <input name="id" placeholder="ID">
                                <input class="margin-top-10" name="pw" type="password" placeholder="Password">
                                <div class="custom-checkbox-holder margin-top-20 text-left">
                                    <input class="custom-checkbox" type="checkbox" >
                                    <span>Remember me on this computer.</span>
                                </div>
                            </div>
                            <button type="submit" class="button green btn-block">Login Now</button>
                        </form>
                    </div>
                </div>
                </div>
            </section><!-- /#more-pages.section -->
      <!-- /#footer -->
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
   <!-- Custom JS -->
   <script type="text/javascript" src="/resources/inc/js/custom.js"></script>   
    </body>
</html>