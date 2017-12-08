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
    <%@include file="_left.jsp"%>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
            <div class="row">
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li><a href="/backAddGameJsp.html">增加比赛记录</a></li>
                        <li><a href="/backManageGames.html">显示全部比赛记录</a></li>
                        <li><a href="/backManageGames.html">返回上一页</a></li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="templatemo-flex-row flex-content-row">
            <div class="templatemo-content-widget white-bg col-2">
                <i class="fa fa-times"></i>
                <div class="media margin-bottom-30">
                    <div class="media-left padding-right-25">
                        <a href="#">
                            <img class="media-object img-circle templatemo-img-bordered" src="${redMember.avatar}" alt="这是头像">
                        </a>
                    </div>
                    <div class="media-body">
                        <h2 class="media-heading text-uppercase blue-text">${game.red.redMemberName}</h2>
                        <h6>${game.red.redName}</h6>
                    </div>

                </div>
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td><div class="circle pink-bg"></div></td>
                            <td>第一局比分</td>
                            <td>${game.red.redFirstScore}</td>
                        </tr>
                        <tr>
                            <td><div class="circle pink-bg"></div></td>
                            <td>第二局比分</td>
                            <td>${game.red.redSecondScore}</td>
                        </tr>
                        <tr>
                            <td><div class="circle pink-bg"></div></td>
                            <td>第三局比分</td>
                            <td>${game.red.redThirdScore}</td>
                        </tr>
                        <tr>
                            <td><div class="circle pink-bg"></div></td>
                            <td>总分</td>
                            <td>${game.red.redTotal}</td>
                        </tr>
                        <tr>
                            <td><div class="circle pink-bg"></div></td>
                            <td>结果</td>
                            <td>${game.red.redStatus}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="templatemo-flex-row flex-content-row">
            <div class="templatemo-content-widget white-bg col-2">
                <i class="fa fa-times"></i>
                <div class="media margin-bottom-30">
                    <div class="media-left padding-right-25">
                        <a href="#">
                            <img class="media-object img-circle templatemo-img-bordered" src="${blueMember.avatar}" alt="这是头像">
                        </a>
                    </div>
                    <div class="media-body">
                        <h2 class="media-heading text-uppercase blue-text">${game.blue.blueMemberName}</h2>
                        <h6>${game.blue.blueName}</h6>
                    </div>

                </div>
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td><div class="circle blue-bg"></div></td>
                            <td>第一局比分</td>
                            <td>${game.blue.blueFirstScore}</td>
                        </tr>
                        <tr>
                            <td><div class="circle blue-bg"></div></td>
                            <td>第二局比分</td>
                            <td>${game.blue.blueSecondScore}</td>
                        </tr>
                        <tr>
                            <td><div class="circle blue-bg"></div></td>
                            <td>第三局比分</td>
                            <td>${game.blue.blueThirdScore}</td>
                        </tr>
                        <tr>
                            <td><div class="circle blue-bg"></div></td>
                            <td>总分</td>
                            <td>${game.blue.blueTotal}</td>
                        </tr>
                        <tr>
                            <td><div class="circle blue-bg"></div></td>
                            <td>结果</td>
                            <td>${game.blue.blueStatus}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- JS -->
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>        <!-- jQuery -->
<script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>  <!-- http://markusslima.github.io/bootstrap-filestyle/ -->
<script type="text/javascript" src="js/templatemo-script.js"></script>        <!-- Templatemo Script -->
</body>
</html>
