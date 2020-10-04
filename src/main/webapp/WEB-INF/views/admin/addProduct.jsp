
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
<title>Thêm sản phẩm</title>

<!-- CSS -->
<%@ include file="/WEB-INF/views/admin/layout/include-css.jsp"%>
<link rel="stylesheet" type="text/css" href="/admin/css/addProduct.css">


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
			<div class="title-menu">THÊM SẢN PHẨM</div>
				<div class="col-lg-9 col-md-11 mx-auto">
					<form:form modelAttribute="product" method="post"
						action="/admin/addProduct"
						cssClass="form-horizontal form-material"
						enctype="multipart/form-data">
						<div id="input-box" class="container-fluid">
							<div class="form-group">
								<label for="name_product">Tên sản phẩm:</label>
								<form:input id="name_product" path="name_product"
									cssClass="form-control form-control-line" />
							</div>
						</div>

						<div id="input-box" class="container-fluid">
							<div class="form-group">
								<label for="price">Giá sản phẩm:</label>
								<form:input id="price" path="price"
									cssClass="form-control form-control-line" />
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
									
									<button style="margin-left:80%;" id="add" type="submit" class="btn btn-success">Thêm
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
	<%@ include file="/WEB-INF/views/admin/layout/include-js.jsp"%>

</body>

</html>
<!-- end document-->
