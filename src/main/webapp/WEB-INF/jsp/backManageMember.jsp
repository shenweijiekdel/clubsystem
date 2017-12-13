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
                        <li><a href="<c:url value="/add_member1.html"/>" class="active">新增用户</a></li>

                    </ul>
                </nav>
            </div>
        </div>
        <%--<form action="<c:url value="/searchmember.html"/>" method="post">--%>
            <%--<input type="text" name="weight">--%>
            <%--<input type="submit" value="查询">--%>
        <%--</form>--%>
            <table class="table table-striped table-bordered templatemo-user-table">
                <thead>
                <tr>
                    <td><a href="" class="white-text templatemo-sort-by">编号 <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">名字<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">密码 <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">性别 <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">出生年月<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">会员号<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">地址<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">电话<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">头像<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">余额<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">体重<span class="caret"></span></a></td>
                    <td>Edit</td>
                    <td>Delete</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <c:set var="i" value="0"/>
                    <c:forEach var="member" items="${list}">
                <tr>
                    <td>${i=i+1} </td>
                    <td>${member.member_name} </td>
                    <td>${member.password}</td>
                    <td>${member.sex}</td>
                    <td>${member.birthday}</td>
                    <td>${member.ID_number}</td>
                    <td>${member.address}</td>
                    <td>${member.tel}</td>
                    <td>../image/avatar/${member.avatar}</td>
                    <td>${member.money}</td>
                    <td>${member.weight}</td>

                <td><a href="<c:url value="/change_member.html?memberId=${member.member_id}"/>">Edit</a></td>
                <td><a href="<c:url value="/delete_member.html?memberId=${member.member_id}"/>">Delete</a></td>
                </tr>
                </c:forEach>
                </tr>
                </tbody>
            </table>


            <%--<div class="pagination-wrap">--%>
                <%--<ul class="pagination">--%>
                    <%--<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>--%>
                    <%--<li><a href="#">2</a></li>--%>
                    <%--<li><a href="#">3 </a></li>--%>
                    <%--<li><a href="#">4</a></li>--%>
                    <%--<li><a href="#">5</a></li>--%>
                    <%--<li>--%>
                        <%--<a href="#" aria-label="Next">--%>
                            <%--<span aria-hidden="true"><i class="fa fa-play"></i></span>--%>
                        <%--</a>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<footer class="text-right">--%>
                <%--<p>Copyright &copy; 2084 Company Name--%>
                    <%--| Designed by <a href="http://www.templatemo.com" target="_parent">templatemo</a></p>--%>
            <%--</footer>--%>
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