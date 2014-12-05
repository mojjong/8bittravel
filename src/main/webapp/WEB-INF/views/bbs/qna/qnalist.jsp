<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp" %>

            <section class="page-head-holder">
                <div class="container">

                    <div class="col-xs-12 col-sm-6">
                        <h2>Pages</h2>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                        <div class="breadcrumb-holder">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Pages</a></li>
                                <li class="active"><a href="#">page</a></li>
                            </ol>
                        </div>
                    </div>

                </div>
            </section>

            <section id="more-pages" class="section wide-fat">
                <div class="container">

                    <h1 class="block-title text-center">FAQ</h1>

                    <div class="row features style-1 with-border">
                        <div class="col-md-12 col-lg-4">
                            <div class="media">
                            
                            <%-- <a href="view?bbsno=${listBoard.getBbsNo() }" > --%>
                    
                               <a href="/bbs/qna/persqna"> <i class="media-object fa fa-user" ></i></a>
                                <div class="media-body">
                                    <h3 class="media-heading" > 
                                   
                                    <p>QNA(묻고답하기)</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="media">
                                <div class="media-object fa fa-globe"></div>
                                <div class="media-body">
                                    <h3 class="media-heading">Report a Bug</h3>
                                    <p>Accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="media">
                                <div class="media-object fa fa-home"></div>
                                <div class="media-body">
                                    <h3 class="media-heading">Submit a Ticket</h3>
                                    <p>Accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr class="transparent"/>

                    <h2 class="block-title text-center">자주묻는 질문 적어 놓는 곳</h2>

                    <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                                    Nam sed velit et massa fringilla consequat?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse in">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                    Aenean interdum dui dictum auctor eleifend?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                                    Vestibulum semper erat quis facilisis aliquam?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                                    Quisque vitae lorem eu libero convallis dictum sed ut dolor?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse4" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">
                                    Aliquam ultricies elit sit amet risus rutrum fermentum?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse5" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">
                                    Duis faucibus nibh sit amet augue interdum mattis?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse6" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">
                                    Nam interdum ligula eget viverra varius?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse7" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">
                                    Morbi non augue viverra, semper sem a, commodo diam?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse8" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">
                                    Cras at dolor et nibh mollis fringilla in id nibh?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse9" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">
                                    Etiam eget eros ultricies, consectetur ante eu, viverra neque?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse10" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse11">
                                    Donec porta ligula sed ligula ullamcorper, at molestie ante interdum?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse11" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse12">
                                    Suspendisse facilisis orci sit amet odio commodo ultrices?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse12" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse13">
                                    Ut adipiscing mauris a quam cursus, eu molestie nulla cursus?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse13" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse14">
                                    Duis placerat augue ac ipsum suscipit, congue varius sem viverra?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse14" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse15">
                                    Integer sodales est ut tortor condimentum, ut aliquet nunc tristique?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse15" class="panel-collapse collapse">
                            <div class="panel-body">
                                Sed ultricies velit vitae enim pretium gravida. Mauris non lacus erat. In hac habitasse platea dictumst. Nullam mattis gravida nisl, vitae convallis urna sagittis quis. Etiam turpis quam, feugiat vel pretium eu, fringilla sit amet lacus. Duis dictum luctus orci, sit amet fermentum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eu ipsum eget velit ultricies dictum. Nam arcu velit, tincidunt a risus eu, venenatis porta leo. Suspendisse sit amet ligula nisl. Morbi felis justo, dapibus fermentum sodales at, hendrerit id erat.
                            </div>
                        </div>
                    </div>

                    </div>

                </div>
            </section><!-- /#more-pages.section -->

		<footer id="footer-black" class="widefat ">


                <div class="container">





                    <div class="col-xs-12 col-md-4">

                        <div class="footer-logo">

                            <h1 class="site-title">



                                <a href="#"><img src="images/site-logo.png" alt="Traveline" /> <span>Travel<span class="higlight">ine</span></span></a>



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

        <script type="text/javascript" src="/resources/js/event.js"></script>
        
        <script type="text/javascript" src="/resources/js/travelbbs.js"></script>



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