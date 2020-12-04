<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:url value="/api-admin-product" var="APIurl"></c:url>
<c:url value="/views/admin/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Edit User</title>
<!-- BOOTSTRAP STYLES-->
<link href="${url}/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${url}/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="${url}/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
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
						<h2>Add Product</h2>
						<h5>Add product you can sell</h5>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-md-12">
						<!-- Form Elements -->
						<div class="panel panel-default">
							<div class="panel-heading">Add Product</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<h3>User:</h3>
										<%--<c:url value="/admin/product/edit" var="edit"></c:url>--%>
										<form role="form" <%--action="${edit }" method="post"--%>
											enctype="multipart/form-data">
											<input id="id" name="id" value="${product.id }" hidden="">
											<div class="form-group">
												<label>Name:</label> <input id="productName" class="form-control"
													value="${product.productName}" name="productName" />
											</div>
											<div class="form-group">
												<label>Price ($)</label> <input id="price" class="form-control"
													value="${product.price }" type="number" name="price" />
											</div>
											<div class="form-group">
												<label>Description </label> <br>
												<textarea rows="4" cols="50" name="describePro" id="describePro" >${product.describePro}</textarea>
											</div>

											<div class="form-group">
												<label>Detail Category</label>
												<div class="checkbox">
													<select id="detailCateId" name="detailCateId">

														<c:forEach  var="c" items="${detailCategories}" >
															<option value="${c.id}"
																	<c:if test="${c.id==product.detailCateId}">
																		<c:out value="selected"/>
																	</c:if>
															>
																	${c.detailCateName}
															</option>
														</c:forEach>
													</select>
												</div>

											</div>
<%--											<div class="form-group">--%>
<%--												<label>image</label> <input type="file" name="image" value="${product.image }" />--%>
<%--											</div>--%>
											<button id="btnEdit"  class="btn btn-default">Edit</button>
											<button type="reset" class="btn btn-primary">Reset</button>
										</form>


									</div>
								</div>
							</div>
						</div>
						<!-- End Form Elements -->
					</div>
				</div>
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-12"></div>
				</div>
				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${url}/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${url}/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${url}/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${url}/js/custom.js"></script>
	<script type="text/javascript" language="javascript">
	   CKEDITOR.replace('describePro', {width: '700px',height: '300px'});
	</script>



	<script>
		$('#btnEdit').click(function (e){
			e.preventDefault();
			var productName= $('#productName').val();
			var price= parseFloat($('#price').val());
			var describePro= $('#describePro').val();
			var id= parseInt($('#id').val()) ;
			var detailCateId=parseInt($('#detailCateId').val());
			// var image= $('#image').val();
			console.log(describePro)
			var data={
				"productName":productName,
				"price":price,
				"describePro":describePro,
				"id":id,
				"image":"linnnnkkkkk",
				"detailCateId":detailCateId
			}
			updateProduct(data)

		});
		function updateProduct(data){
			console.log(typeof (data.id))
			$.ajax({
				url: '${APIurl}',
				type: 'PUT',
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