<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
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
												<th>Sum</th>
												<th>Status</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											</a>
											<%--xác ??nh gi? hàng --%>
											<c:forEach items="${cartList}" var="cart">
												<c:set var="index" value="${0}" />

												<c:forEach items="${userList}" var="user">
													<c:if test="${cart.userID==user.id}">
														<c:set var="buyer" value="${user}" />
													</c:if>
												</c:forEach>

												<c:forEach items="${customerList}" var="customer">
													<c:if test="${cart.customerID==customer.id}">
														<c:set var="buyer" value="${customer}" />
													</c:if>
												</c:forEach>
												<tr>
													<td>${index }</td>
													<td>${cart.id }</td>
													<td>${buyer.username }</td>
													<td>${buyer.email }</td>
													<td>${cart.buyDate }</td>
													<td></td>
													<td class="center">Pending</td>
													<td><a
															href="<c:url value='/admin/order/edit?id=${list.id }'/>"
															class="center" data-toggle="modal"  data-target="#oderlist${cart.id}">Edit</a> |
														<a id="btnDelete" class="center">Delete</a>

													</td>
												</tr>

											</c:forEach>
										</tbody>
									</table>
											<%--<c:forEach items="${cartItemList }" var="cartItem">
												<tr class="odd gradeX">
													<c:set var="index" value="${index + 1}" />
&lt;%&ndash;													xác ??nh gi? hàng &ndash;%&gt;
													<c:forEach items="${cartList}" var="i_cart">
														<c:if test="${cartItem.cartId==i_cart.id}">
															<c:set var="cart" value="${i_cart}" />
														</c:if>
													</c:forEach>
&lt;%&ndash;													Xác ??nh user mua s?n ph?m&ndash;%&gt;
													<c:forEach items="${userList}" var="user">
														<c:if test="${cart.userID==user.id}">
															<c:set var="buyer" value="${user}" />
														</c:if>
													</c:forEach>
														&lt;%&ndash;Xác dinh customer mua s?n ph?m&ndash;%&gt;
													<c:forEach items="${customerList}" var="customer">
														<c:if test="${cart.customerID==customer.id}">
															<c:set var="buyer" value="${customer}" />
														</c:if>
													</c:forEach>
&lt;%&ndash;													Xác ??nh s?n ph?m&ndash;%&gt;
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
													<td>${cartItem.quantity* cartItem.unitPrice }</td>
													<td class="center">Pending</td>
													<td><a
														href="<c:url value='/admin/order/edit?id=${list.id }'/>"
														class="center" data-toggle="modal" data-target="#oderlist">Edit</a> |
														<a id="btnDelete" class="center">Delete</a></td>
												</tr>
											</c:forEach>--%>

								</div>
							</div>
						</div>
						<!--End Advanced Tables -->
					</div>
				</div>
				<c:forEach items="${cartList}" var="cart">
					<div class="modal fade" id="oderlist${cart.id}">
						<div class="modal-dialog modal-dialog-centered modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">Chi  tiết đơn hàng</h4>
								</div>
								<div class="modal-body">
									<table class="table table-condensed">
										<thead>

										<tr class="cart_menu">
											<td class="image">Ảnh</td>
											<td class="description">Tên Sản Phẩm</td>
											<td class="price">Giá</td>
											<td class="quantity">Số Lượng</td>
											<td class="total">Tổng Tiền</td>
										</tr>
										</thead>
										<tbody>
										<c:forEach items="${cart.getItemModelList()}" var="item">
											<tr>
												<td class="cart_product">
													<img src="" alt="#">
												</td>
												<td class="description">${item.getProduct().getProductName()}</td>
												<td class="price">${item.getUnitPrice()}<span>VNĐ</span></td>
												<td class="quantity">${item.getQuantity()}</td>
												<td class="total">${item.getUnitPrice()*item.getQuantity()}<span>VNĐ</span></td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
									<button type="button" class="btn btn-success">OK</button>
								</div>
							</div>
						</div>
					</div> <!-- end modal -->
				</c:forEach>
				<%--<div class="modal fade" id="oderlist">
					<div class="modal-dialog modal-dialog-centered modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Chi  tiết đơn hàng</h4>
							</div>
							<div class="modal-body">
								<table class="table table-condensed">
									<thead>
									<tr class="cart_menu">
										<td class="image">Ảnh</td>
										<td class="description">Tên Sản Phẩm</td>
										<td class="price">Giá</td>
										<td class="quantity">Số lượng</td>
										<td class="total">Tổng cộng</td>
									</tr>
									</thead>
									<tbody>
									<tr>
										<td class="cart_product">
											<img src="" alt="#">
										</td>
										<td class="cart_description">
											dell
										</td>
										<td class="cart_price">
											<p>300<span>VNĐ</span></p>
										</td>
										<td class="cart_quantity">
											2
										</td>
										<td class="cart_total">
											<p class="cart_total_price">6000<span>VNĐ</span></p>
										</td>
									</tr>
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
								<button type="button" class="btn btn-success">OK</button>
							</div>
						</div>
					</div>
				</div>--%> <!-- end modal -->
				</div>

		</div>
		<!-- /. PAGE INNER  -->
	</div>

	<!-- /. PAGE WRAPPER  -->
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${url}/js/jquery-1.10.2.js"></script>
	<script src="${url}/js/jquery-3.3.1.min.js"></script>
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