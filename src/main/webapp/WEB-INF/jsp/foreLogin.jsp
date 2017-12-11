<%@ page contentType="text/html;charset=UTF-8" language="java"
		 pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">  
	    <title>用户登录</title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <!-- 
        Visual Admin Template
        http://www.templatemo.com/preview/templatemo_455_visual_admin
        -->
	    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
	    <link href="${pageContext.request.contextPath}/css2/bootstrap.min.css" rel="stylesheet">
	    <link href="${pageContext.request.contextPath}/css2/templatemo-style-fore.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/css2/font-awesome.min.css" rel="stylesheet">


		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

	    <![endif]-->
		<script src="${pageContext.request.contextPath}/js/jquery-1.4.2.js"></script>
		<script>
    $(function () {

		$("#code").click(function () {
          
            $(this).children("img").attr("src","/verifyCode/freshCode.html?date=" + new Date().getTime());
        });
        $("input[name='code']").blur(function () {
            $("#msg").attr("style","color: blue")
            $("#msg").html("正在验证...");
			$.post("/verifyCode/validate.html",{code:$(this).val().trim()},function (data) {
                $("#msg").attr("style","color: red")
				$("#msg").html(data);
            })
        });
        $("#form").submit(function () {
			if ( $("#msg").html() != "")
			return false;
			else return true;
        });
    });
</script>
	</head>
	<body class="light-gray-bg">
		<div class="templatemo-content-widget templatemo-login-widget white-bg">
			<header class="text-center">
	          <div class="square"></div>
	          <h1>用户登录</h1>
	        </header>

	        <form action="/loginCheck.html" method="post" id="form">
	        	<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>
		              	<input type="text" class="form-control" placeholder="用户名" name="memberName" value="${member.memberName}">
		          	</div>
	        	</div>
	        	<div class="form-group" style="text-align: center">
	        		<div class="input-group">
		        		<div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
		              	<input type="password" class="form-control" placeholder="密码" name="password" value="${member.password}">

		          	</div>
					<span id="msg" style="color:red">${msg}</span>
	        	</div>





				<div class="row">

					<div class="col-xs-6">
						<input type="text" name="code" class="form-control" placeholder="验证码"/><br>

					</div>
					<div class="col-xs-6">
						<a href="#" id="code">
							<img  src="/verifyCode/freshCode.html" alt=""/>
						</a>
					</div>
				</div>
				<div class="form-group">
					<div class="checkbox squaredTwo">

						<input type="checkbox" id="c1" name="cc" />
						<label for="c1"><span></span>记住密码</label>
					</div>
				</div>
				<div class="form-group">

					<button type="submit" class="templatemo-blue-button width-100" >登录</button>
				</div>
	        </form>
		</div>
		<div class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
			<p>没有账号？ <strong><a href="/beforeForeRegister.html" class="blue-text">立即注册</a></strong></p>
		</div>
	</body>
</html>