<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/views/web/static" var="url"> </c:url>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>index</title>
        <link rel="stylesheet" href="${url}/css/menu.css">
        <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${url}/css/font-awesome.min.css" rel="stylesheet">
        <link href="${url}/css/main.css" rel="stylesheet">

    </head>
<body>
    <header id="header"><!--header-->      
        <div class="header-middle"><!--header-middle-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="logo pull-left">
                            <a href="index.jsp"><img src="${url}/images/logo1.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="checkout.jsp"><i class="fa fa-user"></i> Account</a></li>
                                <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                                <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-middle-->
    </header><!--/header-->

    <nav>
        <ul>
            <li><a href="index.jsp">Trang chủ</a></li>
            <li><a href="shop.jsp">Danh mục sản phẩm</a>
                <ul>
                    <li><a href="#">Máy tính</a>
                        <ul>
                            <li><a href="#">Acer</a></li>
                            <li><a href="#">Asus</a></li>
                            <li><a href="#">Dell</a></li>
                            <li><a href="#">Apple</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Laptop</a>
                        <ul>
                            <li><a href="#">Acer</a></li>
                            <li><a href="#">Asus</a></li>
                            <li><a href="#">Dell</a></li>
                            <li><a href="#">Apple</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Chuột</a>
                        <ul>
                            <li><a href="#">
                                Logitech
                            </a></li>
                        </ul>
                    </li>
                    <li><a href="#">Bàn phím</a>
                        <ul>
                            <li><a href="#">Phím cơ</a></li>
                            <li><a href="#">Giả cơ</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Tai nghe</a></li>
                </ul>
            </li>
            <li><a href="salespocily.jsp">Chính sách bán hàng</a></li>
            <li><a href="map.jsp">Liên hệ</a></li>
        </ul>
    </nav>
</body>
</html>