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
<link href="fore/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="fore/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="fore/js/jquery-1.11.1.min.js"></script>
<script src="fore/js/SmoothScroll.min.js"></script>
<!-- //js -->
<!-- web-fonts --> 
<link href='//fonts.googleapis.com/css?family=Baumans' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:100,100italic,300,300italic,400,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- //web-fonts -->
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="fore/js/move-top.js"></script>
<script type="text/javascript" src="fore/js/easing.js"></script>
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
					<h1><a  href="index.index.jsp">Ringster</a></h1>
				</div>
				<!-- top-nav -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/foreIndex.html">首页</a></li>
						<li><a href="/foreUserInfo.html">个人信息</a></li>
						<li><a href="/foreAlbums.html"  class="active">图库</a></li>
						<li><a href="/foreBlog.html">留言板</a></li>

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
				<h2>Latest Photos</h2>
			</div> 
		</div> 
	</div>		
	<!-- //banner -->
	<!-- gallery -->
	<div class="gallery agileits">
		<div class="container">
			<div class="w3ls-title">
				<h3>相册</h3>
			</div>   
			<div id="jzBox" class="jzBox">
				<div id="jzBoxNextBig"></div>
				<div id="jzBoxPrevBig"></div>
				<img src="#" id="jzBoxTargetImg" alt=""/>
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

				<div class="gallery-grids-row">
					<c:forEach items="${albums}" var="album">
					<div class="col-md-4 gallery-grid">

						<div class="wpf-demo-4">
							<a href="/forePhotos.html?albumId=${album.id}" class="jzBoxLink item-hover" title="Trendy Furnish">
								<img src="images/g1.jpg" alt=" " class="img-responsive" />
								<div class="view-caption">
									<p>查看相册</p>
								</div>
							</a>
							<h3>${album.name}</h3>
						</div>


					</div>
					</c:forEach>
					<div class="clearfix"> </div>
				</div>


			<script src="js/jzBox.js"></script>
		</div>
	</div>
	<!-- //gallery --> 
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
			<h3><a href="index.index.jsp">Ringster</a></h3>
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
    <script src="js/bootstrap.js"></script>
</body>
</html>