<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
                    <div class="col-xs-12 col-sm-10 no-margin">
                        <div id="main-menu">
                            <nav class="navigation">
                                <ul class="hidden-xs hidden-sm hidden-md">
                                    <li class="menu-item about-us">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="/main/region/"><i class="icon_group"></i> Home</a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li class="active" role="presentation">
                                                <a role="menuitem" tabindex="-1" href="/main/region/">REGION&THEME</a>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="menu-item special-offers">
                                        <a href="/timecapsule/placeList"><i class="icon_ribbon"></i>TIMECAPSULE</a>
                                    </li>
                            
                                    <li class="menu-item shortcodes">
                                        <a href="/panorama/google/"><i class="icon_map"></i>PANORAMA</a>
                                    </li>
                                    
                                    									<li class="menu-item destinations">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon_globe_alt"></i> CHAT</a>
                                          <ul class="dropdown-menu" role="menu">
                                            <li class="active" role="presentation">
                                                <a role="menuitem" tabindex="-1" href="/chat/uroom">USER</a>
                                                <a role="menuitem" tabindex="-1" href="/chat/groom">GUIDE</a>
                                            </li>
                                        </ul>
                                    </li>
                                    
                                    
                                    <li class="menu-item our-travel">
                                        <a href="/bbs/notice/list"><i class="icon_pin"></i>NOTICE</a>
                                    </li>


                                </ul>

                                <select class="top-drop-menu nav visible-sm visible-xs visible-md">
                                    <optgroup label="HOME">
                                        <option value="/main/region/">
                                            8BIT TRAVEL
                                        </option>
                                        <option value="/main/region/">
                                            REGION&THEME
                                        </option>
                                    </optgroup>

                                    <optgroup label="TIMECAPSULE">
                                        <option value="/timecapsule/placeList">
                                            TIMECAPSULE
                                        </option>
                                    </optgroup>

                                    <optgroup label="PANORAMA">
                                        <option value="/panorama/google/">
                                            PANORAMA
                                        </option>
                                    </optgroup>  

                                    <optgroup label="CHAT">
                                        <option value="/chat/uroom">
                                            USER
                                        </option>
                                        <option value="/chat/groom">
                                            GUIDE
                                        </option>
                                    </optgroup>

                                    <optgroup label="NOTICE">
                                        <option value="/bbs/notice/list">
                                            NOTICE
                                        </option>
                                    </optgroup>
                                    
                                    <optgroup label="USER">
    <sec:authorize ifAnyGranted="ROLE_ANONYMOUS">
                                        <option value="/user/login">
                                            LOGIN
                                        </option>
                                        <option value="/user/join">
                                            JOIN
                                        </option>                                        
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_ANONYMOUS">
                                        <option value="/user/logout">
                                            LOGOUT
                                        </option>
    </sec:authorize>
                                    </optgroup>
                                    
                                </select>

                            </nav>



                        </div><!-- /#main-menu -->

                    </div>