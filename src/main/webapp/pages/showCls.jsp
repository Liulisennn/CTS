<%--
  Created by IntelliJ IDEA.
  User: Liulisen
  Date: 2018/01/17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<html>
<head>
    <title>Class List</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
    <script>
        function loadData() {
            $("#clsTab tr:not(:first)").remove();
            $.post("${pageContext.request.contextPath}/clsController/findClsList", null, function (data) {
                console.log(data);
                if (data && data.length > 0) {
                    $.each(data, function (i, v) {
                        var tr = "<tr><td>" + (i + 1) + "</td><td>" + v[1] + "</td><td>" + v[2] + "</td><td><a href='${pageContext.request.contextPath}/clsController/getClsById/sdk/" + v [0] + "/ktl'>修改</a> | <a href='javascript:;' onclick = 'deleteCls(" + v[0] + ")'>删除</a></td></tr>";
                        $("#clsTab").append(tr);
                    });
                }
            }, "json");
        }
        window.onload = loadData;

        function deleteCls(cno) {
            $.post("${pageContext.request.contextPath}/clsController/deleteCls", "cno=" + cno, function (data) {
                if (data && data == true) {
                    loadData();
                    $("#msg").html("删除成功！").css("color","green");
                }else{
                    $("#msg").html("删除失败！").css("color","red");
                }
            }, "json");
        }
    </script>
</head>
<body>
<div style="padding: 15px;">
    <blockquote class="layui-elem-quote layui-quote-nm">班级列表</blockquote>
</div>
<div id="msg"></div>
<table class="layui-table" id="clsTab" border="1" width="500">
    <tr>
        <th>编号</th>
        <th>班级名称</th>
        <th>班级人数</th>
        <th>管理</th>
    </tr>
</table>
<div class="layui-btn layui-btn-primary">
<a href="${pageContext.request.contextPath}/pages/addCls.jsp">添加班级</a>
</div>
</body>
</html>
