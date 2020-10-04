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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>ADMIN</title>

    <!-- Fontfaces CSS-->
    <link href="../css/font-face.css" rel="stylesheet" media="all">
    <link href="../admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="../admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="../admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="../admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="../admin/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="../admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="../admin/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="../admin/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="../admin/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="../admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../admin/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../admin/css/theme.css" rel="stylesheet" media="all">

</head>

<body>
    <div class="page-wrapper">
    
        <!-- HEADER MOBILE-->
    		<%@ include file="/WEB-INF/views/admin/layout/headerMobile.jsp" %>
        <!-- END HEADER MOBILE-->
        
			
        <!-- MENU SIDEBAR-->
        	<%@ include file="/WEB-INF/views/admin/layout/menuSlidebar.jsp" %>
        <!-- END MENU SIDEBAR-->
        

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            	<%@ include file="/WEB-INF/views/admin/layout/header.jsp" %>
            <!-- HEADER DESKTOP-->
			
			
			<!-- Main -->
            <div class="main-content">
            	<div class="title-menu">THÊM SẢN PHẨM</div>


	<form:form modelAttribute="product" method="post" action="/admin/addProduct"
		cssClass="form-horizontal form-material" enctype="multipart/form-data">
		<div id="input" class="container-fluid">
			<div class="form-group">
				<label for="name_product">Tên sản phẩm:</label>
				<form:input id="name_product" path="name_product"
					cssClass="form-control form-control-line" />
			</div>
		</div>

		<div id="input" class="container-fluid">
			<div class="form-group">
				<label for="price">Giá sản phẩm:</label>
				<form:input id="price" path="price"
					cssClass="form-control form-control-line" />
			</div>
		</div>

		<div id="input" class="container-fluid">
			<div class="form-group">
				<label>Chọn ảnh </label> <input type="file" name="images">
			</div>
		</div>

		<div id="input" class="container-fluid">
			<div class="form-group">
				<label for="category">Danh mục:</label>
				<form:select  path="category.id"
					cssClass="form-control form-control-line">
					<form:options items="${categories}" itemValue="id"
						itemLabel="name_category" />
				</form:select>
			</div>


			<div class="form-group">
				<div class="col-sm-12">
					<!-- <button id="add" type="submit" class="btn btn-success">Add Product</button> -->
					<button id="add" type="submit" class="btn btn-success">Add
						Product</button>
				</div>
			</div>
		</div>
	</form:form>
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>

<!--  	<script type="text/javascript">
		// ::: for richtext editor
		$(document).ready(function() {
			$('#price').summernote();
		});
	</script>
	-->

	<!--	<script type="text/javascript">
		var Product ={
				saveProduct: function(){
					var name_product = $('#name_product').val();
					var price = $('#price').val();
 					var categoryID = document.getElementById('categoryID').value;
					
					
					var dataSendtoBackend = {};
					dataSendtoBackend["name_product"] = name_product;
					dataSendtoBackend["price"] = price;
 					dataSendtoBackend["categoryID"] = categoryID; 
 	
 					var jsonString = JSON.stringify(dataSendtoBackend);
 					
 					
 					 $.ajax({
 						url: "/api/product/save",
 						type: "post",
 						contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
 						data: JSON.stringify(dataSendtoBackend), // object json -> string json
 						
 						dataType: "json", // dữ liệu từ web-service trả về là json.
 						success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
 							if(jsonResult.statusCode == 200){
 								alert("Lưu thành công");
 							}else
 								alert("Lỗi")
 						}
 					}); 
 					
					
				}
		}
	</script> -->
            </div>

            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="../admin/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="../admin/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="../admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="../admin/vendor/slick/slick.min.js">
    </script>
    <script src="../admin/vendor/wow/wow.min.js"></script>
    <script src="../admin/vendor/animsition/animsition.min.js"></script>
    <script src="../admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="../admin/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="../admin/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="../admin/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="../admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../admin/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="../admin/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="../admin/js/main.js"></script>

</body>

</html>
<!-- end document-->
