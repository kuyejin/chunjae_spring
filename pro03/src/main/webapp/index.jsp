
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="/pro03_war" />
<!DOCTYPE html>
<!DOCTYPE html>

<!--
// WEBSITE: https://themefisher.com
// TWITTER: https://twitter.com/themefisher
// FACEBOOK: https://www.facebook.com/themefisher
// GITHUB: https://github.com/themefisher/
-->

<html lang="zxx">

<head>
    <meta charset="utf-8">
    <title>티스푼 메인 페이지</title>

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- theme meta -->
    <meta name="theme-name" content="kross-bulma" />

    <!-- ** Plugins Needed for the Project ** -->
    <!-- bulma -->
    <link rel="stylesheet" href="${path1}/resources/theme/plugins/bulma/bulma.min.css">
    <!-- slick slider -->
    <link rel="stylesheet" href="${path1}/resources/theme/plugins/slick/slick.css">
    <!-- themefy-icon -->
    <link rel="stylesheet" href="${path1}/resources/theme/plugins/themify-icons/themify-icons.css">

    <!-- Main Stylesheet -->
    <link href="${path1}/resources/theme/css/style.css" rel="stylesheet">

    <!--Favicon-->
    <link rel="shortcut icon" href="${path1}/resources/theme/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="${path1}/resources/theme/images/favicon.ico" type="image/x-icon">

</head>

<body>


<header>
    <nav class="navbar is-dark is-fixed-top" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="${path1}/">
                <img src="images/logo.png" width="112" height="28">
            </a>

            <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navigation">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div id="navigation" class="navbar-menu">
            <div class="navbar-end">
                <a href="${path1}/board/list.do" class="navbar-item">일반게시판</a>
                <a href="${path1}/free/list.do" class="navbar-item">자유게시판</a>
                <a href="${path1}/board/list.do" class="navbar-item">blog</a>
                <%-- 로그인 안했을 때--%>
                <c:if test="${empty sid}">
                    <a href="${path1 }/member/login.do" class="navbar-item">로그인</a>
                    <a href="${path1 }/member/term.do" class="navbar-item">회원가입</a>
                </c:if>


                <%-- 회원으로 로그인 했을 때 --%>
                <c:if test="${!(sid.equals('admin')) && !empty sid}">
                    <%--<p>${sid } 님  </p>--%>
                    <a href="${path1 }/member/mypage.do" class="navbar-item">mypage </a>
                    <a href="${path1 }/member/logout.do" class="navbar-item">logout </a>
                </c:if>

                <%--관리자 일때--%>
                <c:if test="${sid.equals('admin') && !empty sid}">
                    <%--<p>${sid } 님</p>--%>
                    <a href="${path1 }/member/adminpage.do" class="navbar-item">관리자페이지</a>
                    <a href="${path1 }/member/logout.do" class="navbar-item"> logout</a>
                </c:if>

            </div>
        </div>
    </nav>
</header>

<!-- hero area -->
<section class="hero-area has-background-primary" id="parallax" >

    <%--<div class="container">--%>
        <div class="columns">
            <img src="${path1 }/resources/images/new_main.png">

            <%--<div class="column is-11-desktop is-offset-1-desktop">
                <h1 class="has-text-white font-tertiary"> test <br> test <br> test</h1>
            </div>

            <!-- social icon -->
            <div class="list list-hero-social">
                <a class="list-item has-text-white" href="#"><i class="ti-facebook"></i></a>
                <a class="list-item has-text-white" href="#"><i class="ti-instagram"></i></a>
                <a class="list-item has-text-white" href="#"><i class="ti-dribbble"></i></a>
                <a class="list-item has-text-white" href="#"><i class="ti-twitter"></i></a>
            </div>
            <!-- /social icon -->--%>
        </div>
    <%--</div>--%>


</section>
<!-- /hero area -->

<!-- about -->
<section class="section">
    <div class="container">
        <div class="columns is-centered">
            <div class="column is-four-fifths-desktop has-text-centered">
                <p class="font-secondary paragraph-lg has-text-dark">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
                    do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                    in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                <a href="about.html" class="button is-link">know more</a>
            </div>
        </div>
    </div>
</section>
<!-- /about -->

