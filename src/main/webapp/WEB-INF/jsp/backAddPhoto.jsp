<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8"%>
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
    <%@include file="_left.jsp"%>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
      <div class="templatemo-top-nav-container">
        <div class="row">
          <nav class="templatemo-top-nav col-lg-12 col-md-12">
            <ul class="text-uppercase">
              <li><a href="/backManageAlbums.html">返回上一页</a></li>
            </ul>
          </nav>
        </div>
      </div>
      <div class="templatemo-content-container">
        <div class="templatemo-content-widget white-bg">

          <form action="/backAddPhoto.html?albumId=${albumId}" class="templatemo-login-form" method="post" enctype="multipart/form-data">
            <div class="row form-group">
              <div class="col-lg-6 col-md-6 form-group">
                <input type="file" class="btn-default" name="photo" >
              </div>
              <div>(小于10M)</div>
            </div>


            <div class="form-group text-right">
              <button type="submit" class="templatemo-blue-button">上传相片</button>
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
