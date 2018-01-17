<%--
  Created by IntelliJ IDEA.
  User: Liulisen
  Date: 2018/01/17
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<html>
<head>
    <title>Update Stu</title>
</head>
<body>
<div style="padding: 15px;">
    <blockquote class="layui-elem-quote layui-quote-nm">学生列表</blockquote>
</div>
    <div id="msg"></div>
    <form action="${pageContext.request.contextPath}/stuController/updateStu" method="post" enctype="multipart/form-data">
        <input type="hidden" name="sno" value="${stu.sno}">

        <div class="layui-form-item">
            <label class="layui-form-label">学生姓名：</label>
            <div class="layui-input-block">
                <input name="sname" value="${stu.sname}" class="layui-input" style="width:500px;" />
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">学生年龄：</label>
            <div class="layui-input-block">
                <input name="sage" value="${stu.sage}" class="layui-input" style="width:500px;" />
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">学生性别：</label>
            <div class="layui-input-block">
                <input type="radio" name="ssex" value="1" />男&nbsp;&nbsp;
                <input type="radio" name="ssex" value="0" />女
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">学生图像：</label>
            <input type="file" name="file">
            <div class="layui-input-block">
                <img border="1" src="${pageContext.request.contextPath}/images/${stu.simage}" width="100" height="100" /><br />
                <input type="hidden" name="simage" value="${stu.simage}" />
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">入学时间：</label>
            <div class="layui-input-block">
                <input name="stime" value="${stu.stime.toString().substring(0,10)}" class="layui-input" style="width:500px;" />
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">选择班级：</label>
            <select name="cls.cno" lay-verify="">
                <option value="">请选择班级</option>
                <c:forEach items="${clsList}" var="o" varStatus="ids">
                    <option value="${o.cno}">${o.cname}</option>
                </c:forEach>
            </select>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <input type="submit" class="layui-btn"  value="修改学生" />
            </div>
        </div>
    </form>
    <script>
        var sex = document.getElementsByName("ssex");
        var select = document.getElementsByName("cls.cno");
        //绑定性别
        console.log("${stu.ssex}")
        "${stu.ssex}" == 1 ? sex[0].checked = true : sex[1].checked = true;

        //绑定班级
        for(var i = 0; i < select[0].options.length; i ++){
            var p = select[0].options[i];
            if(p.value == "${stu.cls.cno}"){
                p.selected = true;
                break;
            }
        }
    </script>
</body>
</html>
