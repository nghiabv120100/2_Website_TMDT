<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:url value="/views/admin/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Order Management</title>
<!-- BOOTSTRAP STYLES-->
<link href="${url}/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${url}/css/font-awesome.css" rel="stylesheet" />
<!-- MORRIS CHART STYLES-->

<!-- CUSTOM STYLES-->
<link href="${url}/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link href="${url}/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
</head>
<body>
	<div id="wrapper">

		<jsp:include page="/views/admin/view/nav-bar.jsp"></jsp:include>

		<!-- /. NAV TOP  -->
		<jsp:include page="/views/admin/view/slide-bar.jsp"></jsp:include>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Order Management</h2>


					</div>
				</div>
				<!-- /. ROW  -->
				<hr />

				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-heading">Advanced Tables</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>index</th>
												<th>ID</th>
												<th>Buyer</th>
												<th>Email</th>
												<th>Date</th>
												<th>Product</th>
												<th>Quantity</th>
												<th>Price</th>
												<th>Sum</th>
												<th>Status</th>
												<th>Action</th>


											</tr>
										</thead>
										<tbody>
											</a>
											<c:set var="index" value="${0}" />
											<c:forEach items="${cartItemList }" var="cartItem">
												<tr class="odd gradeX">
													<c:set var="index" value="${index + 1}" />
<%--													xác ??nh gi? hàng --%>
													<c:forEach items="${cartList}" var="i_cart">
														<c:if test="${cartItem.cartId==i_cart.id}">
															<c:set var="cart" value="${i_cart}" />
														</c:if>
													</c:forEach>
<%--													Xác ??nh ng??i mua s?n ph?m--%>
													<c:forEach items="${userList}" var="user">
														<c:if test="${cart.userID==user.id}">
															<c:set var="buyer" value="${user}" />
														</c:if>
													</c:forEach>
<%--													Xác ??nh s?n ph?m--%>
													<c:forEach items="${proList}" var="pro">
														<c:if test="${cartItem.productId==pro.id}">
															<c:set var="product" value="${pro}" />
														</c:if>
													</c:forEach>

													<td>${index }</td>
													<td>${cart.id }</td>
													<td>${buyer.username }</td>
													<td>${buyer.email }</td>
													<td>${cart.buyDate }</td>
													<td>${product.productName}</td>
													<td>${cartItem.quantity }</td>
													<td>${product.price }</td>
													<td>${cartItem.quantity* cartItem.unitPrice }</td>
													<td class="center">Pending</td>
													<td><a
														href="<c:url value='/admin/order/edit?id=${list.id }'/>"
														class="center">Edit</a> |
														<a id="btnDelete" class="center">Delete</a></td>

												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--End Advanced Tables -->
					</div>
				</div>

			</div>

		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${url}/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${url}/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${url}/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="${url}/js/dataTables/jquery.dataTables.js"></script>
	<script src="${url}/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${url}/js/custom.js"></script>

</body>
</html>