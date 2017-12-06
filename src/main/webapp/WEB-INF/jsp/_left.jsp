<%--
  Created by IntelliJ IDEA.
  User: FSWJ
  Date: 2017/12/3
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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

    <%--<div class="mobile-menu-icon">
        <i class="fa fa-bars"></i>
    </div>--%>
    <nav class="templatemo-left-nav">
        <ul>
            <li><a href="/backManageUsers.html"><i class="fa fa-users fa-fw"></i>用户管理</a></li>
            <li><a href="/backManageNotices.html"><i class="fa fa-users fa-fw"></i>公告管理</a></li>
            <li><a href="/backManageGames.html"><i class="fa fa-users fa-fw"></i>比赛记录管理</a></li>
            <li><a href="/backManageFund.html"><i class="fa fa-users fa-fw"></i>经费管理</a></li>
            <li><a href="/backManageAlbums.html"><i class="fa fa-users fa-fw"></i>相册管理</a></li>
            <li><a href="/backManageMessages.html"><i class="fa fa-users fa-fw"></i>留言板管理</a></li>
            <li><a href="/backLogout"><i class="fa fa-eject fa-fw"></i>注销</a></li>
        </ul>
    </nav>
</div>
</html>
