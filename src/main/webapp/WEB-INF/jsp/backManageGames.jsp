<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>Visual Admin Dashboard - Manage Users</title>
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
  <% int i=1;%>
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
          <h1>Visual Admin</h1>
        </header>
        <div class="profile-photo-container">
          <img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">  
          <div class="profile-photo-overlay"></div>
        </div>      
        <!-- Search box -->
        <form class="templatemo-search-form" role="search">
          <div class="input-group">
              <button type="submit" class="fa fa-search"></button>
              <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">           
          </div>
        </form>
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
          
              </ul>  
            </nav> 
          </div>
        </div>
        <div class="templatemo-content-container">
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <td>序号</td>
                    <td>标题</td>
                    <td>时间</td>
                    <td>地点</td>
                    <td>级别</td>
                    <td>详细信息</td>
                    <td>修改</td>
                    <td>删除</td>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${gameList}" var="game">
                    <tr>
                      <td><%=i++%></td>
                      <td>${game.title}</td>
                      <td>${game.time}</td>
                      <td>${game.address}</td>
                      <td>${game.type.typeName}</td>
                      <td><a href="/backDetailGames.html?gameId=${game.gameId}" class="templatemo-edit-btn">详细信息</a></td>
                      <td><a href="/backUpdateGamesJsp.html?gameId=${game.gameId}" class="templatemo-edit-btn">修改</a></td>
                      <td><a href="/backDeleteGame.html?gameId=${game.gameId}" class="templatemo-link">删除</a></td>
                    </tr>
                  </c:forEach>

                </tbody>
              </table>    
            </div>                          
          </div>          

          </div>
          <%--<div class="pagination-wrap">--%>
            <%--<ul class="pagination">--%>
              <%--<li><a href="#">1</a></li>--%>
              <%--<li><a href="#">2</a></li>--%>
              <%--<li class="active"><a href="#">3 <span class="sr-only">(current)</span></a></li>--%>
              <%--<li><a href="#">4</a></li>--%>
              <%--<li><a href="#">5</a></li>--%>
              <%--<li>--%>
                <%--<a href="#" aria-label="Next">--%>
                  <%--<span aria-hidden="true"><i class="fa fa-play"></i></span>--%>
                <%--</a>--%>
              <%--</li>--%>
            <%--</ul>--%>
          <%--</div>          --%>

        </div>
      </div>
    </div>
    
    <!-- JS -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script>
      $(document).ready(function(){
        // Content widget with background image
        var imageUrl = $('img.content-bg-img').attr('src');
        $('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
        $('img.content-bg-img').hide();        
      });
    </script>
  </body>
</html>