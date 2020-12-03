<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/views/web/static" var="url"> </c:url>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên hệ</title>
    <link rel="stylesheet" href="${url}/css/map.css">
    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="map">
                    <h1>Bản đồ</h1>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d872.6703593302499!2d106.80692859173325!3d10.875635873937208!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3174d8a8b55161b3%3A0x18161cb5aed5424d!2zxJBp4buHbiBM4bqhbmggSOG7r3UgUGjGsOG7m2MgR2nhuq10IFPhuqV5LCA2IMSQLiBWw6BuaCDEkGFpLCDEkMO0bmcgSG_DoCwgRMSpIEFuLCBCw6xuaCBExrDGoW5nLCBWaeG7h3QgTmFt!3m2!1d10.8757664!2d106.80748399999999!5e0!3m2!1svi!2s!4v1606740242890!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>