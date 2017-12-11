<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html;charset=UTF-8" language="java"
		 pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Ringster a Sports Category Flat Bootstrap Responsive Website Template | Blog :: w3layouts</title>
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
	<style>
		*{
			font-family:"微软雅黑";
		}
	</style>
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
					<h1><a  href="/foreIndex.html">拳击俱乐部</a></h1>
				</div>
				<!-- top-nav -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right" >
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
				<h2>留言板</h2>

			</div>

		</div>

	</div>		
	<!-- //banner -->
	<!-- blog -->
	<div class="blog agileits">
		<div class="container">
			<div class="w3ls-title">
				<h3>全部留言</h3>

			</div>
			<div style="text-align: right">

			<a href="/foreAddMessageJsp.html" class="btn btn-default">添加留言</a>
			</div>



			<div class="blog-info">
				<c:if test="${empty messages}" var="flag">
					<div align="center">

					<h3>目前没有任何留言</h3>
					</div>
				</c:if>
				<c:if test="${!flag}">


				<c:forEach items="${messages}" var="message">
				<div class="col-md-6 blog-grids">
					<div class="blog-grids-left">
						<a href="/foreSingle.html?messageId=${message.messageId}">
							<img src="../../images/avatar/${message.member.avatar}" class="img-responsive" alt=""/>
						</a>
						<div class="blog-w3text">
							<ul>
								<%--<li><a href="#"><span class="glyphicon glyphicon-thumbs-up"></span><br><h6>30K Likes</h6></a></li>--%>
								<li><a href="#"><span class="glyphicon glyphicon-comment"></span><br><h6>${empty message.commentList ? 0:message.commentList.size()}评论</h6> </a></li>
								<%--<li><a href="#"><span class="glyphicon glyphicon-share"></span><br><h6>8K Shares</h6> </a></li>--%>
							</ul>
						</div>
					</div>
					<div class="blog-grids-right">
						<%--<h4><a href="single.html">标题</a></h4>--%>
						<p class="snglp">用户 : <a href="#">${message.member.memberName}</a> &nbsp;&nbsp;on  <span>${message.time}</span></p>
						<p>${message.content.length() > 10?message.content.substring(0,10):message.content}</p>
						<a href="/foreSingle.html?messageId=${message.messageId}" class="more">查看更多 <span class="glyphicon glyphicon-menu-right"></span> </a>
					</div>	
					<div class="clearfix"> </div>			
				</div>

				</c:forEach>
				</c:if>
				<div class="clearfix"> </div>

			</div>

		</div>
	</div>
	<!-- //blog -->  
	<!-- map -->
	<!-- //map -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<h1><a  href="/foreIndex.html">拳击俱乐部</a></h1>

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
