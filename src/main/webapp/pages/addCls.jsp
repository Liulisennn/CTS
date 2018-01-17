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
    <title>AddCls</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
    <script>
        function addCls(){
            var param = $("#addForm").serialize();
            $.post("${pageContext.request.contextPath}/clsController/addCls", param, function (data) {
                if(data && data == true){
                    $("#addForm")[0].reset();
                    $("#msg").html("添加班级成功!").css("color","green");
                }else{
                    $("#msg").html("添加班级失败!").css("color","red");
                }
            }, "json");
        }
    </script>
</head>
<body>
<div style="padding: 15px;">
    <blockquote class="layui-elem-quote layui-quote-nm">添加班级</blockquote>
</div>
    <div id="msg"></div>
    <form id="addForm" onsubmit="return false" class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">班级名称：</label>
            <div class="layui-input-block">
                <input type="text" name="cname" required  lay-verify="required" placeholder="请输入班级" autocomplete="off" class="layui-input" style="width:500px;"/>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <input type="button"class="layui-btn" onclick="addCls()" onblur="$('#msg').html('')" value="添加班级">
            </div>
        </div>
    </form>
</body>
</html>
