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
<!-- Left column -->
<div class="templatemo-flex-row">
    <%@include file="_left.jsp"%>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
            <div class="row">
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li><a href="/backAddNoticeJsp.html" class="active">增加公告信息</a></li>

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
                            <td>内容</td>
                            <td colspan="3">操作</td>
                        </tr>
                        </thead>
                        <tbody>
                        <%int i=1;%>
                        <c:forEach items="${noticeList}" var="notice">
                            <tr>
                                <td><%=i++%></td>
                                <td>${notice.noticeTitle}</td>
                                <td>${notice.noticeDate}</td>
                                <td>${notice.noticeContent}</td>
                                <td><a href="/backUpdateNoticeJsp.html?noticeId=${notice.noticeId}" class="templatemo-edit-btn">修改</a></td>
                                <td><a href="/backDeleteNotice.html?noticeId=${notice.noticeId}" class="templatemo-link">删除</a></td>
                                <td>
                                    <c:if test="${notice.activity}">
                                        活动公告
                                    </c:if>
                                    <c:if test="${!notice.activity}">
                                        <a href="/backUpdateNoticeActivity.html?noticeId=${notice.noticeId}" class="templatemo-link">设为活动公告</a>
                                    </c:if>

                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>


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