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
	<style>
		*{
			font-family:"微软雅黑";
		}
	</style>
<!-- //end-smooth-scrolling -->	
</head>
<body>
<% int i=1;%>
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
						<li><a href="/foreIndex.html" class="active" style="font-family: '微软雅黑'">首页</a></li>
						<li><a href="/foreUserInfo.html" style="font-family: '微软雅黑'">个人信息</a></li>
						<li><a href="/foreAlbums.html" style="font-family: '微软雅黑'">图库</a></li>
						<li><a href="/foreBlog.html"  style="font-family: '微软雅黑'">留言板</a></li>
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
				<%--<h4>Are You</h4>--%>
				<h2>公告</h2>
				<h3>${notices.get(0).noticeTitle}</h3>
				<p>${notices.get(0).noticeContent}</p>
			</div> 
		</div> 
	</div>
	<div class="team agileits">
		<div class="team-info">
			<div class="container">
				<div class="w3ls-title">
					<h3>教练团队</h3>
				</div>
				<div class="team-row">
					<div class="col-md-3 team-grids">
						<div class="team-img">
							<img class="img-responsive" src="images/t1.jpg" alt="">
							<div class="captn">
								<div class="captn-top">
									<h4>Edwards Doe</h4>
									<p>Aenean pulvinar ac enimet posuere tincidunt velit Utin tincidunt</p>
								</div>
								<div class="social-icons">
									<ul>
										<li><a href="#"> </a></li>
										<li><a href="#" class="fb"> </a></li>
										<li><a href="#" class="in"> </a></li>
									</ul>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 team-grids">
						<div class="team-img">
							<img class="img-responsive" src="images/t2.jpg" alt="">
							<div class="captn">
								<div class="captn-top">
									<h4>Mark Sophia</h4>
									<p>Aenean pulvinar ac enimet posuere tincidunt velit Utin tincidunt</p>
								</div>
								<div class="social-icons">
									<ul>
										<li><a href="#"> </a></li>
										<li><a href="#" class="fb"> </a></li>
										<li><a href="#" class="in"> </a></li>
									</ul>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 team-grids">
						<div class="team-img">
							<img class="img-responsive" src="images/t3.jpg" alt="">
							<div class="captn">
								<div class="captn-top">
									<h4>Michael amet</h4>
									<p>Aenean pulvinar ac enimet posuere tincidunt velit Utin tincidunt</p>
								</div>
								<div class="social-icons">
									<ul>
										<li><a href="#"> </a></li>
										<li><a href="#" class="fb"> </a></li>
										<li><a href="#" class="in"> </a></li>
									</ul>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 team-grids">
						<div class="team-img">
							<img class="img-responsive" src="images/t4.jpg" alt="">
							<div class="captn">
								<div class="captn-top">
									<h4>Daniel Nyari</h4>
									<p>Aenean pulvinar ac enimet posuere tincidunt velit Utin tincidunt</p>
								</div>
								<div class="social-icons">
									<ul>
										<li><a href="#"> </a></li>
										<li><a href="#" class="fb"> </a></li>
										<li><a href="#" class="in"> </a></li>
									</ul>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<div class="slid">
		<div class="container">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<h3>最近比赛记录</h3>
							<p>让我们查看一下最近的比赛记录</p>
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
	<div class="bs-docs-example" style="text-align: center">
		<table class="table">
			<thead>
			<tr>
				<td>序号</td>
				<td>标题</td>
				<td>时间</td>
				<td>地点</td>
				<td>级别</td>
				<td>详细信息</td>
			</tr>
			</thead>
			<tbody>
			<c:if test="${empty gameList || gameList.size() == 0}" var="flag">
				<tr>
					<td align="center" colspan="6">
						<h3>目前没有任何比赛</h3>
					</td>
				</tr>
			</c:if>
			<c:if test="${!flag}">

			<c:forEach items="${gameList}" var="game">
				<tr>
					<td><%=i++%></td>
					<td>${game.title}</td>
					<td>${game.time}</td>
					<td>${game.address}</td>
					<td>${game.type.typeName}</td>
					<td><a href="/foreDetailGames.html?gameId=${game.gameId}" class="btn btn-default">详细信息</a></td>
				</tr>
			</c:forEach>
			</c:if>

			</tbody>
		</table>
	</div>
	<div class="subscribe">
		<div class="container">
			<div class="subscribe-info">
				<h4>注册成为我们的会员</h4>
				<%--<p><span>Contact us </span>Lorem ipsum dolor sit amet consectetur, <br> adipiscing elit Cras rutrum iaculis enim, non convallis felis mattis convallis.</p>--%>
			<%--	<form action="#" method="post">
					<input type="text" name="Email" placeholder="Your Email" required="">
					<input type="submit" value="Subscribe">
					<div class="clearfix"> </div>
				</form>--%>
				<a href="/beforeForeRegister.html" class="btn btn-default">注册</a>
			</div>
		</div>
	</div>
	<!-- //subscribe --> 
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
