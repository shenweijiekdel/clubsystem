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
<title>个人信息</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Ringster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="/fore/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="/fore/css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="${pageContext.request.contextPath}/css2/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css2/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="fore/css/jquery.flipster.css">
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
						<li><a href="/foreUserInfo.html" class="active" style="font-family: '微软雅黑'">个人信息</a></li>
						<li><a href="/foreAlbums.html" style="font-family: '微软雅黑'">图库</a></li>
						<li><a href="/foreBlog.html"   style="font-family: '微软雅黑'">留言板</a></li>


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
				<h2>个人信息</h2>
			</div> 
		</div> 
	</div>		
	<!-- //banner -->
	<!-- about -->
	<div class="about agileits">
		<div class="container">
			<div class="w3ls-title">
				<h3>${member.memberName}</h3>
			</div> 
			<%--<div class="about-w3ls-row">
				<div class="col-md-4 about-left">
					<div class="pic">
						<div class="stack twisted">	
							<img src="images/img2.jpg" alt=" " class="img-responsive">
						</div> 
					</div> 
				</div>
				<div class="col-md-8 about-right">
					<h5>Blanditiis praesentium deleniti atque corrupti quos </h5>  
					<p>Dignissimos at vero eos et accusamus et iusto odio ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecat laborum et dolorum fuga.  </p>
					<!-- history -->
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true"> 
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title asd">
									<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
										<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Lorem ipsum dolor 
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body panel_text">
									Sed lectus tellus sodales id elit a, feugiat porttitor nulla. Sed porta magna vitae nisl vulputate lacinia. Morbi malesuada sollicitudin tortor, vitae pharetra nunc lacinia eget leo sodales adipiscing.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title asd">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Blanditiis praesentium
									</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								<div class="panel-body panel_text">
									Feugiat porttitor nulla Sed lectus tellus sodales id elit a,  Sed porta magna vitae nisl vulputate lacinia. Morbi malesuada sollicitudin tortor, vitae pharetra nunc lacinia eget leo sodales adipiscing.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingThree">
							  <h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Terry richardson
								</a>
							  </h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
								<div class="panel-body panel_text">
									Morbi malesuada sollicitudin tortor, vitae pharetra nunc lacinia eget leo sodales adipiscing. Sed lectus tellus, sodales id elit a, feugiat porttitor nulla. Sed porta magna vitae nisl vulputate lacinia. 
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingFour">
							  <h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
									<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Nulla ornare purus 
								</a>
							  </h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
								<div class="panel-body panel_text">
									Sed lectus tellus, sodales id elit a, feugiat porttitor nulla. Sed porta magna vitae nisl vulputate lacinia. Morbi malesuada sollicitudin tortor, vitae pharetra nunc lacinia eget leo sodales adipiscing.
								</div>
							</div>
						</div>
					</div>
					<!-- //history --> 
				</div>
				<div class="clearfix"> </div> 
			</div>--%>
			<form action="/changeUserInfo.html" method="post" id="form" enctype="multipart/form-data">
				<div class="row" >
					<div class="col-md-4">
						<div class="blog-grids-left">
							<a href="single.html">
								<img src="../../images/avatar/${member.avatar}" class="img-responsive" alt="" style="width: 100px;height: 100px;"/>
							</a>
							<br/>
						</div>
					</div>

					<div class="col-md-4">
						修改头像<input type="file" name="head">
					</div>


				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">用户名</div>
								<input type="text" class="form-control" placeholder="用户名" name="memberName" value="${member.memberName}" readonly="readonly">
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group" style="text-align: left">
							<di1v class="input-group">
								<div class="input-group-addon">性别</div>
								<select class="" style="width: 50px;height: 30px" name="sex">
									<option value="男" <c:if test="${member.sex == '男'}">selected="selected"</c:if> >男</option>
									<option value="女" <c:if test="${member.sex == '女'}">selected="selected"</c:if>>女</option>
								</select>
							</di1v>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">生日</div>
								<input type="date" class="form-control" placeholder="生日" name="birthday" value="${member.birthday}">
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">身份证号</div>
								<input type="text" class="form-control" placeholder="身份证号" name="IDNumber" value="${member.IDNumber}">
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">家庭住址</div>
								<input type="text" class="form-control" placeholder="家庭住址" name="address" value="${member.address}">
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">联系电话</div>
								<input type="text" class="form-control" placeholder="联系电话" name="tel" value="${member.tel}">
							</div>
						</div>
					</div>
				</div>




				<div class="form-group" style="text-align: center">
					<button type="submit" class="btn btn-danger" >修改信息</button>
				</div>
			</form>
		</div>
	</div>
	<!-- //about -->
	<!-- about-slid -->

	<!-- //about-slid --> 
	<!-- team -->

	<!-- //team --> 
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
    <script src="js/bootstrap.js"></script>
</body>
</html>
