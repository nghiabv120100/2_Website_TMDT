<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url value="/views/web/static" var="url"> </c:url>
<c:url value="/api-user-cart" var="APIaurl"></c:url>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Sản phẩm</title>
    <link href="${url}css/bootstrap.min.css" rel="stylesheet">
    <link href="${url}css/font-awesome.min.css" rel="stylesheet">
	<link href="${url}css/main.css" rel="stylesheet">
	<link href="${url}css/responsive.css" rel="stylesheet">
</head>

<body>
    <jsp:include page="header.jsp"></jsp:include>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Shop</h2>

						<c:forEach var = "i" items="${proList}">
							<c:url value="/image/6.jpg" var="imgUrl"></c:url>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img src="${imgUrl}" alt="Fail" />
											<h2>${i.getPrice()} ₫</h2>
											<p>${i.getProductName()}</p>
												<a  <%--href="${APIurl}?id=${i.getId()}"--%> onclick="addToCart(${i.getId()})" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
<%--												<button onclick="addToCart(1)" class="btn btn-default add-to-cart"><i  class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>--%>

										</div>
									</div>
								</div>
							</div>
						</c:forEach>

						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	<script src="${url}/js/jquery.js"></script>
	<script src="${url}/js/price-range.js"></script>
    <script src="${url}/js/jquery.scrollUp.min.js"></script>
	<script src="${url}/js/bootstrap.min.js"></script>
    <script src="${url}/js/jquery.prettyPhoto.js"></script>
    <script src="${url}/js/main.js"></script>
	<script>
		function addToCart(data){
			$.ajax({
				url: '${APIaurl}',
				type: 'POST',
				enctype: 'multipart/form-data',
				processData:false,
				contentType: 'application/json',
				data:JSON.stringify(data),
				dataType: 'json',

				success: function (result){
					console.log("Success");
					console.log(data);
					<%--window.location.href = "${PCurl}?type=list&message=insert_success";--%>
				},
				errMode: function (error){
					console.log("Error");
				}
			})
		};
	</script>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>