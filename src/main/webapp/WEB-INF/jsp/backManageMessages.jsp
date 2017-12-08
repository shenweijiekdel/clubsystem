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
                <li><a href="/backManageMessages.html">返回上一页</a></li>
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
                    <td><a href="" class="white-text templatemo-sort-by">用户ID <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">用户名 <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">留言内容 <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">留言时间 <span class="caret"></span></a></td>
                    <td>查看留言</td>
                    <td>查看评论</td>
                    <td>删除留言</td>
                  </tr>
                </thead>

                <tbody>
                <c:if test="${empty messages}" var="flag">

                  <tr>
                    <td align="center" colspan="7">
                      <h3>目前没有任何留言</h3>
                    </td>
                  </tr>
                </c:if>
                <c:if test="${!flag}" >


                <c:forEach items="${messages}" var="message">
                  <tr>
                    <td>${message.member.memberId}</td>
                    <td>用户名</td>
                    <td>${message.content.length() > 10?message.content.substring(0,10):message.content}...</td>  <%--如果留言长度大于10，只显示前十个字符--%>
                    <td>${message.time}</td>
                    <td><a href="#" class="btn btn-default" onclick="seeMessage('${message.content}',this)">查看详情</a></td>
                    <td><a href="/backManageComment.html?messageId=${message.messageId}" class="btn btn-default">查看评论</a></td>
                    <td><a href="#" class="btn btn-danger" onclick="deleteMessage(${message.messageId})">删除留言</a></td>
                  </tr>
                </c:forEach>
                </c:if>
                </tbody>
              </table>    
            </div>                          
          </div>          


         <%-- <div class="pagination-wrap">
            <ul class="pagination">
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li class="active"><a href="#">3 <span class="sr-only">(current)</span></a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true"><i class="fa fa-play"></i></span>
                </a>
              </li>
            </ul>
          </div>  --%>
          <footer class="text-right" style="text-align: center">
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
    <script>
        function seeMessage(msg,thisobj) {
        alert(msg);
//          postMessage(msg);
            thisobj.blur();
        }
        function deleteMessage(messageId) {
            if (confirm("您确定要删除此留言吗?")){
                location.href="/backDeleteMessages.html?messageId=" + messageId;
            }
        }
    </script>
  </body>
</html>