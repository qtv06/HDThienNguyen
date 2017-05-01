<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" type="text/css" href="css/themmoihd.css">
		
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" >
		  <div class="container-fluid" style="height: 300px;background-color:#2267B6;">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="DanhsachHDServlet">Hoạt Động Thiện Nguyện</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="DanhsachHDServlet">Home</a></li>
		      <li><a href="#">Điểm TB của trưởng đoàn</a></li>
		      
		    </ul>
		  </div>
	</nav>
	<div class="content">
		<form action="DanhgiaHDServlet" method="POST" role="form">
			<span>Đánh giá của Thành viên</span>
		    <div class="row form-group box1">
				<label class="col-lg-4">Mã thành viên</label>
				<div class="col-lg-3">
					<input type="text" class="form-control" name="matv" placeholder="Input field">
				</div>
				
				<div class="col-lg-3">
					<input type="hidden" class="form-control" name="mahd" value="<%=request.getAttribute("mahd")%>">
				</div>
		    </div>
		    <div class="row form-group box1">
				<label class="col-lg-4">Điểm trưởng đoàn</label>
				<div class="col-lg-3">
					<input type="text" class="form-control" name="diemtruongdoan" placeholder="Input field">
				</div>
				
		    </div>
		    <div class="row form-group">
				<label class="col-lg-4">Hoạt động này có hữu ích với bạn không?</label>
				<div class="col-lg-3">
					<input type="radio" name="tieuchi1" value="1"> Không hữu ích<br/>
					<input type="radio" name="tieuchi1" value="2"> Có hữu ích một phần <br/>
					<input type="radio" name="tieuchi1" value="3"> Hữu ích <br/>
					<input type="radio" name="tieuchi1" value="4"> Rất hữu ích <br/>
					<input type="radio" name="tieuchi1" value="5"> Trên cả tuyệt vời
				</div>
		    </div>
		    <div class="row form-group">
				<label class="col-lg-4">Hoạt động này có nên được tổ chức thường xuyên không?</label>
				<div class="col-lg-3">
					<input type="radio" name="tieuchi2" value="1"> Không<br/>
					<input type="radio" name="tieuchi2" value="2"> Có thể hoặc không<br/>
					<input type="radio" name="tieuchi2" value="3"> Tổ chức những ít thôi<br/>
					<input type="radio" name="tieuchi2" value="4"> Tổ chức thường xuyên<br/>
					<input type="radio" name="tieuchi2" value="5"> Phải tổ chức hàng tuần
				</div>
		    </div>
		    <div class="row form-group">
				<label class="col-lg-4">Hoạt động này có nên được tổ chức rộng rãi cho nhiều người tham gia không?</label>
				<div class="col-lg-3">
					<input type="radio" name="tieuchi3" value="1"> Không<br/>
					<input type="radio" name="tieuchi3" value="2"> Có thể hoặc không<br/>
					<input type="radio" name="tieuchi3" value="3"> Tổ chức những ít thôi<br/>
					<input type="radio" name="tieuchi3" value="4"> Tổ chức thường xuyên<br/>
					<input type="radio" name="tieuchi3" value="5"> Nên là cái chắc 
				</div>
		    </div>
			<button type="submit" class="btn btn-primary" name="submit" value="submit">Đánh Giá</button>
		</form>
	</div>
</body>
</html>