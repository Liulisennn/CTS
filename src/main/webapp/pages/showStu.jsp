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
    <title>Show Stu</title>
</head>
<body>
<div style="padding: 15px;">
    <blockquote class="layui-elem-quote layui-quote-nm">学生列表</blockquote>
</div>
    <c:if test="${updateMsg == '1'}">
        <p style="color:green">修改成功</p>
    </c:if>
    <c:if test="${deleteMsg == '1'}">
        <p style="color:green">删除成功</p>
    </c:if>
    <c:if test="${deleteMsg == '-1'}">
        <p style="color:green">删除失败</p>
    </c:if>
    <table class="layui-table" border="1" width="800">
        <tr>
            <th>编号</th>
            <th>学生图像</th>
            <th>班级名称</th>
            <th>学生姓名</th>
            <th>学生年龄</th>
            <th>学生性别</th>
            <th>入学时间</th>
            <th>管理</th>
        </tr>
        <c:forEach items="${stuList}" var="o" varStatus="ids">
            <tr>
                <td>${ids.count}</td>
                <td align="center"><img src="${pageContext.request.contextPath}/images/${o[0].simage}" width="50" height="50"></td>
                <td>${o[1].cname}</td>
                <td>${o[0].sname}</td>
                <td>${o[0].sage}</td>
                <td>${o[0].ssex == 1?"男":"女"}</td>
                <td>${o[0].stime.toString().substring(0,10)}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/stuController/getStuById/stk/${o[0].sno}/ktl">修改</a>
                    <a href="${pageContext.request.contextPath}/stuController/deleteStu/stk/${o[0].sno}/ktl">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
<div class="layui-btn layui-btn-primary">
    <a href="${pageContext.request.contextPath}/stuController/findClsList">添加学生</a>
</div>
</body>
</html>
