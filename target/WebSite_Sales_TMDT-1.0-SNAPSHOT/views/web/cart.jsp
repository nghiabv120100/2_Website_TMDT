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
    <title>Cart | E-Shopper</title>
    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${url}/css/font-awesome.min.css" rel="stylesheet">
	<link href="${url}/css/main.css" rel="stylesheet">
	<link href="${url}/css/responsive.css" rel="stylesheet">
</head>

<body>
    <jsp:include page="header.jsp"></jsp:include>
	<section id="cart_items">
		<div class="container">
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image"></td>
							<td class="description"></td>
							<td class="price">Giá</td>
							<td class="quantity">Số lượng</td>
							<td class="total">Tổng cộng</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="cart_product">
								<a href=""><img src="${url}/images/nitro52.png" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">Laptop Acer Nitro 5</a></h4>
								<p>Web ID: 1089772</p>
							</td>
							<td class="cart_price">
								<p>28.790.000 ₫</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">28.790.000 ₫</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
							</td>
						</tr>

						<tr>
							<td class="cart_product">
								<a href=""><img src="${url}/images/nitro52.png" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">Laptop Acer Nitro 5</a></h4>
								<p>Web ID: 1089772</p>
							</td>
							<td class="cart_price">
								<p>28.790.000 ₫</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">28.790.000 ₫</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
							</td>
						</tr>
						<tr>
							<td class="cart_product">
								<a href=""><img src="${url}/images/nitro52.png" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">Laptop Acer Nitro 5</a></h4>
								<p>Web ID: 1089772</p>
							</td>
							<td class="cart_price">
								<p>28.790.000 ₫</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">28.790.000 ₫</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section>
		<div class="container">
			<div class="step-one">
				<h2 class="heading">Tiến hành đặt hàng</h2>
			</div>
			<div class="shopper-informations">
				<div class="row">
					<div class="col-sm-6">
						<div class="shopper-info">
							<p>Thông tin cá nhân</p>
							<form>
								<input type="text" placeholder="Tên">
								<input type="text" placeholder="Emal">
								<input type="text" placeholder="Địa chỉ">
								<input type="password" placeholder="Số điện thoại">
							</form>
						</div>
					</div>
				</div>
			</div>
			<a class="btn btn-primary" href="">Đặt hàng</a>
		</div>
	</section>

	<br>
	<jsp:include page="footer.jsp"></jsp:include>
    <script src="${url}/js/jquery.js"></script>
	<script src="${url}/js/bootstrap.min.js"></script>
	<script src="${url}/js/jquery.scrollUp.min.js"></script>
    <script src="${url}/js/jquery.prettyPhoto.js"></script>
    <script src="${url}/js/main.js"></script>
</body>
</html>