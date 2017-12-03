<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改比赛记录</title>
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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="${pageContext.request.contextPath}/js/jquery-1.4.2.js"></script>
    <script>

        function onTypeSelect(thisobj) {


        }
        function onRedMemberSelect(thisobj) {

            $.post("${pageContext.request.contextPath}/saveRedMemVar.html",{name:$(thisobj).val()},function () {
                location.href="#";
            });
        }
        function onBlueMemberSelect(thisobj) {
            $.post("${pageContext.request.contextPath}/saveBlueMemVar.html",{name:$(thisobj).val()},function () {
                location.href = "#";
            });
        }
        function submitCheck(thisobj) {
            var ipt = $("input:not([type='hidden'])");
            var slct = $("select");
           for (var i=0; i< ipt.length; i++){
              if ($(ipt[i]).val().trim() == ""){
                  alert("请正确输入")
                  return false;
              }

           }
          for (var i=0; i< slct.length; i++){
               if ($(slct[i]).val() == "none"){
                   alert("请正确选择")
                   return false;
               }
          }
           return true;
        }
    </script>
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
                        ${sessionScope.redName}
                        <li><a href="/backAddGameJsp.html" class="active">增加比赛记录</a></li>
                        <li><a href="/backManageGames.html">显示全部比赛记录</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="templatemo-content-container">
            <div class="templatemo-content-widget white-bg">
                <form action="/backupdateGame.html" class="templatemo-login-form" method="post" onsubmit="return submitCheck(this)">
                    <div class="row form-group">
                        <div class="col-lg-6 col-md-6 form-group">
                            <input type="hidden" name="gameId" value="${game.gameId}">
                            <label>标题</label>
                            <input type="text" class="form-control" name="title" value="${game.title}">
                            <label>时间</label>
                            <input type="date" class="form-control" name="time" value="${game.time}">
                            <label>地点</label>
                            <input type="text" class="form-control" name="address" value="${game.address}">
                            <label>级别</label>
                            <select class="form-control" name="typeName" onchange="onTypeSelect(this)">
                                <option value="none">--请选择--</option>
                                <c:forEach items="${typeList}" var="type">
                                    <option value="${type.typeName}"
                                            <c:if test="${type.typeName == game.type.typeName}">
                                                selected="selected"
                                            </c:if> >${type.typeName}

                                    </option>

                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col-lg-6 col-md-6 form-group">
                            <label>红队</label>
                            <input type="hidden" name="redName" value="${game.red.redName}">
                            <input type="hidden" name="redId" value="${game.red.redId}">
                            <label class="control-label templatemo-block">参赛选手</label>
                            <select class="form-control" name="redMemberName" onchange="onRedMemberSelect(this)">
                                <option value="none">--请选择--</option>
                                <c:forEach items="${memberList}" var="member">
                                    <%--<c:if test="${member.weight > game.type.down && member.weight < game.type.up && member.memberName != bluMemVal}">--%>

                                    <option value="${member.memberName}"
                                            <c:if test="${member.memberName == game.red.redMemberName}">
                                                selected="selected"
                                            </c:if>
                                    >${member.memberName}
                                    </option>

                                    <%--</c:if>--%>
                                </c:forEach>
                            </select>
                            <label>得分</label>
                            <input type="number" class="form-control" name="redFirstScore"
                                   value="${game.red.redFirstScore}">
                            <input type="number" class="form-control" name="redSecondScore"
                                   value="${game.red.redSecondScore}">
                            <input type="number" class="form-control" name="redThirdScore"
                                   value="${game.red.redThirdScore}">
                        </div>
                        <div class="col-lg-6 col-md-6 form-group">
                            <label>蓝队</label>
                            <input type="hidden" name="blueName" value="${game.blue.blueName}">
                            <input type="hidden" name="blueId" value="${game.blue.blueId}">
                            <label class="control-label templatemo-block">参赛选手</label>
                            <select class="form-control" name="blueMemberName" onchange="onBlueMemberSelect(this)">
                                <option value="none">--请选择--</option>
                                <c:forEach items="${memberList}" var="member">
                                    <%--<c:if test="${member.weight > game.type.down && member.weight < game.type.up}">--%>
                                    <c:if test="${member.memberName != sessionScope.blueName}">
                                    <option value="${member.memberName}"
                                    <c:if test="${member.memberName == game.blue.blueMemberName}">selected="selected"</c:if>>${member.memberName}
                                    </option>
                                </c:if>
                                    <%--</c:if>--%>
                                </c:forEach>
                            </select>
                            <label>得分</label>
                            <input type="number" class="form-control" name="blueFirstScore"
                                   value="${game.blue.blueFirstScore}">
                            <input type="number" class="form-control" name="blueSecondScore"
                                   value="${game.blue.blueSecondScore}">
                            <input type="number" class="form-control" name="blueThirdScore"
                                   value="${game.blue.blueThirdScore}">
                        </div>
                    </div>

                    <div class="form-group text-right">
                        <button type="submit" class="templatemo-blue-button">提交</button>
                    </div>
                </form>
            </div>
            <footer class="text-right">

            </footer>
        </div>
    </div>
</div>

<!-- JS -->
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>        <!-- jQuery -->
<script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>
<!-- http://markusslima.github.io/bootstrap-filestyle/ -->
<script type="text/javascript" src="js/templatemo-script.js"></script>        <!-- Templatemo Script -->
</body>
</html>
