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
		<form action="ThemmoiHDServlet" method="POST" role="form">
			<span>Tạo mới hoạt động thiện nguyện</span>
		    <div class="row form-group box1">
				<label class="col-lg-2">Mã hoạt động</label>
				<div class="col-lg-3">
					<input type="text" class="form-control" name="mahd" placeholder="Input field">
				</div>
				<label class="col-lg-2">Tên hoạt động</label>
				<div class="col-lg-3">
					<input type="text" class="form-control" name="tenhd" placeholder="Input field">
				</div>
		    </div>
		    <div class="row form-group">
				<label class="col-lg-2">Mô tả hoạt động</label>
				<div class="col-lg-3">
					<textarea name="motahd"  rows="6" cols="87">Enter text here...</textarea>
				</div>
		    </div>
		    <div class="row form-group">
		    	<label class="col-lg-2">Ngày Giờ bắt đầu</label>
				<div class="col-lg-3">
					<input type="date" class="form-control" name="ngaygiobd">
				</div>
				<label class="col-lg-2">Ngày Giờ kết thúc</label>
				<div class="col-lg-3">
					<input type="date" class="form-control" name="ngaygiokt">
				</div>
		    </div>
		    <div class="row form-group">
				<label class="col-lg-2 ">Số lượng tối thiểu yêu cầu</label>
				<div class="col-lg-3">
					<input type="number" min="1" class="form-control" name="sltt" placeholder="Input field">
				</div>
				<label class="col-lg-2">Số lượng tối đa yêu cầu</label>
				<div class="col-lg-3">
					<input type="number" min="1" class="form-control" name="sltd" placeholder="Input field">
				</div>
		    </div>
		    <div class="row form-group">
				<label class="col-lg-2">Thời hạn đăng kí</label>
				<div class="col-lg-3">
					<input type="text" class="form-control" name="thoihandk" placeholder="Input field">
				</div>
				<label class="col-lg-2">Mã thành viên</label>
				<div class="col-lg-3">
					<input type="text" class="form-control" name="matv" placeholder="Input field">
				</div>
		    </div>
		    <div class="row form-group">
				<label class="col-lg-2">Trạng thái hoạt động</label>
				<div class="col-lg-3">
					<input type="radio" name="trangthai" value="Đang mời đăng kí"> Đang mời đăng kí <br/>
					<input type="radio"  name="trangthai" value="Đã kết thúc"> Đã kết thúc <br/>
					<input type="radio" name="trangthai" value="Trưởng đoàn tự hủy"> Trưởng đoàn tự hủy <br/>
					<input type="radio" name="trangthai" value="Đã hết hạn đăng kí"> Đã hết hạn đăng kí
				</div>
		    </div>
			<button type="submit" class="btn btn-primary" name="submit" value="submit">Thêm mới</button>
		</form>
	</div>
</body>
</html>