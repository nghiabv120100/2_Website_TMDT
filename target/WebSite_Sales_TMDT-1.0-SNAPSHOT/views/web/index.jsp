<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/views/web/static" var="url"> </c:url>
<c:url value="/api-user-cart" var="APIaurl"></c:url>
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
		<hr>
		<c:choose>
			<c:when test="${!empty proList}">
				<div class="row">
					<div class="col-sm-12 padding-right">
						<div class="features_items" style="min-height: 300px"><!--features_items-->
							<div class="row">
								<hr>
								<c:forEach var = "i" items="${proList}">
									<c:url value="/image/${i.getImage()}" var="imgUrl"></c:url>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<a
															href="${pageContext.request.contextPath }/list-laptop?type=detail_product&id
											=${i.getId()}&quantity=1">
														<div class="c1">
															<img height="250" width="200" class="c2" src="${imgUrl}" alt="Fail" style="width: 300px;height: 200px;padding-left: 40px;"/>
															<div class="c3">
																<a  <%--href="${APIurl}?id=${i.getId()}"--%>
																		href="${pageContext.request.contextPath }/list-laptop?type=detail_product&id=${i.getId()}&quantity=1"
																		class="btn btn-default add-to-cart"><i
																		class="fa fa-shopping-cart"></i>Chi tiết </a>
															</div>
														</div>
													</a>
													<h2>${i.getPrice()} ₫</h2>
													<p>${i.getProductName()}</p>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="row text-center">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#">Trước</a></li>
									<c:forEach var="i" begin="1" end="${numOfPages}">
										<%--									<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/client-product-list?type=${type}&cate_id=${cate_id}&detail_cate_id=${detail_cate_id}&keyword=${keyword}&page=${i}">${i}</a></li>--%>
										<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/client-searchByProperties?&page=${i}">${i}</a></li>
									
									</c:forEach>
									<li class="page-item"><a class="page-link" href="#">Sau</a></li>
								</ul>
							</div>
						</div><!--features_items-->
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<c:redirect url="/list-laptop?type=list&page=1"></c:redirect>
			</c:otherwise>
		</c:choose>
		<div class="row">
			<div class="col-sm-12 padding-right">
				<div class="features_items" style="min-height: 300px"><!--features_items-->
					<div class="row">
						<hr>
						<c:forEach var = "i" items="${proList}">
							<c:url value="/image/${i.getImage()}" var="imgUrl"></c:url>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a
													href="${pageContext.request.contextPath }/list-laptop?type=detail_product&id
											=${i.getId()}&quantity=1">
												<div class="c1">
													<img height="250" width="200" class="c2" src="${imgUrl}" alt="Fail" style="width: 300px;height: 200px;padding-left: 40px;"/>
													<div class="c3">
														<a  <%--href="${APIurl}?id=${i.getId()}"--%>
																href="${pageContext.request.contextPath }/list-laptop?type=detail_product&id=${i.getId()}&quantity=1"
																class="btn btn-default add-to-cart"><i
																class="fa fa-shopping-cart"></i>Chi tiết sản phẩm</a>
													</div>
												</div>
											</a>
											<h2>${i.getPrice()} ₫</h2>
											<p>${i.getProductName()}</p>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="row text-center">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">Trước</a></li>
							<c:forEach var="i" begin="1" end="${numOfPages}">
								<%--									<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/client-product-list?type=${type}&cate_id=${cate_id}&detail_cate_id=${detail_cate_id}&keyword=${keyword}&page=${i}">${i}</a></li>--%>
								<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/client-searchByProperties?&page=${i}">${i}</a></li>
							
							</c:forEach>
							<li class="page-item"><a class="page-link" href="#">Sau</a></li>
						</ul>
					</div>
				</div><!--features_items-->
			</div>
		</div>
	</div>
