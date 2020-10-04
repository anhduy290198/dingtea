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
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css" href="css/admin/addProduct.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ Hàng</title>
<%@ include file="/WEB-INF/views/layout/include-css.jsp"%>
<link rel="stylesheet" type="text/css" href="/css/checkout.css">
</head>

<body>
	<!-- Navigation -->
	<%@ include file="/WEB-INF/views/layout/header.jsp"%>


	<!-- Main Content -->
	<div class="container">



		<div style="display: flex; flex-wrap: wrap;">

			<!-- Cart -->
			<div id="cart-checkout">
				<div class="title-menu">GIỎ HÀNG</div>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Tên sản phẩm</th>
							<th scope="col">Đơn giá</th>
							<th scope="col">Số lượng</th>
							<th scope="col">Thành tiền</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="total" value="0" />
						<c:forEach var="cart" items="${gio_hang_cua_ban}">
							<tr>
								<td>${cart.productName}</td>

								<td><fmt:formatNumber value="${cart.price}" type="currency" /></td>
								<td style="text-algin:center;">
									<div   class="buttons_added">
										<input type="button" onclick="tru()" value="-" /> <input 
											id="quantity" type="text" value="${cart.quantity}"> <input
											type="button" onclick="cong()" value="+" />
									</div>
								</td>
								<td><fmt:formatNumber value="${cart.price * cart.quantity}"
										type="currency" /></td>
								<c:set var="total" value="${total + cart.price * cart.quantity}" />

							</tr>
						</c:forEach>



					</tbody>
				</table>
				<div
					style="margin-left: 45%; margin-top: 30px; font-weight: bold; font-size: 16px; color: red;">
					<p>
						Tổng tiền:
						<fmt:formatNumber  value="${total + cart.price * cart.quantity}"
							type="currency" />
					</p>
				</div>



				<script type="text/javascript">
					function cong() {
						var value = parseInt(document
								.getElementById('quantity').value, 10);
						value = isNaN(value) ? 0 : value;
						value++;
						document.getElementById('quantity').value = value;
					}

					function tru() {
						var value = parseInt(document
								.getElementById('quantity').value, 10);
						value = isNaN(value) ? 0 : value;
						value--;
						document.getElementById('quantity').value = value;
					}
				</script>
			</div>


			<!-- info customer -->
			<div id="info-customer">
				<div class="title-info">Thông tin giao hàng</div>

				<div id="input">
					<div class="form-group">
						<label for="nameCustomer">Tên khách hàng</label> <input
							id="nameCustomer" class="form-control form-control-line">
					</div>

					<div class="form-group">
						<label for="phone">Số điện thoại</label> <input id="phone"
							class="form-control form-control-line">
					</div>

					<div class="form-group">
						<label for="address">Địa chỉ ship hàng</label> <input id="address"
							class="form-control form-control-line">
					</div>
				</div>
			</div>
			

	<!--  	<div class="modal fade text-dark" id="orderModal" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Đặt hàng thành công</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="text-success text-center">
								<i class="fa fa-check border border-success rounded-circle p-3"
									aria-hidden="true" style="font-size: 75px;"></i>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-success"
								data-dismiss="modal">Đồng ý</button>
						</div>
					</div>
				</div>
			</div>
			-->	

			
			

			<script>
				function getInputValue() {
					// Selecting the input element and get its value 
					var input1 = document.getElementById("nameCustomer").value;
					var input2 = document.getElementById("phone").value;
					var input3 = document.getElementById("address").value;
					var input4 = document.getElementById("address").value;
					

					// Displaying the value
					alert("                                          Đặt hàng thành công!"+"\n\nTên khách hàng: " +input1 +"\nSố điện thoại: " + input2 +"\nĐịa chỉ: " + input3);
					
				}
			</script>

		</div>
		
		<button id="ship" type="button" class="btn btn-primary" onclick="getInputValue();">Đặt hàng</button>
	</div>
	<script type="text/javascript">
		var Cart = {
			add : function(productId) {
				var dataSendToBackEnd = {};
				dataSendToBackEnd["productId"] = productId;

				var jsonString = JSON.stringify(dataSendToBackEnd);

				// call ajax
				$.ajax({
					url : "/api/cart/add",
					type : "post",
					contentType : "application/json", // dữ liệu gửi lên web-service có dạng là json.
					data : JSON.stringify(dataSendToBackEnd), // object json -> string json

					dataType : "json", // dữ liệu từ web-service trả về là json.
					success : function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
						if (jsonResult.statusCode == 200) {
							alert("Luu thanh cong");
						} else {
							alert("loi");
						}
					}
				});

			}
		}
	</script>

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
	<%@ include file="/WEB-INF/views/layout/include-js.jsp"%>
</body>

</html>
