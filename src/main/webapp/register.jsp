<%--
  Created by IntelliJ IDEA.
  User: Liulisen
  Date: 2018/1/16
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <!-- /.website title -->
    <title>学生管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <!-- CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet" media="screen">
    <link href="css/owl.theme.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <!-- Colors -->
    <link href="css/css-login.css" rel="stylesheet" media="screen">
    <!-- Google Fonts -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic" />
</head>

<body data-spy="scroll" data-target="#navbar-scroll">

<!-- Login -->
<div class="fullscreen landing parallax" style="background-image:url('images/background.jpg');" data-img-width="1355" data-img-height="655" data-diff="100">

    <div class="overlay">
        <div class="container">
            <div class="row">
                <div class="col-md-7">

                    <!-- /.logo -->
                    <div class="logo wow fadeInDown"> <a href=""><img src="images/logo.png" alt="logo"></a></div>

                    <!-- /.main title 主标题 -->
                    <h1 class="wow fadeInLeft">
                        用户注册<br/>
                        User registration
                    </h1>

                    <!-- /.简介 -->
                    <div class="landing-text wow fadeInUp" style="height:157px">
                    </div>
                    <div class="head-btn wow fadeInLeft">
                    </div>
                </div>

                <!-- /.login form 注册表格-->
                <div class="col-md-5">
                    <div class="signup-header wow fadeInUp">
                        <h3 class="form-title text-center">register</h3>
                        <form class="form-header" action="userAction/RegisterUser" method="post" onsubmit="return checkPwd();">
                            <div class="form-group">
                                <input class="form-control input-lg" name="uname" type="text" placeholder="输入用户名" required>
                            </div>
                            <div class="form-group">
                                <input class="form-control input-lg" name="upwd" type="password" placeholder="输入密码" required>
                            </div>
                            <div class="form-group">
                                <input class="form-control input-lg" name="rupwd" type="password" placeholder="确认密码" required>
                            </div>
                            <div class="form-group last">
                                <input type="submit" class="btn btn-warning btn-block btn-lg" value="立即注册">
                            </div>
                            <br/>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.javascript files -->
<script src="js/jquery-3.2.1.js"></script>
<script>
    new WOW().init();
</script>
<script type="text/javascript">
    function checkPwd() {
        var pwd=document.getElementsByName("upwd")[0].value;
        var repwd=document.getElementsByName("rupwd")[0].value;
        if(pwd==repwd)
            return true;
        else{
            alert("密码和确认密码不一致");
            return false;
        }
    }
</script>
</body>
</html>
