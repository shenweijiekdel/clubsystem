<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" isELIgnored="false" %>
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
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet'
          type='text/css'>

    <link href="/css2/font-awesome.min.css" rel="stylesheet">
    <link href="/css2/bootstrap.min.css" rel="stylesheet">
    <link href="/css2/templatemo-style.css" rel="stylesheet">
    <link href="/css2/gallery.css" rel="stylesheet" type="text/css"/>
                    <link href="/css2/facebox.css" rel="stylesheet" type="text/css"/>
                    <link href="/css2/tabs.css" rel="stylesheet" type="text/css"/>
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
                                            <li><a href="/backCreateAlbumJsp.html">创建相册</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>

                            <div class="gallery-grids-row">
                                <c:forEach items="${albums}" var="album">
                                    <div class="col-md-4 gallery-grid">

                    <div class="wpf-demo-4" >

                        <a href="/backManagePhoto.html?albumId=${album.id}" class="jzBoxLink item-hover" title="Trendy Furnish" style="width: 300px;height: 300px;">

                                    <img src="${album.photos.size() >= 1?'/images/album/'.concat(album.photos.get(0).src):'images/g1.jpg'}" alt=" " class="img-responsive" />
                            <div class="view-caption">
                                <p>查看相册</p>

                            </div>
                        </a>

                    </div>
                    <h3 style="text-align: center">${album.name}</h3>

                </div>

            </c:forEach>
            <div class="clearfix"> </div>
        </div>

    </div>
</div>

<!-- JS -->
<script type="text/javascript" src="/js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
<script type="text/javascript" src="/js/templatemo-script.js"></script>      <!-- Templatemo Script -->

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