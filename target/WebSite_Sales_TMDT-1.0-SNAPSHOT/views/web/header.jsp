<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/views/web/static" var="url"> </c:url>
<c:url value="/views/web" var="Pathurl"> </c:url>
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
                            <li><a href="${pageContext.request.contextPath }/client-cart-list"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                            <li><a href="${Pathurl}/login.jsp"><i class="fa fa-lock"></i> Login</a></li>
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
                <li><a href="${pageContext.request.contextPath }/client-product-list?type=category&cate_id=1">Laptop</a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath }/client-product-list?type=detail_category&detail_cate_id=1">Laptop Acer</a></li>
                        <li><a href="${pageContext.request.contextPath }/client-product-list?type=detail_category&detail_cate_id=2">Laptop Asus</a></li>
                        <li><a href="${pageContext.request.contextPath }/client-product-list?type=detail_category&detail_cate_id=3">Laptop Dell</a></li>
                        <li><a href="${pageContext.request.contextPath }/client-product-list?type=detail_category&detail_cate_id=4">Laptop Lenovo</a></li>
                        <li><a href="${pageContext.request.contextPath }/client-product-list?type=detail_category&detail_cate_id=5">Laptop HP</a></li>
                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath }/client-product-list?type=category&cate_id=2">Màn Hình</a>
                    <ul>
                        <li><a href="#">Màn Hình Samsung </a></li>
                        <li><a href="#">Màn Hình ASUS</a></li>
                        <li><a href="#">Màn Hình Acer</a></li>
                        <li><a href="#">Màn Hình Gigabyte</a></li>
                        <li><a href="#">Màn Hình MSI</a></li>
                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath }/client-product-list?type=category&cate_id=3">Chuột chơi game</a>
                    <ul>
                        <li><a href="#">Logitech</a></li>
                        <li><a href="#">Kingston HyperX</a></li>
                        <li><a href="#">Razer</a></li>
                        <li><a href="#">Asus</a></li>
                        <li><a href="#">MSI</a></li>
                        <li><a href="#">Hãng Khác</a></li>


                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath }/client-product-list?type=category&cate_id=4">Bàn phím</a>
                    <ul>
                        <li><a href="#">Logitech</a></li>
                        <li><a href="#">Kingston HyperX</a></li>
                        <li><a href="#">Dareu</a></li>
                        <li><a href="#">Cooler Master</a></li>
                        <li><a href="#">Corsier</a></li>
                        <li><a href="#">Hãng Khác</a></li>
                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath }/client-product-list?type=category&cate_id=5">Tai nghe</a>
                    <ul>
                        <li><a href="#">Logitech</a></li>
                        <li><a href="#">Kingston HyperX</a></li>
                        <li><a href="#">Dareu</a></li>
                        <li><a href="#">Cooler Master</a></li>
                        <li><a href="#">Corsier</a></li>
                        <li><a href="#">Hãng Khác</a></li>
                    </ul>
                </li>

            </ul>
        </li>
        <li><a href="${Pathurl}/salespolicy.jsp">Chính sách bán hàng</a></li>
        <li><a href="${Pathurl}/map.jsp">Liên hệ</a></li>
    </ul>
</nav>
</body>
</html>