<%@ page contentType="text/html;charset=UTF-8" language="java"
		 pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">  
	    <title>用户注册</title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <!-- 
        Visual Admin Template
        http://www.templatemo.com/preview/templatemo_455_visual_admin
        -->
	    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
	    <link href="${pageContext.request.contextPath}/css2/font-awesome.min.css" rel="stylesheet">
	    <link href="${pageContext.request.contextPath}/css2/bootstrap.min.css" rel="stylesheet">
	    <link href="${pageContext.request.contextPath}/css2/templatemo-style-fore.css" rel="stylesheet">

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
		$("input[name='memberName']").blur(function () {
		    if ($(this).val().trim() == ""){
                $($("span[name='msg']")[0]).attr("style","color:red");
                $($("span[name='msg']")[0]).html("用户名不能为空")
				return ;
			}

            $($("span[name='msg']")[0]).attr("style","color:blue");
				$($("span[name='msg']")[0]).html("正在检测...")
			$.post("/checkUsername.html",{username:$(this).val().trim()},function (data) {
                $($("span[name='msg']")[0]).attr("style","color:red");
                $($("span[name='msg']")[0]).html(data);
            });

        });
		$("input[type='password']").blur(function () {
		    if ($($("input[type='password']")[0]).val().trim() == ""){
                $($("span[name='msg']")[1]).attr("style","color:red");
                $($("span[name='msg']")[1]).html("密码不能为空");
			}
			else if ($(this).val().trim().length < 6 || $(this).val().trim().length > 12){
                $($("span[name='msg']")[1]).attr("style","color:red");
                $($("span[name='msg']")[1]).html("密码长度必须为6-12位");
			}
            else if ($($("input[type='password']")[0]).val().trim() !=$($("input[type='password']")[1]).val() ){
              $($("span[name='msg']")[1]).attr("style","color:red");
              $($("span[name='msg']")[1]).html("两次输入的密码不一致");
		  } else{
                $($("span[name='msg']")[1]).html("");
			}
        });
        $("input[name='code']").blur(function () {
            if ($("input[name='code']").val().trim() == ""){
                $("#valmsg").attr("style","color: red")
                $("#valmsg").html("请输入验证码");
                return ;
			}
            $("#valmsg").attr("style","color:blue")
            $("#valmsg").html("正在验证...");
			$.post("/verifyCode/validate.html",{code:$(this).val()},function (data) {
                $("#valmsg").attr("style","color: red")
				$("#valmsg").html(data);
            })
        });
        $("#form").submit(function () {
            if ($(this).val().trim() == ""){
                $($("span[name='msg']")[0]).attr("style","color:red");
                $($("span[name='msg']")[0]).html("用户名不能为空")

                return ;
            }
            if ($($("input[type='password']")[0]).val().trim() == ""){
                $($("span[name='msg']")[1]).attr("style","color:red");
                $($("span[name='msg']")[1]).html("密码不能为空");
            }
            if ($("input[name='code']").val().trim() == ""){
                $("#valmsg").attr("style","color: red")
                $("#valmsg").html("请输入验证码");
                return ;
            }

			if (  $($("span[name='msg']")[0]).html() == "" && $($("span[name='msg']")[1]).html() == "" && $("#valmsg").html() == ""){
			    return true;
			}
		return false;
        });
    });
</script>
	</head>
	<body class="light-gray-bg">
		<div class="templatemo-content-widget templatemo-login-widget white-bg">
			<header class="text-center">
	          <div class="square"></div>
	          <h1>用户注册</h1>
	        </header>

	        <form action="/foreRegister.html" method="post" id="form">
				<input type="hidden" name="avatar" value="icon1.png">
	        	<div class="form-group" style=" text-align: center">
	        		<div class="input-group">
		        		<div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>
		              	<input type="text" class="form-control" placeholder="用户名(必填项)" name="memberName">
		          	</div>
					<span name="msg" style="color:red"></span>
	        	</div>

	        	<div class="form-group" style="text-align: center">
	        		<div class="input-group">
		        		<div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
		              	<input type="password" class="form-control" placeholder="密码(必填项)" name="password">

		          	</div>
					<span name="msg" style="color:red"></span>
	        	</div>
				<div class="form-group" style=" text-align: center">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
						<input type="password" class="form-control" placeholder="确认密码(必填项)" name="password2" >

					</div>
					<span name="msg" style="color:red"></span>
				</div>
				<div class="form-group" style="text-align: center">
					<div class="input-group"  style="text-align: left	">
						<div class="input-group-addon"><i class="fa fa-genderless fa-fw"></i></div>
						<select class="" style="width: 50px;height: 30px" name="sex">
							<option value="男" selected="selected">男</option>
							<option value="女">女</option>
						</select>
					</div>
				</div>

				<div class="form-group" style="text-align: center">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-user-plus fa-fw"></i></div>
						<input type="date" class="form-control" placeholder="生日" name="birthday" >

					</div>
					<span name="msg" style="color:red"></span>
				</div>
				<div class="form-group" style="text-align: center">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-user-md fa-fw"></i></div>
						<input type="number" class="form-control" placeholder="会员卡号" name="IDNumber">

					</div>
					<span name="msg" style="color:red"></span>
				</div>
				<div class="form-group" style="text-align: center">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-bank fa-fw"></i></div>
						<input type="text" class="form-control" placeholder="家庭住址" name="address">

					</div>
					<span name="msg" style="color:red"></span>
				</div>
				<div class="form-group" style="text-align: center">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-phone fa-fw"></i></div>
						<input type="text" class="form-control" placeholder="联系电话" name="tel">

					</div>
					<span name="msg" style="color:red"></span>
				</div>
				<div class="form-group" style="text-align: center">
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-bank fa-fw"></i></div>
						<input type="text" class="form-control" placeholder="体重" name="weight">

					</div>
					<span name="msg" style="color:red"></span>
				</div>

				<div class="row">

					<div class="col-xs-6">
						<input type="text" name="code" class="form-control" placeholder="验证码" ><br/>

					</div>


					<div class="col-xs-6">
						<a href="#" id="code">
							<img  src="/verifyCode/freshCode.html" alt="">
						</a>
					</div>
				</div>
			<span style="color: red;" id="valmsg"></span>


				<div class="form-group">

					<button type="submit" class="templatemo-blue-button width-100" >注册</button>
				</div>
	        </form>
		</div>
	</body>
</html>