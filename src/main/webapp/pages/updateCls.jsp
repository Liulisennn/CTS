<%--
  Created by IntelliJ IDEA.
  User: Liulisen
  Date: 2018/01/17
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<html>
<head>
    <title>Update Cls</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
    <script>
        function updateCls(){
            var param = $("#updateForm").serialize();
            $.post("${pageContext.request.contextPath}/clsController/updateCls", param, function (data) {
                if(data && data == true)
                    location.href = "${pageContext.request.contextPath}/pages/showCls.jsp";
                else
                    $("#msg").html("修改失败").css("color","red");
            }, "json");
        }
    </script>
</head>
<body>
<div style="padding: 15px;">
    <blockquote class="layui-elem-quote layui-quote-nm">修改班级</blockquote>
</div>
<div id="msg"></div>
<form id="updateForm" id="updateCls" onsubmit="return false" class="layui-form">
    <div class="layui-form-item">
        <input type="hidden" name="cno" value="${cls.cno}" />
        <label class="layui-form-label">班级名称：</label>
        <div class="layui-input-block">
            <input name="cname" value="${cls.cname}" class="layui-input" style="width:500px;" />
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input type="button" class="layui-btn" onclick="updateCls()" onblur="$('#msg').html('')" value="修改班级">
            <button class="layui-btn layui-btn-primary"><a href="${pageContext.request.contextPath}/pages/showCls.jsp">班级列表</a></button>
        </div>
    </div>
</form>
</body>
</html>
