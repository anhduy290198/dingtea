<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<!-- tag-libs -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>${titleProduct}</title>
<link rel="stylesheet" type="text/css" href="css/addComment.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>



</head>
<body>
	<%@ include file="/WEB-INF/views/layout/header.jsp"%>


	<div class="title-menu">THÊM BÌNH LUẬN</div>
	<form:form modelAttribute="comment" method="post" action="/addComment"
		cssClass="form-horizontal form-material" enctype="multipart/form-data">


		<!-- Content  -->
		<div id="input" class="container-fluid">
			<div class="form-group">
				<label for="usr">Bình luận:</label>
				<div class="col-8">
					<form:textarea id="summernote" path="content" cssClass="form-control form-control-line"/>
				</div>

			</div>
		</div>


		<!-- Product -->
		<div id="input" class="container-fluid">
			<div class="form-group">
				<label for="product">Sản phẩm:</label>
				<form:select path="product.id"
					cssClass="form-control form-control-line">
					<form:options items="${products}" itemValue="id"
						itemLabel="name_product" />
				</form:select>
			</div>
		</div>



		<div class="form-group">
			<div class="col-sm-12">
				<button id="add" type="submit" class="btn btn-success">Add
					Comment</button>
			</div>
		</div>



	</form:form>





	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>

	<script type="text/javascript">
		$('#summernote').summernote({
	       placeholder: 'Nhập bình luận',
	       tabsize: 2,
	       height: 100
	     });
	</script>
</body>


</html>
