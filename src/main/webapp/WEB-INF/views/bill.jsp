<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<title>${titleHome}</title>

<%@ include file="/WEB-INF/views/layout/include-css.jsp"%>
<%@ include file="/WEB-INF/views/layout/include-js.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> -->
<link rel="stylesheet" type="text/css" href="css/bill.css">


</head>
<body>
	<!-- Header -->
	<%@ include file="/WEB-INF/views/layout/header.jsp"%>
	<!-- end Header -->


	<!-- Main -->
	<div class="main">
	
	<div class="title-menu">Đơn hàng đang được vận chuyển</div>
	
	
	<div>Thông tin khách hàng</div>
	<label>Tên khách hàng: </label>
	
	</div>
	<!-- Footer -->

	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>

	<!-- end Footer -->



</body>
</html>
