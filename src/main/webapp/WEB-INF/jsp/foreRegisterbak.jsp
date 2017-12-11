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
	<title>会员注册</title>
	<link href="css/style.css" rel='stylesheet' type='text/css'/>
	<link href='//fonts.googleapis.com/css?family=Merienda+One' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Acme' rel='stylesheet' type='text/css'>


	<!-- For-Mobile-Apps-and-Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Form Using Tabs Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //For-Mobile-Apps-and-Meta-Tags -->

	<script src="js/jquery.min.js"></script>
	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function () {
						$('#horizontalTab').easyResponsiveTabs({
							type: 'default', //Types: default, vertical, accordion
							width: 'auto', //auto or any width like 600px
							fit: true   // 100% fit in a container
						});
					});
				</script>
</head>
<body>
	<h1>新会员注册</h1>
	<div class="main-content">
		<div class="form">
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul>
						<li class="resp-tab-item"  role="tab"><span>填写信息</span></li>
				    </ul>
		            <div class="tab-1 resp-tab-content" >
				        <div class="facts">
		                    <div class="register">
						        <form action="/foreRegister.html">
									<!--require为空时，则拒绝提交-->
							        姓名:<input placeholder="姓名" type="text" name="memberName" required="" value="${uf.memberName}"><br/>
							        密码:<input placeholder="密码" type="password" name="password" required=""><br/>
							        确认密码:<input placeholder="再次输入密码" type="password" name="password" required=""><br/>
									性别:<input type="radio" name="sex" value="男">男
                                    <input type="radio" name="sex" value="女">女<br/>
									年龄:<input placeholder="年龄" type="text" name="age" required=""><br/>
									身份证号:<input placeholder="身份证号" type="text" name="IDNumber" required=""><br/>
									住址:<input placeholder="住址" type="text" name="address" required=""><br/>
									电话:<input placeholder="联系电话" type="text" name="tel" required=""><br/>
							        <div class="sign-up" >
									    <input type="submit" value="注册"/>
								    </div>
						        </form>
					        </div>
				        </div>
			        </div>
			 	</div>
		    </div>
        </div>
		<div class="clear"></div>
	</div>
</body>
</html>