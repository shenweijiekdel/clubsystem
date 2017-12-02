<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Visual Admin Dashboard - Preferences</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <!-- 
    Visual Admin Template
    http://www.templatemo.com/preview/templatemo_455_visual_admin
    -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>
  <!-- Left column -->
  <div class="templatemo-flex-row">
    <div class="templatemo-sidebar">
      <header class="templatemo-site-header">
        <div class="square"></div>
        <h1>俱乐部管理后台</h1>
      </header>
      <div class="profile-photo-container">
        <img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">
        <div class="profile-photo-overlay"></div>
      </div>
      <!-- Search box -->

      <div class="mobile-menu-icon">
        <i class="fa fa-bars"></i>
      </div>
      <nav class="templatemo-left-nav">
        <ul>
          <li><a href="/backManageUsers.html"><i class="fa fa-users fa-fw"></i>用户管理</a></li>
          <li><a href="/backManageGames.html"><i class="fa fa-users fa-fw"></i>比赛记录管理</a></li>
          <li><a href="/backManageFund.html"><i class="fa fa-users fa-fw"></i>经费管理</a></li>
          <li><a href="/backManagePictures.html"><i class="fa fa-users fa-fw"></i>相册管理</a></li>
          <li><a href="/backManageMessages.html"><i class="fa fa-users fa-fw"></i>留言板管理</a></li>
          <li><a href="/backLogout"><i class="fa fa-eject fa-fw"></i>注销</a></li>
        </ul>
      </nav>
    </div>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
      <div class="templatemo-top-nav-container">
        <div class="row">
          <nav class="templatemo-top-nav col-lg-12 col-md-12">
            <ul class="text-uppercase">
              <li><a href="/backAddGameJsp.html" class="active">增加比赛记录</a></li>
              <li><a href="/backManageGames.html">显示全部比赛记录</a></li>
            </ul>
          </nav>
        </div>
      </div>
      <div class="templatemo-content-container">
        <div class="templatemo-content-widget white-bg">

          <form action="/backAddGame.html" class="templatemo-login-form" method="post">
            <div class="row form-group">
              <div class="col-lg-6 col-md-6 form-group">
                <label >标题</label>
                <input type="text" class="form-control" name="title">
                <label >时间</label>
                <input type="date" class="form-control" name="time">
                <label >地点</label>
                <input type="text" class="form-control" name="address">
                <label >级别</label>
                <select class="form-control" name="typeName" onselect="">
                  <c:forEach items="${typeList}" var="type">
                    <option value="${type.typeName}">${type.typeName}</option>
                  </c:forEach>
                </select>
              </div>
            </div>

            <div class="row form-group">
              <div class="col-lg-6 col-md-6 form-group">
                <label >红队</label>
                <input  class="form-control" name="redName" value="红队">
                <label class="control-label templatemo-block">参赛选手</label>
                <select class="form-control" name="redMemberName">
                  <c:forEach items="${memberList}" var="member">
                    <option value="${member.memberName}">${member.memberName}</option>
                  </c:forEach>
                </select>
                <label>得分</label>
                <input type="text" class="form-control" name="redFirstScore">
                <input type="text" class="form-control" name="redSecondScore">
                <input type="text" class="form-control" name="redThirdScore">
              </div>
              <div class="col-lg-6 col-md-6 form-group">
                <label>蓝队</label>
                <input  class="form-control" name="blueName" value="蓝队">
                <label class="control-label templatemo-block">参赛选手</label>
                <select class="form-control" name="blueMemberName">
                  <c:forEach items="${memberList}" var="member">
                    <option value="${member.memberName}">${member.memberName}</option>
                  </c:forEach>
                </select>
                <label >得分</label>
                <input type="text" class="form-control" name="blueFirstScore">
                <input type="text" class="form-control" name="blueSecondScore">
                <input type="text" class="form-control" name="blueThirdScore">
              </div>
            </div>


            <div class="form-group text-right">
              <button type="submit" class="templatemo-blue-button">提交</button>
            </div>
          </form>
        </div>
        <footer class="text-right">

        </footer>
      </div>
    </div>
  </div>

  <!-- JS -->
  <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>        <!-- jQuery -->
  <script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>  <!-- http://markusslima.github.io/bootstrap-filestyle/ -->
  <script type="text/javascript" src="js/templatemo-script.js"></script>        <!-- Templatemo Script -->
  </body>
</html>