<%--	<div class="container">
		
		
		&lt;%&ndash;<div class="row">
			<div class="col-sm-12 padding-right">
				<div class="features_items"><!--features_items-->
					<h2 class="title text-center">SẢN PHẨM</h2>
					<c:choose>
						<c:when test="${!empty proList}">
						
						</c:when>
						<c:otherwise>
							<c:redirect url="/list-laptop?type=list&page=1"></c:redirect>
						</c:otherwise>
					</c:choose>
					
				</div><!--features_items-->

				<div class="row">
					<div class="col-lg-3">
						<img src="https://xgear.vn/wp-content/uploads/2020/02/Acer-Gaming.jpg">
					</div>
					<div class="col-lg-9">
						<div class="category-tab"><!--category-tab-->
							<div class="col-sm-12">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tshirt" data-toggle="tab">Acer</a></li>
								</ul>
								<c:choose>
									<c:when test="${!empty proList}">
										<c:forEach var = "i" items="${proList}">
											<c:url value="/image/${i.getImage()}" var="imgUrl"></c:url>
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a
																	href="${pageContext.request.contextPath }/list-latop?type=detail_product&id=${i.getId()}&quantity=1">
																<div class="c1">
																	<img height="250" width="200" class="c2" src="${imgUrl}" alt="Fail" style="width: 300px;height: 200px;padding-left: 40px;"/>
																	<div class="c3">
																		<a  &lt;%&ndash;href="${APIurl}?id=${i.getId()}"&ndash;%&gt;
																				href="${pageContext.request.contextPath }/list-laptop?type=detail_product&id=${i.getId()}&quantity=1"
																				class="btn btn-default add-to-cart"><i
																				class="fa fa-shopping-cart"></i>Chi tiết sản phẩm</a>
																	</div>
																</div>
															</a>
															<h2>${i.getPrice()} ₫</h2>
															<p>${i.getProductName()}</p>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<c:redirect url="/list-laptop?type=detail_category&detail_cate_id=1&page=1"></c:redirect>
									</c:otherwise>
								</c:choose>
							
							</div>

							
						</div><!--/category-tab-->
					</div>
				</div>

				<div class="row">
					<div class="col-lg-9">
						<div class="category-tab"><!--category-tab-->
							<div class="col-sm-12">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tshirt" data-toggle="tab">Asus</a></li>
								</ul>
								<c:choose>
									<c:when test="${!empty proList}">
										<c:forEach var = "i" items="${proList}">
											<c:url value="/image/${i.getImage()}" var="imgUrl"></c:url>
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a
																	href="${pageContext.request.contextPath }/list-latop?type=detail_product&id=${i.getId()}&quantity=1">
																<div class="c1">
																	<img height="250" width="200" class="c2" src="${imgUrl}" alt="Fail" style="width: 300px;height: 200px;padding-left: 40px;"/>
																	<div class="c3">
																		<a  &lt;%&ndash;href="${APIurl}?id=${i.getId()}"&ndash;%&gt;
																				href="${pageContext.request.contextPath }/list-laptop?type=detail_product&id=${i.getId()}&quantity=1"
																				class="btn btn-default add-to-cart"><i
																				class="fa fa-shopping-cart"></i>Chi tiết sản phẩm</a>
																	</div>
																</div>
															</a>
															<h2>${i.getPrice()} ₫</h2>
															<p>${i.getProductName()}</p>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<c:redirect url="/list-laptop?type=detail_category&detail_cate_id=2&page=1"></c:redirect>
									</c:otherwise>
								</c:choose>
						</div><!--/category-tab-->
					</div>
					<div class="col-lg-3">
						<img src="https://xgear.vn/wp-content/uploads/2019/06/ROG-1-1.jpg">
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3">
						<img src="https://xgear.vn/wp-content/uploads/2020/12/MSI-trang-ch%E1%BB%A7.jpg	">
					</div>
					<div class="col-lg-9">
						<div class="category-tab"><!--category-tab-->
							<div class="col-sm-12">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tshirt" data-toggle="tab">MSI</a></li>
								</ul>
								<c:choose>
									<c:when test="${!empty proList}">
										<c:forEach var = "i" items="${proList}">
											<c:url value="/image/${i.getImage()}" var="imgUrl"></c:url>
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a
																	href="${pageContext.request.contextPath }/list-latop?type=detail_product&id=${i.getId()}&quantity=1">
																<div class="c1">
																	<img height="250" width="200" class="c2" src="${imgUrl}" alt="Fail" style="width: 300px;height: 200px;padding-left: 40px;"/>
																	<div class="c3">
																		<a  &lt;%&ndash;href="${APIurl}?id=${i.getId()}"&ndash;%&gt;
																				href="${pageContext.request.contextPath }/list-laptop?type=detail_product&id=${i.getId()}&quantity=1"
																				class="btn btn-default add-to-cart"><i
																				class="fa fa-shopping-cart"></i>Chi tiết sản phẩm</a>
																	</div>
																</div>
															</a>
															<h2>${i.getPrice()} ₫</h2>
															<p>${i.getProductName()}</p>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<c:redirect
												url="/list-laptop?type=detail_category&detail_cate_id=3 &page=1"></c:redirect>
									</c:otherwise>
								</c:choose>
							</div>
						</div><!--/category-tab-->
					</div>
				</div>
		</div>
	</div>
		</div>&ndash;%&gt;
	</div>--%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script src="${url}/js/brand.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
</body>
</html>
