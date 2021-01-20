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
	<title>Trang chủ</title>
	<link href="${url}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${url}/css/font-awesome.min.css" rel="stylesheet">
	<link href="${url}/css/main.css" rel="stylesheet">
	<link href="${url}/css/responsive.css" rel="stylesheet">
	<!--  -->
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
<section id="slider"><!--slider-->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="slider-carousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators" style="z-index: 1">
						<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="${url}/images/bn1.png" class="girl img-responsive" alt="" width="950px"/>
						</div>
						<div class="item">
							<img src="${url}/images/bn2.png" class="girl img-responsive" alt="" width="950px"/>
						</div>
						<div class="item">
							<img src="${url}/images/bn3.png" class="girl img-responsive" alt="" width="950px"/>
						</div>

					</div>

					<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
						<i class="fa fa-angle-left"></i>
					</a>
					<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
						<i class="fa fa-angle-right"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</section><!--/slider-->

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 padding-right">
				<div class="features_items"><!--features_items-->
					<h2 class="title text-center">SẢN PHẨM</h2>
					<div class="col-sm-4">
						<a href="./product-details.jsp">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<div class="c1">
											<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
											<div class="c3">
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
										<h2>28.790.000 ₫</h2>
										<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
										<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4">
						<a href="./product-details.jsp">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<div class="c1">
											<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
											<div class="c3">
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
										<h2>28.790.000 ₫</h2>
										<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
										<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4">
						<a href="./product-details.jsp">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<div class="c1">
											<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
											<div class="c3">
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
										<h2>28.790.000 ₫</h2>
										<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
										<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4">
						<a href="./product-details.jsp">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<div class="c1">
											<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
											<div class="c3">
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
										<h2>28.790.000 ₫</h2>
										<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
										<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4">
						<a href="./product-details.jsp">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<div class="c1">
											<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
											<div class="c3">
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
										<h2>28.790.000 ₫</h2>
										<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
										<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4">
						<a href="./product-details.jsp">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<div class="c1">
											<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
											<div class="c3">
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
										<h2>28.790.000 ₫</h2>
										<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
										<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
									</div>
								</div>
							</div>
						</a>
					</div>

				</div><!--features_items-->

				<div class="category-tab"><!--category-tab-->
					<div class="col-sm-12">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tshirt" data-toggle="tab">Acer</a></li>
						</ul>
					</div>
					<div class="tab-content">
						<div class="tab-pane fade active in" id="tshirt" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="blazers" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="sunglass" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="kids" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="poloshirt" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div><!--/category-tab-->

				<div class="category-tab"><!--category-tab-->
					<div class="col-sm-12">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tshirt" data-toggle="tab">Asus</a></li>
						</ul>
					</div>
					<div class="tab-content">
						<div class="tab-pane fade active in" id="tshirt" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="blazers" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="sunglass" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="kids" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="poloshirt" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div><!--/category-tab-->

				<div class="category-tab"><!--category-tab-->
					<div class="col-sm-12">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tshirt" data-toggle="tab">Dell</a></li>
						</ul>
					</div>
					<div class="tab-content">
						<div class="tab-pane fade active in" id="tshirt" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="blazers" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="sunglass" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tab-pane fade" id="kids" >
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="#">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="#" class="btn btn-default add-to-cart"><i
																class7="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-sm-3">
								<a href="./product-details.jsp">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<div class="c1">
													<img src="${url}/images/nitro51.png" alt="Avatar" class="c2" style="width:100%">
													<div class="c3">
														<a href="#" class="btn btn-default add-to-cart"><i
																class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
												<h2>28.790.000 ₫</h2>
												<p>Laptop Acer Nitro 5 AN515 54 779S i7</p>
												<a href="./cart.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
						
					</div>
				</div><!--/category-tab-->
			</div>
		</div>
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script src="${url}/js/jquery.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="${url}/js/jquery.scrollUp.min.js"></script>
<script src="${url}/js/price-range.js"></script>
<script src="${url}/js/jquery.prettyPhoto.js"></script>
<script src="${url}/js/main.js"></script>
</body>
</html>