<!-- skills -->
<section class="section">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title">Skills</h2>
        </div>
        <div class="columns is-multiline">
            <div class="column is-3-desktop is-6-tablet">
                <div class="card shadow has-text-centered">
                    <div class="is-relative rounded-top progress-wrapper" data-color="#fdb157">
                        <div class="wave" data-progress="90%"></div>
                    </div>
                    <div class="card-content has-background-white">
                        <h4>Web Design (90%)</h4>
                    </div>
                </div>
            </div>
            <div class="column is-3-desktop is-6-tablet">
                <div class="card shadow has-text-centered">
                    <div class="is-relative rounded-top progress-wrapper" data-color="#9473e6">
                        <div class="wave" data-progress="60%"></div>
                    </div>
                    <div class="card-content has-background-white">
                        <h4>Logo Design (60%)</h4>
                    </div>
                </div>
            </div>
            <div class="column is-3-desktop is-6-tablet">
                <div class="card shadow has-text-centered">
                    <div class="is-relative rounded-top progress-wrapper" data-color="#bdecf6">
                        <div class="wave" data-progress="80%"></div>
                    </div>
                    <div class="card-content has-background-white">
                        <h4>After Effects (80%)</h4>
                    </div>
                </div>
            </div>
            <div class="column is-3-desktop is-6-tablet">
                <div class="card shadow has-text-centered">
                    <div class="is-relative rounded-top progress-wrapper" data-color="#ffbcaa">
                        <div class="wave" data-progress="70%"></div>
                    </div>
                    <div class="card-content has-background-white">
                        <h4>Web App (70%)</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /skills -->

<!-- experience -->
<section class="section">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title">Experience</h2>
        </div>
        <div class="columns">
            <div class="column has-text-centered">
                <img src="images/experience/icon-1.png" alt="icon">
                <p class="mb-0">Jan 2007 - Feb 2009</p>
                <h4>Junior UX Designer</h4>
                <h6 class="has-text-light">WEBEX</h6>
            </div>
            <div class="column has-text-centered">
                <img src="images/experience/icon-2.png" alt="icon">
                <p class="mb-0">Mar 2009 - Aug 2014</p>
                <h4>UX & UI Designer</h4>
                <h6 class="has-text-light">AUGMEDIX</h6>
            </div>
            <div class="column has-text-centered">
                <img src="images/experience/icon-3.png" alt="icon">
                <p class="mb-0">Sep 2014 - Present</p>
                <h4>Senior UI Designer</h4>
                <h6 class="has-text-light">THEMEFISHER</h6>
            </div>
        </div>
    </div>
</section>
<!-- ./experience -->

<!-- education -->
<section class="section is-relative">
    <!-- bg image -->
    <img class="image edu-bg-image" src="images/backgrounds/education-bg.png" alt="bg-image">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title">Education</h2>
        </div>
        <div class="columns is-multiline">
            <div class="column is-6 mb-80">
                <div class="media">
                    <div class="media-left">
                        <i class="ti-medall icon icon-light icon-bg has-background-white shadow is-rounded is-block"></i>
                    </div>
                    <div class="media-content">
                        <p class="has-text-dark mb-1">2006</p>
                        <h4>Marters in UX Design</h4>
                        <p class="mb-0 has-text-light">Masassusets Institute of Technology</p>
                    </div>
                </div>
            </div>
            <div class="column is-6 mb-80">
                <div class="media">
                    <div class="media-left">
                        <i class="ti-medall icon icon-light icon-bg has-background-white shadow is-rounded is-block"></i>
                    </div>
                    <div class="media-content">
                        <p class="has-text-dark mb-1">2004</p>
                        <h4>Honours in Fine Arts</h4>
                        <p class="mb-0 has-text-light">Harvard University</p>
                    </div>
                </div>
            </div>
            <div class="column is-6 mb-80">
                <div class="media">
                    <div class="media-left">
                        <i class="ti-medall icon icon-light icon-bg has-background-white shadow is-rounded is-block"></i>
                    </div>
                    <div class="media-content">
                        <p class="has-text-dark mb-1">2000</p>
                        <h4>Higher Secondary Certificat</h4>
                        <p class="mb-0 has-text-light">Cardiff School</p>
                    </div>
                </div>
            </div>
            <div class="column is-6 mb-80">
                <div class="media">
                    <div class="media-left">
                        <i class="ti-medall icon icon-light icon-bg has-background-white shadow is-rounded is-block"></i>
                    </div>
                    <div class="media-content">
                        <p class="has-text-dark mb-1">1998</p>
                        <h4>Secondary School Certificate</h4>
                        <p class="mb-0 has-text-light">Cardiff School</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /education -->

<!-- services -->
<section class="section">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title">Services</h2>
        </div>
        <div class="columns is-multiline">
            <div class="column">
                <div class="card hover-shadow shadow">
                    <div class="card-content has-text-centered">
                        <i class="ti-palette icon mb-10 is-inline-block"></i>
                        <h4 class="mb-20">UI Design</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                            dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card active-bg-primary hover-shadow shadow">
                    <div class="card-content has-text-centered">
                        <i class="ti-vector icon mb-10 is-inline-block"></i>
                        <h4 class="mb-20">UX Design</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                            dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card hover-shadow shadow">
                    <div class="card-content has-text-centered">
                        <i class="ti-panel icon mb-10 is-inline-block"></i>
                        <h4 class="mb-20">Interaction Design</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                            dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /services -->

