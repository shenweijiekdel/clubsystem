<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>相片管理</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <!-- 
    Visual Admin Template
    http://www.templatemo.com/preview/templatemo_455_visual_admin
    -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet'
          type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">

    <link href="css/gallery.css" rel="stylesheet" type="text/css"/>
    <link href="css/facebox.css" rel="stylesheet" type="text/css"/>
    <link href="css/tabs.css" rel="stylesheet" type="text/css"/>
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
    <%@include file="_left.jsp" %>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
            <div class="row">
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li><a href="/backAddPhotoJsp.html?albumId=${albumId}">添加相片</a></li>
                        <li><a href="/backManageAlbums.html" class="active">返回上一页</a></li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="grid_10">
            <div class="box round first">


                <div class="block">
                    <div class="gallery-sand">
                        <div class="filter-options">

                        </div>
                        <div class="filter-results">
                            <ul class="gallery small">
                                <!-- Small Gallery Image: Start -->
                                <c:if test="${empty photos}" var="flag">
                                    <h2>现在没有任何相片</h2>
                                </c:if>
                                <c:if test="${!flag}">
                                    <c:forEach items="${photos}" var="photo">
                                        <li data-type="buildings" data-id="g001">


                                            <a href="/images/album/${photo.src}" class="popup" style="width: 300px;height: 300px">
                                                <img src="/ images/album/${photo.src}" alt="" style="width: 300px;height: 300px"/>

                                            </a>
                                        </li>
                                    </c:forEach>
                                </c:if>

                            </ul>
                        </div>
                        <!-- Small Gallery Content: End -->
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
    $(document).ready(function () {
        // Content widget with background image
        var imageUrl = $('img.content-bg-img').attr('src');
        $('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
        $('img.content-bg-img').hide();
    });
</script>
</body>
</html>