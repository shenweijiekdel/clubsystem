<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html;charset=UTF-8" language="java"
		 pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Ringster a Sports Category Flat Bootstrap Responsive Website Template | Gallery :: w3layouts</title>
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
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/foreIndex.html" style="font-family: '微软雅黑'">首页</a></li>
						<li><a href="/foreUserInfo.html" style="font-family: '微软雅黑'">个人信息</a></li>
						<li><a href="/foreAlbums.html" class="active" style="font-family: '微软雅黑'">图库</a></li>
						<li><a href="/foreBlog.html"  style="font-family: '微软雅黑'">留言板</a></li>


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
				<h2>相册 -> ${albumName}</h2>
			</div> 
		</div> 
	</div>		
	<!-- //banner -->
	<!-- gallery -->
	<div class="gallery agileits">
		<div class="container">
			<div class="w3ls-title">
				<h3 >照片</h3>
			</div>   


				<div class="gallery-grids-row">
					<c:if test="${empty photos}" var="flag">
						<h2 style="text-align: center">现在还没有任何照片</h2>
					</c:if>
					<c:if test="${!flag}">
					<c:forEach items="${photos}" var="photo">
						<div id="jzBox" class="jzBox">
							<div id="jzBoxNextBig"></div>
							<div id="jzBoxPrevBig"></div>
							<img src="/images/album/${photo.src}" id="jzBoxTargetImg" alt=""/>
							<div id="jzBoxBottom">
								<div id="jzBoxTitle"></div>
								<div id="jzBoxMoreItems">
									<div id="jzBoxCounter"></div>
									<i class="arrow-left" id="jzBoxPrev"></i>
									<i class="arrow-right" id="jzBoxNext"></i>
								</div>
								<i class="close" id="jzBoxClose"></i>
							</div>
						</div>
					<div class="col-md-4 gallery-grid">
						<div class="wpf-demo-4">
							<a href="/images/album/${photo.src}" class="jzBoxLink item-hover" title="${photo.src}">
								<img src="/images/album/${photo.src}" alt=" " class="img-responsive" />
								<div class="view-caption">
									<p>查看大图</p>
								</div>
							</a>
						</div>
					</div>

					</c:forEach>
					</c:if>
					<div class="clearfix"> </div>
				</div>

			<script src="/fore/js/jzBox.js"></script>
		</div>
	</div>
	<!-- //gallery --> 
	<!-- map -->

	<!-- //map -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<h3><a href="/foreIndex.html">拳击俱乐部</a></h3>
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