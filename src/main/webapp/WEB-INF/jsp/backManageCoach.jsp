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
                        <li><a href="/backAddCoachJsp.html" class="active">增加教练信息</a></li>
                        <li><a href="/backIsOccupyCoach.html?isOccupy=true" class="active">已预约教练信息</a></li>
                        <li><a href="/backIsOccupyCoach.html?isOccupy=false" class="active">未预约教练信息</a></li>
                        <li><a href="/backManageCoach.html" class="active">全部教练信息</a></li>

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
                            <td>姓名</td>
                            <td>出生日期</td>
                            <td>入职日期</td>
                            <td>预约情况</td>
                            <td colspan="2">操作</td>
                        </tr>
                        </thead>
                        <tbody>
                        <%int i=1;%>
                        <c:forEach items="${coachList}" var="coach">
                            <tr>
                                <td><%=i++%></td>
                                <td>${coach.coachName}</td>
                                <td>${coach.coachBirth}</td>
                                <td>${coach.coachEntrydate}</td>
                                <td>
                                    <c:if test="${coach.isoccupy}">
                                        已预约&nbsp;&nbsp;&nbsp;
                                        <a href="/backUpdateCoachOccupy.html?coachId=${coach.coachId}&isOccupy=false">取消预约</a>
                                    </c:if>
                                    <c:if test="${!coach.isoccupy}">
                                        未预约&nbsp;&nbsp;&nbsp;
                                        <a href="/backUpdateCoachOccupy.html?coachId=${coach.coachId}&isOccupy=true">预约</a>
                                    </c:if>

                                </td>
                                <td><a href="/backUpdateCoachJsp.html?coachId=${coach.coachId}" class="templatemo-edit-btn">修改</a></td>
                                <td><a href="/backDeleteCoach.html?coachId=${coach.coachId}" class="templatemo-link">删除</a></td>

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