<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<title>${titleHome}</title>
<link rel="stylesheet" type="text/css" href="css/style-home.css">
<%@ include file="/WEB-INF/views/layout/include-css.jsp" %>
<%@ include file="/WEB-INF/views/layout/include-js.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> -->


</head>
<body>
	<!-- Header -->
		<%@ include file="/WEB-INF/views/layout/header.jsp" %>
	<!-- end Header -->
	
	
	<!-- Main -->
	<div class="main" >
		<!-- news -->
		<div class="news" class="container-fluid">
			<div class="news-title">TIN TỨC MỚI NHẤT</div>
			<div class="row">
				<div  class="col-sm-4">
					<img src="images/news-box1.png">
					<div class="post-title">UỐNG DINGTEA ĐI HÀN QUỐC</div>
					<div class="post-content">
						<a href="#">Tham gia tích luỹ điểm thưởng
						trúng ngay chuyến du lịch Hàn Quốc & hơn 5000 quà tặng bốc thăm may
						mắn mỗi tuần ...</a>
					</div>
					<!-- <input class="form-control" type="submit" value="XEM THÊM"> -->
				</div>
				<div  class="col-sm-4">
					<img src="images/news-box2.png">
					<div class="post-title">ƯU ĐÃI THỨ 3 17/12/2019</div>
					<div class="post-content">
						<a href="#">Tiếp nối chương trình khuyến mãi
						Thứ 3 hàng tuần, vào ngày Thứ 3 (18/06) tới đây ...</a>
					</div>
					<!-- <input class="form-control" type="submit" value="XEM THÊM"> -->
				</div>
				<div  class="col-sm-4">
					<img src="images/news-box3.png">
					<div class="post-title">ƯU ĐÃI THỨ 3 HÀNG TUẦN</div>
					<div class="post-content">
						<a href="#">Uống trà sữa thả ga không cần lo
						về giá với ưu đãi Thứ 3 hàng tuần tại Ding Tea ...</a>
					</div>
					<!-- <input class="form-control" type="submit" value="XEM THÊM"> -->
				</div>
			</div>
		</div>
		<!-- end news -->

		<!-- employ -->
		<div class="employ" class="container-fluid">
			<div class="row">
				<div class="col-6">
					<div class="employ-title">DINGTEA TUYỂN DỤNG</div>
					<div class="employ-content">Dingtea đang tìm kiếm những ứng
						viên trẻ tuổi có khả năng giao tiếp tốt, có niềm đam mê lớn trong
						ngành kinh doanh, muốn tìm hiểu và đáp ứng nhu cầu khách hàng, yêu
						thích làm việc nhóm, những bạn trẻ hiểu được rằng mọi sự cố gắng
						đều sẽ được ghi nhận...</div>
					<button class="form-control" type="button">XEM THÊM</button>
				</div>
				<div class="col-6">
					<img src="images/employ.png">
				</div>
				</div>
		</div>
		</div>

	</div>

	<!-- Footer -->
	
	<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
	
	<!-- end Footer -->



</body>
</html>
