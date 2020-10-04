
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- tag-libs -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- Title Page-->
<title>Sửa sản phẩm</title>

<!-- CSS -->

<!-- Fontfaces CSS-->
<link href="/css/font-face.css" rel="stylesheet" media="all">
<link href="/admin/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link href="/admin/vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link
	href="/admin/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="./admin/vendor/bootstrap-4.1/bootstrap.min.css"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link href="/admin/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all">
<link
	href="/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="/admin/vendor/wow/animate.css" rel="stylesheet" media="all">
<link href="/admin/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all">
<link href="/admin/vendor/slick/slick.css" rel="stylesheet" media="all">
<link href="/admin/vendor/select2/select2.min.css" rel="stylesheet"
	media="all">
<link href="/admin/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="/admin/css/theme.css" rel="stylesheet" media="all">

<link rel="stylesheet" type="text/css"
	href="/admin/css/editProduct.css">



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>
	<div class="page-wrapper">

		<!-- HEADER MOBILE-->
		<%@ include file="/WEB-INF/views/admin/layout/headerMobile.jsp"%>
		<!-- END HEADER MOBILE-->


		<!-- MENU SIDEBAR-->
		<%@ include file="/WEB-INF/views/admin/layout/menuSlidebar.jsp"%>
		<!-- END MENU SIDEBAR-->


		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<%@ include file="/WEB-INF/views/admin/layout/header.jsp"%>
			<!-- HEADER DESKTOP-->

			<div class="main-content">
			<div class="title-menu">CẬP NHẬT SẢN PHẨM</div>
			<div class="col-lg-9 col-md-10 mx-auto">
				<form:form modelAttribute="product" method="post"
					action="/admin/editProduct"
					cssClass="form-horizontal form-material"
					enctype="multipart/form-data">
					<input hidden="1" value="${product.id}" name="id">
					<div id="input-box" class="container-fluid">
						<div class="form-group">
							<label for="name_product">Tên sản phẩm:</label> <input
								id="name_product" value="${product.name_product}"
								name="name_product" class="form-control form-control-line" />
						</div>
					</div>

					<div id="input-box" class="container-fluid">
						<div class="form-group">
							<label for="price">Giá sản phẩm:</label> <input id="price"
								value="${product.price}" name="price"
								class="form-control form-control-line" />
						</div>
					</div>

					<div id="input-box" class="container-fluid">
						<div class="form-group">
							<label>Chọn ảnh </label> <input type="file" name="images">
						</div>
					</div>

					<div id="input-box" class="container-fluid">
						<div class="form-group">
							<label for="category">Danh mục:</label>
							<form:select path="category.id"
								cssClass="form-control form-control-line">
								<form:options items="${categories}" itemValue="id"
									itemLabel="name" />
							</form:select>
						</div>


						<div class="form-group">
							<div class="col-sm-12">
								
								<button style="margin-left:80%;" id="add" type="submit" class="btn btn-success">Sửa
									sản phẩm</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
			</div>

			<!-- END PAGE CONTAINER-->
		</div>

	</div>

	<!-- JS -->
	<!-- Jquery JS-->
	<script src="../vendor/jquery-3.2.1.min.js"></script>
	.
	<!-- Bootstrap JS-->
	<script src="../admin/vendor/bootstrap-4.1/popper.min.js"></script>
	.
	<script src="../admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	.
	<!-- Vendor JS       -->
	<script src="../admin/vendor/slick/slick.min.js">
		
	</script>
	<script src="../admin/vendor/wow/wow.min.js"></script>
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<script
		src="../admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script src="../admin/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script src="../admin/vendor/counter-up/jquery.counterup.min.js">
		
	</script>
	<script src="../admin/vendor/circle-progress/circle-progress.min.js"></script>
	<script src="../vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="../admin/vendor/chartjs/Chart.bundle.min.js"></script>
	<script src="/vendor/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	<script src="../js/main.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


</body>

</html>
<!-- end document-->
