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
<title>Ringster a Sports Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Ringster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="/fore/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="/fore/css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="/fore/css/flexslider.css" type="text/css" media="screen" />
<!-- js -->
<script src="/fore/js/jquery-1.11.1.min.js"></script>
<script src="/fore/js/SmoothScroll.min.js"></script>
<script src="/fore/js/jquery.circlechart.js"></script>
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
					<h1><a  href="index.index.jsp">Ringster</a></h1>
				</div>
				<!-- top-nav -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/foreIndex.html" class="active">首页</a></li>
						<li><a href="/foreUserInfo.html" >个人信息</a></li>
						<li><a href="/foreAlbums.html">图库</a></li>
						<li><a href="/foreBlog.html">留言板</a></li>

					</ul>
					<div class="clearfix"> </div>
				</div>
			</nav>
		</div>
	</div>
	<!-- //header -->
	<!-- banner -->
	<div class="banner">		 
		<div class="container"> 
			<div class="banner-text">	
				<h4>Are You</h4>
				<h2>Ringster</h2>
				<h3>Get To Fit</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt lorem sed velit fermentum lobortis. Fusce eu semper lacus, eget placerat mauris. Sed lectus tellus, sodales id elit a, feugiat porttitor nulla. Sed porta magna vitae nisl vulputate lacinia. Morbi malesuada sollicitudin tortor vitae pharetra .</p>
			</div> 
		</div> 
	</div>		
	<!-- //banner -->	
	<!-- skills -->
	<div class="skills agileits">
		<div class="container">
			<div class="w3ls-title">
				<h3>Who we are</h3> 
			</div>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt lorem sed velit fermentum lobortis. Fusce eu semper lacus, eget placerat mauris. Sed lectus tellus, sodales id elit a, feugiat porttitor nulla. Sed porta magna vitae nisl vulputate lacinia. Morbi malesuada sollicitudin tortor, vitae pharetra nunc lacinia eget. Nulla ornare purus nunc, ut dapibus leo sodales adipiscing. Praesent sit amet justo diam. Quisque sagittis egestas sem vitae vestibulum. Quisque nec lacus ornare, volutpat arcu in, lacinia dolor.</p>
			<div class="skills-w3row"> 
				<div class="col-md-4 skills-left">
					<img src="images/img1.jpg" class="img-responsive" alt=""/> 
				</div>
				<div class="col-md-8 skills-right">
					<h4>Why Choose Us</h4>
					<ul>
						<li><div class="demo demo-1" data-percent="65"></div><p>Sed tincidunt</p></li>
						<li><div class="demo demo-2" data-percent="95"></div><p>Lorem sed</p> </li>
						<li><div class="demo demo-3" data-percent="85"></div><p>Consectetur</p> </li>
						<li><div class="demo demo-4" data-percent="72"></div><p>Velitlorem</p> </li>
					</ul>
					<script>
						$('.demo-1').percentcircle();
							$('.demo-2').percentcircle({
							animate : true,
							fillColor: '#e94e02'
						});
							$('.demo-3').percentcircle({
							animate : true,
							fillColor: '#F2B33F'
						});
							$('.demo-4').percentcircle({
							animate : true,
							fillColor: '#79302a'
						});
					</script>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //skills --> 
	<!-- slid -->
	<div class="slid">
		<div class="container">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<h3>Adult Beginner</h3>
							<p>Fusce eu semper lacus, eget placerat mauris. Sed lectus tellus, sodales id elit a, feugiat porttitor nulla. Sed porta magna vitae nisl vulputate lacinia. Morbi malesuada sollicitudin tortor, vitae pharetra nunc lacinia eget. Nulla ornare purus nunc </p>
						</li>
						<li class="slide">
							<h3>Advanced Classes</h3>
							<p>Sed lectus tellus, sodales id elit a, feugiat porttitor nulla. Fusce eu semper lacus, eget placerat mauris. Sed porta magna vitae nisl vulputate lacinia. Morbi malesuada sollicitudin tortor, vitae pharetra nunc lacinia eget. Nulla ornare purus nunc </p>
						</li>
						<li class="slide">
							<h3>Special Classes</h3>
							<p>Fusce eu semper lacus, eget placerat mauris. Sed lectus tellus, sodales id elit a, feugiat porttitor nulla. Sed porta magna vitae nisl vulputate lacinia. Morbi malesuada sollicitudin tortor, vitae pharetra nunc lacinia eget. Nulla ornare purus nunc </p>
						</li>
					</ul>
				</div> 
			</section>
			<!-- FlexSlider -->
			<script defer src="/fore/js/jquery.flexslider.js"></script>
			<script type="text/javascript">
			$(window).load(function() {
			  $('.flexslider').flexslider({
				animation: "slide",
				controlsContainer: $(".custom-controls-container"),
				customDirectionNav: $(".custom-navigation a")
			  });
			});
			</script>
			<!-- //FlexSlider --> 
		</div>
	</div>
	<!-- //slid --> 
	<!-- features -->
	<div class="features agileits">
		<div class="container">
			<div class="w3ls-title">
				<h3>OUR FEATURES</h3> 
			</div> 
			<div class="features-w3ls-row">
				<div class="col-md-4 features-grid">
					<span class="glyphicon glyphicon-home effect-1" aria-hidden="true"></span>
					<h5>Cum soluta nobis</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rutrum iaculis enim, non convallis felis mattis at</p>
				</div>
				<div class="col-md-4 features-grid">
					<span class="glyphicon glyphicon-list-alt effect-1" aria-hidden="true"></span>
					<h5>Soluta vum nobis</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rutrum iaculis enim, non convallis felis mattis at</p>
				</div>
				<div class="col-md-4 features-grid">
					<span class="glyphicon glyphicon-tree-deciduous effect-1" aria-hidden="true"></span>
					<h5>Nobis cum soluta</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rutrum iaculis enim, non convallis felis mattis at</p>
				</div>
				<div class="clearfix"> </div>
			</div>   
		</div>
	</div>
	<!-- //features --> 
	<!-- subscribe -->
	<div class="subscribe">
		<div class="container">
			<div class="subscribe-info">
				<h4>SIGN UP FOR NEWSLETTER</h4>
				<p><span>Contact us </span>Lorem ipsum dolor sit amet consectetur, <br> adipiscing elit Cras rutrum iaculis enim, non convallis felis mattis convallis.</p>
				<form action="#" method="post">
					<input type="text" name="Email" placeholder="Your Email" required="">
					<input type="submit" value="Subscribe">
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
	</div>
	<!-- //subscribe --> 
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
    <script src="/fore/js/bootstrap.js"></script>
</body>
</html>
