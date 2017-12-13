<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <style>
        *{
            font-family: "微软雅黑";
        }
    </style>
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
                <h1><a  href="/foreIndex.html">拳击俱乐部</a></h1>
            </div>
            <!-- top-nav -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/foreIndex.html" style="font-family: '微软雅黑'">首页</a></li>
                    <li><a href="/foreUserInfo.html" style="font-family: '微软雅黑'">个人信息</a></li>
                    <li><a href="/foreAlbums.html" style="font-family: '微软雅黑'">图库</a></li>
                    <li><a href="/foreBlog.html"  class="active" style="font-family: '微软雅黑'">留言板</a></li>

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
            <h2>留言板 -> 查看留言</h2>
        </div>
    </div>
</div>
<!-- //banner -->
<!-- single-page -->
<div class="blog single-page">
    <div class="container">
        <div class="blog-info">
            <%--<div class="blog-img">
                <img src="../../images/s1.jpg" alt=" " class="img-responsive" />
            </div>--%>
            <div class="blog-text">
                <%--<h4>Integer interdum eros vitae sem ultrices sed eleifend tellus tincidunt</h4>--%>
                <p>${message.content}</p>
                <div class="article-links">
                    <ul>
                        <li><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i><span>${message.time}</span></li>
                        <li><a href="#"><i class="glyphicon glyphicon-user" aria-hidden="true"></i><span>${message.member.memberName}</span></a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><span>${empty message.commentList ? 0:message.commentList.size()}</span></a></li>
                        <%--<li><a href="#"><i class="glyphicon glyphicon-share" aria-hidden="true"></i><span>View posts</span></a></li>--%>
                        <%--<li><a href="#"><i class="glyphicon glyphicon-link" aria-hidden="true"></i><span>Permalink</span></a></li>--%>
                    </ul>
                </div>
            </div>
        </div>
        <!-- admin-text -->
        <div class="admin-text">
            <h5>${message.member.memberName}</h5>
            <div class="admin-text-left">
                <a href="#"><img src="../../images/avatar/${message.member.avatar}" alt="" style="width: 100px;height: 100px;"/></a>
            </div>
            <%--<div class="admin-text-right">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <span>View all posts by:<a href="#"> Admin </a></span>
            </div>--%>
            <div class="clearfix"> </div>
        </div>
        <!-- //admin-text -->
        <!-- related-posts -->

        <!-- //related-posts -->
        <!-- comments -->
        <div class="comment-grid-top">
            <h3>评论</h3>
            <c:forEach items="${message.commentList}" var="comment">


            <div class="comments-top-top">
                <div class="top-comment-left">
                    <a href="#"><img class="img-responsive" src="../../images/avatar/${comment.member.avatar}" alt=""></a>
                </div>
                <div class="top-comment-right">
                    <ul>
                        <li><span class="left-at"><a href="#">${comment.member.memberName}</a></span></li>
                        <li><span class="right-at">${comment.time}</span></li>
                        <li><a class="reply" href="#">回复</a></li>
                    </ul>
                    <p>${comment.content}</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            </c:forEach>
        </div>
        <!-- //comments -->
        <div class="article-commentbox">
            <h3>回复</h3>
            <div class="table-form">
                <form action="/addComment.html" method="post">

                    <input type="hidden" name="messageId" value="${message.messageId}">
                    <%--<input type="text" name="Name" placeholder="Name" required="">
                    <input class="email" name="Email" type="text" placeholder="Email" required="">
                    <input type="text" name="Number" placeholder="Mobile Number" required="">--%>
                    <textarea name="content" placeholder="评论内容" required=""></textarea>
                    <input type="submit" value="发表评论">
                </form>
            </div>
        </div>
    </div>
</div>
<!-- //single-page -->
<!-- map -->

<!-- //map -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <h3><a href="index.html">拳击俱乐部</a></h3>
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
