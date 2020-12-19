<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<c:url value="/views/admin/static" var="url"></c:url>
<<<<<<< HEAD
<c:url value="/api-admin-user" var="APIurl"></c:url>
<c:url value="/admin-user-list" var="ACurl"></c:url>
=======
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>List User</title>
	<!-- BOOTSTRAP STYLES-->
	<link href="${url}/css/bootstrap.css" rel="stylesheet" />
	<!-- FONTAWESOME STYLES-->
	<link href="${url}/css/font-awesome.css" rel="stylesheet" />
	<!-- MORRIS CHART STYLES-->
<<<<<<< HEAD

=======
	
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
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
<<<<<<< HEAD

	<jsp:include page="/views/admin/view/nav-bar.jsp"></jsp:include>

=======
	
	<jsp:include page="/views/admin/view/nav-bar.jsp"></jsp:include>
	
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
	<!-- /. NAV TOP  -->
	<jsp:include page="/views/admin/view/slide-bar.jsp"></jsp:include>
	<!-- /. NAV SIDE  -->
	<div id="page-wrapper">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<h2>List User</h2>
					<h5>You can edit , add, delete User</h5>
<<<<<<< HEAD

=======
				
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
				</div>
			</div>
			<!-- /. ROW  -->
			<hr />
<<<<<<< HEAD

			<div class="row">
				<div class="col-md-12">
					<div>
						<a href='<c:url value="/admin-user-list?type=add"/>'>Add</a>
					</div>
=======
			
			<div class="row">
				<div class="col-md-12">
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
					<!-- Advanced Tables -->
					<div class="panel panel-default">
						<div class="panel-heading">Advanced Tables</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover"
									   id="dataTables-example">
									<thead>
									<tr>
										<th>ID</th>
										<th>Email</th>
										<th>User Name</th>
										<th>Password</th>
										<th>Status</th>
										<th> Role </th>
<<<<<<< HEAD
										<th>Action </th>


=======
									
									
									
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${userList }" var="list">
										<tr class="odd gradeX">
											<td>${list.id}</td>
											<td>${list.email }</td>
											<td>${list.username }</td>
											<td>${list.password }</td>
											<td class="center">Active</td>
<<<<<<< HEAD

=======
											
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
											<td class="center"><c:choose>
												<c:when test="${list.roleId ==1 }">
													Admin
												</c:when>
												<c:otherwise>Client</c:otherwise>
											</c:choose></td>
<<<<<<< HEAD
											<td>
												<button style="width: 70px;">
													<a href="<c:url value="/admin-user-list?type=edit&id=${list.id }"/>"
													   class="center">Edit</a>
												</button>
												|
												<button id="btnDelete" type ="button" onclick = "deleteUser(${list.id})"
														class="center">Delete
												</button>
											</td>

										</tr>
									</c:forEach>

									</tbody>
								</table>
							</div>

=======
										
										</tr>
									</c:forEach>
									
									</tbody>
								</table>
							</div>
						
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
						</div>
					</div>
					<!--End Advanced Tables -->
				</div>
			</div>
		
		</div>
<<<<<<< HEAD

=======
	
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
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
<<<<<<< HEAD

<%--DeleteUser--%>
<script>

	function deleteUser(data){
		console.log(typeof (data.id))
		$.ajax({
			url: '${APIurl}',
			type: 'DELETE',
			contentType: 'application/json',
			data:JSON.stringify(data),
			dataType: 'json',
			success: function (result){
				console.log("Success");
				window.location.href = "${ACurl}?type=list";
			},
			errMode: function (error){
				console.log("Error");
			}
		})
	}
</script>
=======
>>>>>>> 47ad7b79384ab300c94883fb9d527806c0adb05c
<!-- CUSTOM SCRIPTS -->
<script src="${url}/js/custom.js"></script>

</body>
</html>