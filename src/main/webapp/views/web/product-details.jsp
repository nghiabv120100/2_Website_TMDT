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
	<title>Sản phẩm chi tiết</title>
	<link href="${url}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${url}/css/font-awesome.min.css" rel="stylesheet">
	<link href="${url}/css/main.css" rel="stylesheet">
	<link href="${url}/css/responsive.css" rel="stylesheet">
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 padding-right">
				<div class="product-details"><!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
							<img src="${url}/images/nitro5.png" alt="" />
						</div>
						<div id="similar-product" class="carousel slide" data-ride="carousel">

							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<a href=""><img src="${url}/images/nitro52.png" alt=""></a>
									<a href=""><img src="${url}/images/nitro52.png" alt=""></a>
									<a href=""><img src="${url}/images/nitro52.png" alt=""></a>
								</div>
							</div>
							<!-- Controls -->
							<a class="left item-control" href="#similar-product" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							</a>
							<a class="right item-control" href="#similar-product" data-slide="next">
								<i class="fa fa-angle-right"></i>
							</a>
						</div>

					</div>
					<div class="col-sm-7">
						<div class="product-information"><!--/product-information-->
							<h2>Máy tính Aser Nitro 5</h2>
							<span>
									<span>28.790.000 ₫</span>
									<br>
									<label>Quantity:</label>
									<div class="cart_quantity_button">
										<a class="cart_quantity_up" href=""> + </a>
										<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
										<a class="cart_quantity_down" href=""> - </a>
									</div>
									<br>
									<br>
									<button type="button" class="btn btn-fefault cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
								</span>
							<p><b>Mô tả sản phẩm:</b></p>
							<p>Ngày nay, khi người dùng lựa chọn cho mình một chiếc laptop để sử dụng luôn quan tâm đến nhu cầu sử dụng vừa để làm việc vừa để giải trí chơi game. Vì vậy lựa chọn cho mình một chiếc laptop gaming là một giải pháp phù hợp cho mọi nhu cầu sử dụng của bạn. Acer Nitro 5 là chiếc laptop đến từ thương hiệu Acer sẽ mang đến một cách nhìn hoàn toàn mới về các nhu cầu sử dụng trên dòng laptop gaming có thể mang lại cho người dùng.</p>
						</div><!--/product-information-->
					</div>
				</div><!--/product-details-->
			</div>
		</div>
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script src="${url}/js/jquery.js"></script>
<script src="${url}/js/price-range.js"></script>
<script src="${url}/js/jquery.scrollUp.min.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="${url}/js/jquery.prettyPhoto.js"></script>
<script src="${url}/js/main.js"></script>
</body>
</html>