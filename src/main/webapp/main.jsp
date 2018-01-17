<%--
  Created by IntelliJ IDEA.
  User: Liulisen
  Date: 2018/1/16
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>学生管理系统</title>
    <style type="text/css">
        body{
            margin: 0;
            padding: 0;
        }
        #myiframe{
            width: 1160px;
            height: 560px;
            border: 0px;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">学生管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="javascript:toContext();">关于</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    当前用户：${loginUser.uname}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">修改密码</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="index.jsp">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:toContext();">首页</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">班级管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:toClassList();">班级列表</a></dd>
                        <dd><a href="javascript:toaddClass();">添加班级</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">学生管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:toStudentList();" >学生信息</a></dd>
                        <dd><a href="javascript:toAddStudent();">添加学生</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <iframe id="myiframe" src="${pageContext.request.contextPath}/pages/Context.jsp" ></iframe>
    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
    //跳转到关于系统页面
    function toContext(){
        $("#myiframe").attr("src","${pageContext.request.contextPath}/pages/Context.jsp")
    }

    //跳转到班级列表页面
    function toClassList(){
        $("#myiframe").attr("src","${pageContext.request.contextPath}/pages/showCls.jsp");
    }

    //跳转到添加班级页面
    function toaddClass() {
        $("#myiframe").attr("src","${pageContext.request.contextPath}/pages/addCls.jsp");
    }

    //跳转到学生列表页面
    function toStudentList(){
        $("#myiframe").attr("src","${pageContext.request.contextPath}/stuController/findStuList");
    }

    //跳转到添加学生页面
    function toAddStudent() {
        $("#myiframe").attr("src","${pageContext.request.contextPath}/stuController/findClsList");
    }
</script>
</body>
</html>