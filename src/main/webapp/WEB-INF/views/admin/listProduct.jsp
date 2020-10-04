
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
<title>Danh sách sản phẩm</title>

<!-- CSS -->
<%@ include file="/WEB-INF/views/admin/layout/include-css.jsp"%>
<link rel="stylesheet" type="text/css" href="/admin/css/listProduct.css">


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

			<!-- MAIN -->

			<div class="main-content">
				<div class="title-menu">DANH SÁCH SẢN PHẨM</div>

				<div class="container">
					<div class="row">
						<div class="col-lg-11 col-md-11 mx-auto">


							<table class="table">
								<thead>
									<tr style="text-align: center;">
										<th>Mã sản phẩm</th>
										<th>Ảnh</th>
										<th>Tên sản phẩm</th>
										<th>Đơn giá</th>
										<th>Danh mục</th>
										<th>Chỉnh sửa</th>
										<th>Xóa</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="product" items="${products}">
										<tr style="text-align: center;">
											<td>${product.id}</td>
											<td><img style="width: 100px;"
												src="/files/${product.attachment.name_attachment} " /></td>
											<td>${product.name_product}</td>
											<td><p id="price"><fmt:formatNumber value="${product.price}" type="currency" /></p></td>
											<td>${product.category.name}</td>
											<td><a href="/admin/editProduct/${product.id}"> <i
													class="fas fa-edit"></i></a></td>
											<td>
	                                            <a href="/admin/deleteProduct/${product.id}"><i class="fa fa-trash" aria-hidden="true"></i></a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>


						</div>
					</div>
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
