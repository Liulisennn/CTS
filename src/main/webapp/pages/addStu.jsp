<%--
  Created by IntelliJ IDEA.
  User: Liulisen
  Date: 2018/01/17
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>AddStu</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">

</head>
<body>
<div style="padding: 15px;">
    <blockquote class="layui-elem-quote layui-quote-nm">添加学生</blockquote>
</div>
    <div id="msg"></div>
    <fmt:formatDate var="intime"  value="${backStu.stime}" pattern="yyyy-MM-dd"/>
    <form action="${pageContext.request.contextPath}/stuController/addStu" method="post" enctype="multipart/form-data">
        <div class="layui-form-item">
            <label class="layui-form-label">学生姓名：</label>
            <div class="layui-input-block">
                <input name="sname" value="${backStu.sname}" class="layui-input" style="width:500px;" />
            </div>
        </div>
        <form:errors path="stu.sname" cssStyle="color: red"/>

        <div class="layui-form-item">
            <label class="layui-form-label">学生年龄：</label>
            <div class="layui-input-block">
                <input name="sage" value="${backStu.sage}" class="layui-input" style="width:500px;" />
            </div>
        </div>
        <form:errors path="stu.sage" cssStyle="color: red"/>

        <div class="layui-form-item">
            <label class="layui-form-label">学生性别：</label>
            <div class="layui-input-block">
                <input type="radio" name="ssex" value="1" checked />男&nbsp;&nbsp;
                <input type="radio" name="ssex" value="0" />女
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">学生图像：</label>
            <input type="file" name="file">
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">入学时间：</label>
            <div class="layui-input-block">
                <input name="stime" value="${intime}" class="layui-input" style="width:500px;" />
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">选择班级：</label>
            <select name="cls.cno" lay-verify="">
                <option value="">请选择班级</option>
                <c:forEach items="${requestScope.clsList}" var="o" varStatus="ids">
                    <option value="${o.cno}">${o.cname}</option>
                </c:forEach>
            </select>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <input type="submit" class="layui-btn"  value="添加学生" />
            </div>
        </div>
    </form>
</body>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script>

    if("${addMessage}" == "1")
        $("#msg").html("添加成功！").css("color","green");
    else if("${addMessage}" == "-1")
        $("#msg").html("添加失败！").css("color","red");

</script>
<script>
    var sex = document.getElementsByName("ssex");
    var select = document.getElementsByName("cls.cno");
    //绑定性别
    console.log("${backStu.ssex}")
    "${backStu.ssex}" === 0 || "${backStu.ssex}" === "0" ? sex[1].checked = true : sex[0].checked = true;

    //绑定班级
    for(var i = 0; i < select[0].options.length; i ++){
        var p = select[0].options[i];
        if(p.value == "${backStu.cls.cno}"){
            p.selected = true;
            break;
        }
    }
</script>
</html>
