<%--
  Created by IntelliJ IDEA.
  User: FSWJ
  Date: 2017/12/6
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ringster a Sports Category Flat Bootstrap Responsive Website Template | Single Page :: w3layouts</title>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Ringster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Custom Theme files -->
    <link href="/fore/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="/fore/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- js -->
    <script src="/fore/js/jquery-1.11.1.min.js"></script>
    <script src="/fore/js/SmoothScroll.min.js"></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href='//fonts.googleapis.com/css?family=Baumans' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Roboto:100,100italic,300,300italic,400,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- //web-fonts -->
    <!-- start-smooth-scrolling -->
    <script type="text/javascript" src="/fore/js/move-top.js"></script>
    <script type="text/javascript" src="/fore/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();

                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
</head>
<body>
<!-- header -->
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1><a  href="index.html">Ringster</a></h1>
            </div>
            <!-- top-nav -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="gallery.html">Gallery</a></li>
                    <li><a href="codes.html">Short Codes</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                </ul>
                <div class="clearfix"> </div>
            </div>
        </nav>
    </div>
</div>
<!-- //header -->
<!-- banner -->
<div class="banner about-banner">
    <div class="container">
        <div class="banner-text">
            <h2>Detailed View</h2>
        </div>
    </div>
</div>
<!-- //banner -->
<!-- single-page -->
<div class="blog single-page">
    <div class="container">
        <div class="blog-info">
            <div class="blog-img">
                <img src="images/s1.jpg" alt=" " class="img-responsive" />
            </div>
            <div class="blog-text">
                <h4>Integer interdum eros vitae sem ultrices sed eleifend tellus tincidunt</h4>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                    nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
                    reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                    pariatur,Duis aute irure dolor in quis nostrud exercitation ullamco
                    reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                    pariatur</p>
                <div class="article-links">
                    <ul>
                        <li><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i><span>June 30, 2016</span></li>
                        <li><a href="#"><i class="glyphicon glyphicon-user" aria-hidden="true"></i><span>Admin</span></a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><span>No comments</span></a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-share" aria-hidden="true"></i><span>View posts</span></a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-link" aria-hidden="true"></i><span>Permalink</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- admin-text -->
        <div class="admin-text">
            <h5>Written By Admin</h5>
            <div class="admin-text-left">
                <a href="#"><img src="images/icon1.png" alt=""/></a>
            </div>
            <div class="admin-text-right">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <span>View all posts by:<a href="#"> Admin </a></span>
            </div>
            <div class="clearfix"> </div>
        </div>
        <!-- //admin-text -->
        <!-- related-posts -->
        <div class="row related-posts">
            <h3>Related Posts</h3>
            <div class="col-xs-3 col-md-3 related-grids">
                <a href="single.html" class="thumbnail">
                    <img src="images/g1.jpg" alt=""/>
                </a>
                <h5><a href="single.html">Lorem Ipsum is simply</a></h5>
            </div>
            <div class="col-xs-3 col-md-3 related-grids">
                <a href="single.html" class="thumbnail">
                    <img src="images/g2.jpg" alt=""/>
                </a>
                <h5><a href="single.html">Lorem Ipsum is simply</a></h5>
            </div>
            <div class="col-xs-3 col-md-3 related-grids">
                <a href="single.html" class="thumbnail">
                    <img src="images/g3.jpg" alt=""/>
                </a>
                <h5><a href="single.html">Lorem Ipsum is simply</a></h5>
            </div>
            <div class="col-xs-3 col-md-3 related-grids">
                <a href="single.html" class="thumbnail">
                    <img src="images/g4.jpg" alt=""/>
                </a>
                <h5><a href="single.html">Lorem Ipsum is simply</a></h5>
            </div>
        </div>
        <!-- //related-posts -->
        <!-- comments -->
        <div class="comment-grid-top">
            <h3>Responses</h3>
            <div class="comments-top-top">
                <div class="top-comment-left">
                    <a href="#"><img class="img-responsive" src="images/icon1.png" alt=""></a>
                </div>
                <div class="top-comment-right">
                    <ul>
                        <li><span class="left-at"><a href="#">Admin</a></span></li>
                        <li><span class="right-at">July 12, 2016 at 10.30am</span></li>
                        <li><a class="reply" href="#">Reply</a></li>
                    </ul>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="comments-top-top top-grid-comment">
                <div class="top-comment-left">
                    <a href="#"><img class="img-responsive" src="images/icon1.png" alt=""></a>
                </div>
                <div class="top-comment-right">
                    <ul>
                        <li><span class="left-at"><a href="#">Admin</a></span></li>
                        <li><span class="right-at">June 15, 2016 at 8.30pm</span></li>
                        <li><a class="reply" href="#">Reply</a></li>
                    </ul>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less </p>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //comments -->
        <div class="article-commentbox">
            <h3>Leave a comment</h3>
            <div class="table-form">
                <form action="#" method="post">
                    <input type="text" name="Name" placeholder="Name" required="">
                    <input class="email" name="Email" type="text" placeholder="Email" required="">
                    <input type="text" name="Number" placeholder="Mobile Number" required="">
                    <textarea name="Message" placeholder="Message" required=""></textarea>
                    <input type="submit" value="SUBMIT">
                </form>
            </div>
        </div>
    </div>
</div>
<!-- //single-page -->
<!-- map -->
<div class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.9503398796587!2d-73.9940307!3d40.719109700000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a27e2f24131%3A0x64ffc98d24069f02!2sCANADA!5e0!3m2!1sen!2sin!4v1441710758555"></iframe>
    <div class="address agileits">
        <div class="w3ls-title">
            <h3>GET IN TOUCH</h3>
        </div>
        <p>Broome St, NY 10002, Canada. </p>
        <p>Telephone : +00 111 222 3333</p>
        <p>FAX : +1 888 888 4444</p>
        <p>Email : <a href="mailto:example@mail.com">mail@example.com</a></p>
        <ul class="social-icons">
            <li>Follow Us :</li>
            <li><a href="#"> </a></li>
            <li><a href="#" class="fb"> </a></li>
            <li><a href="#" class="in"> </a></li>
            <li><a href="#" class="dott"> </a></li>
        </ul>
    </div>
</div>
<!-- //map -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <h3><a href="index.html">Ringster</a></h3>
        <p>© 2016 Ringster . All rights reserved | Design by <a href="http://w3layouts.com">W3layouts.</a></p>
    </div>
</div>
<!-- //footer -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
    $(document).ready(function() {

        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/fore/js/bootstrap.js"></script>
</body>
</html>