<!-- portfolio -->
<section class="section">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title">Portfolio</h2>
        </div>
        <div class="columns is-multiline shuffle-wrapper">
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-1.png" alt="portfolio-image" class="image is-full">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-small is-light" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-2.png" alt="portfolio-image" class="image is-full">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-small is-light" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-3.png" alt="portfolio-image" class="image is-full">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-small is-light" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-4.png" alt="portfolio-image" class="image is-full">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-small is-light" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4-desktop is-6-tablet mb-20 shuffle-item">
                <div class="is-relative hover-wrapper">
                    <img src="images/portfolio/item-5.png" alt="portfolio-image" class="image is-full">
                    <div class="hover-overlay">
                        <div class="hover-content">
                            <a class="button is-small is-light" href="project-single.html">view project</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /portfolio -->

<!-- testimonial -->
<section class="section has-background-primary is-relative testimonial-bg-shapes">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title has-text-white">Testimonials</h2>
        </div>
        <div class="columns is-centered">
            <div class="column is-10 testimonial-slider">
                <!-- slider-item -->
                <div class="has-text-centered testimonial-content">
                    <i class="ti-quote-right has-text-white icon mb-20 is-inline-block"></i>
                    <p class="has-text-white mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <strong>quis nostrud exercitation
                            ullamco laboris nisi ut aliquip ex ea commodo consequat.</strong> Duis aute irure dolor in reprehenderit
                        in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                    <img class="image is-rounded is-inline-block mb-20" src="images/testimonial/client-1.png"
                         alt="client-image">
                    <h4 class="has-text-white">Jesica Gomez</h4>
                    <h6 class="has-text-light mb-20">CEO, Funder</h6>
                </div>
                <!-- slider-item -->
                <div class="has-text-centered testimonial-content">
                    <i class="ti-quote-right has-text-white icon mb-4 d-inline-block"></i>
                    <p class="has-text-white mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <strong>quis nostrud exercitation
                            ullamco
                            laboris nisi ut aliquip ex ea commodo consequat.</strong> Duis aute irure dolor in reprehenderit in
                        voluptate velit
                        esse cillum dolore eu fugiat nulla pariatur.</p>
                    <img class="image is-rounded is-block" src="images/testimonial/client-1.png"
                         alt="client-image">
                    <h4 class="has-text-white">Jesica Gomez</h4>
                    <h6 class="has-text-light mb-4">CEO, Funder</h6>
                </div>
                <!-- slider-item -->
                <div class="has-text-centered testimonial-content">
                    <i class="ti-quote-right has-text-white icon mb-4 d-inline-block"></i>
                    <p class="has-text-white mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <strong>quis nostrud exercitation
                            ullamco
                            laboris nisi ut aliquip ex ea commodo consequat.</strong> Duis aute irure dolor in reprehenderit in
                        voluptate velit
                        esse cillum dolore eu fugiat nulla pariatur.</p>
                    <img class="image is-rounded is-block" src="images/testimonial/client-1.png"
                         alt="client-image">
                    <h4 class="has-text-white">Jesica Gomez</h4>
                    <h6 class="has-text-light mb-4">CEO, Funder</h6>
                </div>
            </div>
        </div>
    </div>
    <!-- bg shapes -->
    <img src="images/backgrounds/map.png" alt="map" class="image bg-map">
    <img src="images/illustrations/dots-group-v.png" alt="bg-shape" class="image bg-shape-1">
    <img src="images/illustrations/leaf-orange.png" alt="bg-shape" class="image bg-shape-2">
    <img src="images/illustrations/dots-group-sm.png" alt="bg-shape" class="image bg-shape-3">
    <img src="images/illustrations/leaf-pink-round.png" alt="bg-shape" class="image bg-shape-4">
    <img src="images/illustrations/leaf-cyan.png" alt="bg-shape" class="image bg-shape-5">
</section>
<!-- /testimonial -->

<!-- client logo slider -->
<section class="section pb-0">
    <div class="container">
        <div class="client-logo-slider is-flex align-items-center">
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-1.png" alt="client-logo"></a>
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-2.png" alt="client-logo"></a>
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-3.png" alt="client-logo"></a>
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-4.png" alt="client-logo"></a>
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-5.png" alt="client-logo"></a>
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-1.png" alt="client-logo"></a>
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-2.png" alt="client-logo"></a>
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-3.png" alt="client-logo"></a>
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-4.png" alt="client-logo"></a>
            <a href="#" class="has-text-centered is-block outline-0"><img class="d-unset image"
                                                                          src="images/clients-logo/client-logo-5.png" alt="client-logo"></a>
        </div>
    </div>
