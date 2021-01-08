<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/views/web/static" var="url"> </c:url>
<c:url value="/api-user-change-password" var="APIurl"> </c:url>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Quản lí tài khoản</title>
	<link href="${url}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${url}/css/font-awesome.min.css" rel="stylesheet">
	<link href="${url}/css/main.css" rel="stylesheet">
	<link href="${url}/css/responsive.css" rel="stylesheet">
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<section id="cart_items">
	<div class="container">
		<div class="step-one">
			<h2 class="heading">Quản lí toàn khoản</h2>
		</div>
		<div class="shopper-informations">
			<div class="row">
				<div class="col-sm-6">
					<div class="shopper-info">
						<p>Thông tin tài khoản</p>
						<form>
							<input id="name" type="text" placeholder="Tên" value="${accountModel.getUsername()}">
							<input id="email" type="text" placeholder="Email" value="${accountModel.getEmail()}">
							<input id="address" type="text" placeholder="Địa chỉ" value="${accountModel.getAddress()}">
							<input id="phonenumber" type="text" placeholder="Số điện thoại" value="${accountModel.getPhonenumber()}">
						</form>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="shopper-info">
						<p>Thay đổi mật khẩu</p>
						<form>
							<input id="oldPassword" type="password" placeholder="Mật khẩu ">
							<input id="newPassword" type="password" placeholder="Mật khẩu mới">
							<input id="confirmPassword" type="password" placeholder="Xác nhận mật khẩu">
						</form>
						<a class="btn btn-primary" onclick="changePassword()" href="">Cập nhật thông tin</a>
					</div>
				</div>
			</div>
		</div>
		<div class="review-payment">
			<h2>Lịch sử mua hàng</h2>
		</div>

		<div class="table-responsive cart_info">
			<table class="table table-condensed">
				<thead>
				<tr class="cart_menu">
					<td class="image">ID đơn hàng</td>
					<td class="description">Tình trạng</td>
					<td class="price">Ngày mua</td>
					<td class="quantity">Tổng thanh toán</td>
					<td class="total">Action</td>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="cart" items="${carts}">
					<tr>
						<td class="cart_product">
							<h4>#${cart.id}</h4>
						</td>
						<td class="cart_description">
							<h4>Đã giao</h4>
						</td>
						<td class="cart_description">
							<h4>${cart.buyDate}</h4>
						</td><td class="cart_description">
						<h4>${cart.totalPrice} VNĐ</h4>
					</td><td class="cart_description">
						<a class="center" data-toggle="modal"   data-target="#oderlist${cart.id}">Xem chi tiết</a>
					</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<c:forEach items="${carts}" var="cart">
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
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</section> <!--/#cart_items-->
<script src="${url}/js/jquery.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="${url}/js/jquery.scrollUp.min.js"></script>
<script src="${url}/js/jquery.prettyPhoto.js"></script>
<script src="${url}/js/main.js"></script>
<script>
	function changePassword() {
		var oldPassword =$('#oldPassword').val();
		var newPassword =$('#newPassword').val();
		var confirmPassword =$('#confirmPassword').val();
		var data ={
			oldPassword:oldPassword,
			password:newPassword,
			confirmation_pwd:confirmPassword
		}
		console.log(data)
		$.ajax({
			url: '${APIurl}',
			type: 'PUT',
			enctype: 'multipart/form-data',
			processData:false,
			contentType: 'application/json',
			data:JSON.stringify(data),
			dataType: 'json',
			success: function (result){
				console.log("Success");
			},
			errMode: function (error){
				console.log("Error");
			}

		})

	}
</script>

</body>
</html>