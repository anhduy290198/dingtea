<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- tag-libs -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>${titleProduct}</title>
<link rel="stylesheet" type="text/css"
	href="css/style-product-detail.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<%@ include file="/WEB-INF/views/layout/include-css.jsp"%>
<%@ include file="/WEB-INF/views/layout/include-js.jsp"%>



</head>
<body>

	<!-- Header -->

	<%@ include file="/WEB-INF/views/layout/header.jsp"%>


	<!-- end Header -->

	<!-- Main -->
	<div id="categories" class="row">
		<div class="col-3">
			<div class="title-category">
				<p>Danh mục sản phẩm</p>
			</div>

			<ul class="list-group list-group-flush ">

				<li class="list-group-item">TRÀ ĐÀI LOAN ĐẶC BIỆT <span
					class="badge badge-warning badge-pill">3</span></li>
				<li class="list-group-item">TRÀ TRÁI CÂY <span
					class="badge badge-warning badge-pill">6</span></li>

				<li class="list-group-item">TRÀ SỮA TRÁI CÂY <span
					class="badge badge-warning badge-pill">6</span></li>

				<li class="list-group-item">TRÀ SỮA ĐẶC BIỆT <span
					class="badge badge-warning badge-pill">6</span></li>

				<li class="list-group-item">SỮA CHUA UỐNG <span
					class="badge badge-warning badge-pill">3</span></li>

				<li class="list-group-item">SOCOLA & CAFE <span
					class="badge badge-warning badge-pill">3</span></li>

			</ul>

		</div>



		<div class="col-9" id="main">
			<div class="container-fluid">
				<div class="title-menu">THỰC ĐƠN</div>

				<div class="type">Trà Đài Loan Đặc Biệt</div>
				<div style="display: flex; flex-wrap: wrap;">
					<c:forEach var="product" items="${traDaiLoan}">
						<div id="product">
							<div>
								<img src="/files/${product.attachment.name_attachment} " />
								<p>${product.name_product}</p>
								<p id="price"><fmt:formatNumber value="${product.price}" type="currency" /></p>
								<button id="view" type="button" class="btn btn-success">XEM
									CHI TIẾT</button>
								<button id="adds" type="button" class="btn btn-success"
									onclick="Cart.add(${product.id})">THÊM VÀO GIỎ</button>
							</div>
						</div>
					</c:forEach>

				</div>

				<div class="type">Trà Trái Cây</div>
				<div style="display: flex; flex-wrap: wrap;">
					<c:forEach var="product" items="${traicay}">
						<div id="product">
							<div>
								<img src="/files/${product.attachment.name_attachment} " />
								<p>${product.name_product}</p>
								<p id="price"><fmt:formatNumber value="${product.price}" type="currency" /></p>
								<button id="view" type="button" class="btn btn-success">XEM
									CHI TIẾT</button>
								<button id="adds" type="button" class="btn btn-success"
									onclick="Cart.add(${product.id})">THÊM VÀO GIỎ</button>
							</div>
						</div>
					</c:forEach>

				</div>

				<div class="type">Trà Sữa Trái Cây</div>
				<div style="display: flex; flex-wrap: wrap;">
					<c:forEach var="product" items="${SuaTraiCay}">
						<div id="product">
							<div>
								<img src="/files/${product.attachment.name_attachment} " />
								<p>${product.name_product}</p>
								<p id="price"><fmt:formatNumber value="${product.price}" type="currency" /></p>
								<button id="view" type="button" class="btn btn-success">XEM
									CHI TIẾT</button>
								<button id="adds" type="button" class="btn btn-success"
									onclick="Cart.add(${product.id})">THÊM VÀO GIỎ</button>
							</div>
						</div>
					</c:forEach>

				</div>


				<div class="type">Trà Sữa Đặc Biệt</div>
				<div style="display: flex; flex-wrap: wrap;">
					<c:forEach var="product" items="${SuaDacBiet}">
						<div id="product">
							<div>
								<img src="/files/${product.attachment.name_attachment} " />
								<p>${product.name_product}</p>
								<p id="price"><fmt:formatNumber value="${product.price}" type="currency" /></p>
								<button id="view" type="button" class="btn btn-success">XEM
									CHI TIẾT</button>
								<button id="adds" type="button" class="btn btn-success"
									onclick="Cart.add(${product.id})">THÊM VÀO GIỎ</button>
							</div>
						</div>
					</c:forEach>

				</div>


				<div class="type">Sữa Chua Uống</div>
				<div style="display: flex; flex-wrap: wrap;">
					<c:forEach var="product" items="${SuaChua}">
						<div id="product">
							<div>
								<img src="/files/${product.attachment.name_attachment} " />
								<p>${product.name_product}</p>
								<p id="price"><fmt:formatNumber value="${product.price}" type="currency" /></p>
								<button id="view" type="button" class="btn btn-success">XEM
									CHI TIẾT</button>
								<button id="adds" type="button" class="btn btn-success"
									onclick="Cart.add(${product.id})">THÊM VÀO GIỎ</button>
							</div>
						</div>
					</c:forEach>

				</div>


				<div class="type">Đồ uống nóng & Cafe</div>
				<div style="display: flex; flex-wrap: wrap;">
					<c:forEach var="product" items="${Cafe}">
						<div id="product">
							<div>
								<img src="/files/${product.attachment.name_attachment} " />
								<p>${product.name_product}</p>
								<p id="price"><fmt:formatNumber value="${product.price}" type="currency" /></p>
								<button id="view" type="button" class="btn btn-success">XEM
									CHI TIẾT</button>
								<button id="adds" type="button" class="btn btn-success"
									onclick="Cart.add(${product.id})">THÊM VÀO GIỎ</button>
							</div>
						</div>
					</c:forEach>

				</div>

			</div>
		</div>
	</div>

	<script type="text/javascript">
		
		var Cart = {
			add: function(productId) {
				var dataSendToBackEnd = {};
				dataSendToBackEnd["productId"] = productId;
				
				var jsonString = JSON.stringify(dataSendToBackEnd);
				
				// call ajax
				$.ajax({
					url: "/api/cart/add",
					type: "post",
					contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
					data: JSON.stringify(dataSendToBackEnd), // object json -> string json
					
					dataType: "json", // dữ liệu từ web-service trả về là json.
					success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
						if(jsonResult.statusCode == 200) {
							alert("Đã thêm sản phẩm vào giỏ");
						} else {
							alert("lỗi");
						}
					}
				});
								
			}				
		}
		
	
	</script>
	<div style="clear: both;"></div>
	<!-- Footer -->

	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>

	<!-- end Footer -->
</body>
</html>
