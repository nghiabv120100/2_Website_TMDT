<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/views/web" var="login"></c:url>
<c:url value="/trang-chu" var="HomeUrl"> </c:url>
<html>
<head>
    <title>Title</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" rel="stylesheet">
    <!------ Include the above in your HEAD tag ---------->
    <style>

        body {
        font-family: "Lato", sans-serif;
        }



        .main-head{
        height: 150px;
        background: #FFF;

        }

        .sidenav {
        height: 100%;
        background-color: #000;
        overflow-x: hidden;
        padding-top: 20px;
        }


        .main {
        padding: 0px 10px;
        }

        @media screen and (max-height: 450px) {
        .sidenav {padding-top: 15px;}
        }

        @media screen and (max-width: 450px) {
        .login-form{
        margin-top: 10%;
        }

        .register-form{
        margin-top: 10%;
        }
        }

        @media screen and (min-width: 768px){
        .main{
        margin-left: 40%;
        }

        .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
            background: url("https://wallpaperaccess.com/full/1892752.jpg");
            box-shadow: 10px 10px 30px rgba(0,0,0,0.3);
        }

        .login-form{
        margin-top: 80%;
        }

        .register-form{
        margin-top: 20%;
        }
        }


        .login-main-text{
        margin-top: 20%;
        padding: 60px;
        color: #fff;
        }

        .login-main-text h2{
        font-weight: 300;
        }

        .btn-black{
        background-color: #000 !important;
        color: #fff;
        }
    </style>
</head>
<body>

    <div class="sidenav text-center align-middle" >
        <div class="login-main-text">
            <h1>Đăng nhập<br><br><br><br><br><br>
                <a href="${HomeUrl}?action=home"><i style="color: white" class="fas fa-home fa-2x"></i></a></h1>
        </div>
    </div>

<div class="main">
    <div class="col-md-6 col-sm-12">
        <div class="login-form">
            <form action="${pageContext.request.contextPath }/dang-nhap" method="post">
                <div class="form-group">
                    <h3>Tên đăng nhập</h3>
                    <input name="username" type="text" class="form-control" placeholder="Tên đăng nhập">
                </div>
                <div class="form-group">
                    <h3>Mật khẩu</h3>
                    <input name="password" type="password" class="form-control" placeholder="Mật khẩu">
                </div>
<<<<<<< HEAD
                <button type="submit" class="btn btn-black" >Login</button>
=======
                <button type="submit" class="btn btn-success btn-primary" >Đăng nhập</button>

>>>>>>> b791c91f4196ff6475ed1850eeda5aeb2fc075cf
                <input type="hidden" name="action" value="login">

            </form>
            <form action="${pageContext.request.contextPath }/dang-ky?type=register" method="get ">
                <button type="submit" class="btn btn-link">Đăng kí</button>
                <input type="hidden" name="action" value="register">
                <button type="button" class="btn btn-link" style="padding-left: 180px">Quên mật khẩu?</button>
            </form>

        </div>
    </div>
</div>
</body>
</html>
