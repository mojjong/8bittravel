<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML>

<html lang="UTF-8">
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
     
     <style>
.button.mini {
padding: 6px 20px;
margin-left: 10px;
}
     </style>

    </head>

    <body>


        <div id="preloader">
            <div id="status">&nbsp;</div>
            <noscript>JavaScript is off. Please enable to view full site.</noscript>
        </div>

        <div id="site">
            <header id="header" class="wide-fat">
                <div class="container">
                    <div class="col-xs-12 col-sm-2 no-margin">
                        <div class="branding">
                            <h1 class="site-title">
                                <a href="#"><img src="/resources/images/site-logo.png" alt="Traveline" /> <span>8BIT <span class="higlight">Travel</span></span></a>
                            </h1>
                        </div>
                    </div>

<%@include file="menu.jsp"%>



                </div>



                <div class="toggle-menu-holder">



                    <a class="toggle-menu" href="#"></a>

                    <div class="menu-body closed">

                        <ul>
    <sec:authorize ifAnyGranted="ROLE_ANONYMOUS">
                                   <li><a data-toggle="modal" data-target="#loginBox" href="#"><i class="fa fa-lock"></i> login</a></li>
                            <li><a href="/user/join"><i class="fa fa-user"></i> Join</a></li>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_ANONYMOUS">
       <li><a href="/user/logout"><i class="fa fa-lock"></i> logout</a></li>
    </sec:authorize>

                             <li><a href="/bbs/notice/list"><i class="fa fa-bullseye"></i> Notice</a></li>

                            <li><a href="#"><i class="fa fa-volume-down"></i> Alarm</a></li>

                            
<!-- 
                            <li><a href="#"><i class="fa fa-phone"></i> support center</a></li>

                            <li><a href="#"><i class="fa fa-dollar"></i> price</a></li>
 -->
                        </ul>

                    </div>







                </div>





            </header><!-- /#header -->
            
            <div class="modal fade" id="loginBox" tabindex="-1" role="dialog"  aria-hidden="true">

                <div class="modal-dialog">

                    <div class="modal-content">

                        <div class="modal-body">

                            <form action="/user/loginProcess" method="post">

                                <div class=" field-row">

                                    <input  name="id" placeholder="Username">

                                    <input  name="pw" type="password" placeholder="Password">

                                    <div class="custom-checkbox-holder">

                                        <input class="custom-checkbox" type="checkbox" >

                                        <span>Remember me on this computer.</span>

                                    </div>

                                </div>

                                <button type="submit" class="button green">Login Now</button>

                            </form>

                        </div>

                    </div>

                </div>

            </div>