</section>
<!-- /client logo slider -->

<!-- blog -->
<section class="section">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title">Blogs</h2>
        </div>
        <div class="columns is-multiline">
            <div class="column is-4-desktop is-6-tablet">
                <article class="card shadow">
                    <figure class="image is-4by3">
                        <img src="images/blog/post-3.jpg" alt="Placeholder image">
                    </figure>
                    <div class="card-content">
                        <h4 class="mb-10"><a class="has-text-dark" href="blog-single.html">Amazon increase income 1.5 Million</a>
                        </h4>
                        <p class="mb-10">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                            incididunt ut labore et
                            dolore magna aliqua.</p>
                        <a href="blog-single.html" class="button is-extra-small is-primary">Read More</a>
                    </div>
                </article>
            </div>
            <div class="column is-4-desktop is-6-tablet">
                <article class="card shadow">
                    <figure class="image is-4by3">
                        <img src="images/blog/post-4.jpg" alt="Placeholder image">
                    </figure>
                    <div class="card-content">
                        <h4 class="mb-10"><a class="has-text-dark" href="blog-single.html">Amazon increase income 1.5 Million</a>
                        </h4>
                        <p class="mb-10">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                            incididunt ut labore et
                            dolore magna aliqua.</p>
                        <a href="blog-single.html" class="button is-extra-small is-primary">Read More</a>
                    </div>
                </article>
            </div>
            <div class="column is-4-desktop is-6-tablet">
                <article class="card shadow">
                    <figure class="image is-4by3">
                        <img src="images/blog/post-6.jpg" alt="Placeholder image">
                    </figure>
                    <div class="card-content">
                        <h4 class="mb-10"><a class="has-text-dark" href="blog-single.html">Amazon increase income 1.5 Million</a>
                        </h4>
                        <p class="mb-10">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                            incididunt ut labore et
                            dolore magna aliqua.</p>
                        <a href="blog-single.html" class="button is-extra-small is-primary">Read More</a>
                    </div>
                </article>
            </div>
        </div>
    </div>
</section>
<!-- /blog -->

<!-- contact -->
<section class="section section-on-footer" data-background="images/backgrounds/bg-dots.png">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title">Contact Info</h2>
        </div>
        <div class="columns is-centered">
            <div class="column is-8-desktop">
                <div class="has-background-white card-content has-text-centered shadow-down">
                    <h4 class="mb-80">Contact Form</h4>
                    <form action="#" class="columns is-multiline is-centered">
                        <div class="column is-6-tablet">
                            <input type="text" id="name" name="name" placeholder="Full Name" class="input">
                        </div>
                        <div class="column is-6-tablet">
                            <input type="email" id="email" name="email" placeholder="Email Address" class="input">
                        </div>
                        <div class="column is-full">
              <textarea name="message" id="message" class="input"
                        placeholder="Type Message Here"></textarea>
                        </div>
                        <div class="column is-6-tablet is-10">
                            <button class="button is-primary is-fullwidth">send</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /contact -->

<!-- footer -->
<footer class="has-background-dark footer-section">
    <div class="section">
        <div class="container">
            <div class="columns">
                <div class="column is-4-tablet">
                    <h5 class="has-text-light">Email</h5>
                    <p class="has-text-white paragraph-lg font-secondary">steve.fruits@email.com</p>
                </div>
                <div class="column is-4-tablet">
                    <h5 class="has-text-light">Phone</h5>
                    <p class="has-text-white paragraph-lg font-secondary">+880 2544 658 256</p>
                </div>
                <div class="column is-4-tablet">
                    <h5 class="has-text-light">Address</h5>
                    <p class="has-text-white paragraph-lg font-secondary">125/A, CA Commercial Area, California, USA</p>
                </div>
            </div>
        </div>
    </div>
    <div class="section is-small has-text-centered has-border-top is-border-dark">
        <p class="has-text-light">Copyright ©
            <script>
                var CurrentYear = new Date().getFullYear()
                document.write(CurrentYear)
            </script> a theme by <a href="themefisher.com">themefisher.com</a></p>
    </div>
</footer>
<!-- /footer -->

<!-- jQuery -->
<script src="${path1}/resources/theme/plugins/jQuery/jquery.min.js"></script>
<!-- slick slider -->
<script src="${path1}/resources/theme/plugins/slick/slick.min.js"></script>
<!-- filter -->
<script src="${path1}/resources/theme/plugins/shuffle/shuffle.min.js"></script>

<!-- Main Script -->
<script src="${path1}/resources/theme/js/script.js"></script>

</body>
</html>
