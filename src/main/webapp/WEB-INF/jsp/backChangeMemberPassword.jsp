<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<%@ page import="web2017.team9.domain.Member"%>
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
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/templatemo-style.css" rel="stylesheet">

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
                        <li>新增用户</li>

                    </ul>
                </nav>
            </div>
        </div>
        <table class="table table-striped table-bordered templatemo-user-table">
            <form action="<c:url value="/change_memberpassword.html"/>" method="post">
                <input type="hidden" name="memberId" value="${member.memberId}">
                <tr><td>姓名：</td><td><input type="text" name="memberName" value="${member.memberName}" class="form-control"></td></tr>
                <tr><td>密码：</td><td><input type="password" name="password" value="${member.password}"  class="form-control"></td></tr>
                <tr><td>住址：</td><td><input type="text" name="address" value="${member.address}"  class="form-control"></td></tr>
                <tr><td>电话：</td><td><input type="text" name="tel" value="${member.tel}"  class="form-control"></td></tr>
                <tr><td>sex：</td><td>
                    <div>
                        <%--<label class="control-label templatemo-block">Email Option</label>--%>
                        <%--<div class="templatemo-block margin-bottom-5">--%>
                        <input type="radio" name="sex" id="r1" value="男" checked>
                        <label for="r1" class="font-weight-400"><span></span>男</label>
                        <input type="radio" name="sex" id="r2" value="女">
                        <label for="r2" class="font-weight-400"><span></span>女</label>
                        <%--</div>--%>
                    </div>
                </td></tr>
                <tr><td>birthday：</td><td><input type="date" name="birthday" value="${member.birthday}" class="form-control"></td></tr>
                <tr><td>ID：</td><td><input type="text" name="IDNumber" value="${member.IDNumber}" class="form-control"></td></tr>
                <%--<tr><td>avatar：</td><td><input type="text" name="avatar" value="${member.avatar}"></td></tr>--%>
                <tr><td>money：</td><td><input type="text" name="money" value="${member.money}" class="form-control"></td></tr>
                <tr><td>weight：</td><td><input type="text" name="weight" value="${member.weight}" class="form-control"></td><tr>
                <tr><td><input type="submit" value="提交" class="templatemo-blue-button" class="form-control"></td></tr>
            </form>
        </table>


        <div class="pagination-wrap">
            <ul class="pagination">
                <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3 </a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true"><i class="fa fa-play"></i></span>
                    </a>
                </li>
            </ul>
        </div>
        <footer class="text-right">
            <p>Copyright &copy; 2084 Company Name
                | Designed by <a href="http://www.templatemo.com" target="_parent">templatemo</a></p>
        </footer>
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