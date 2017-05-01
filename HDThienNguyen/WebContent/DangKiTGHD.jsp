<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Title Page</title>
	
			<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/dangki.css">
</head>
<body>
	<div class="main">
		<form action="DangkiServlet" method="POST" role="form">
			<span>Đăng kí tham gia hoạt động thiện nguyện</span>
		    <div class="row form-group">
				<label class="col-lg-2">Mã thành viên</label>
				<div class="col-lg-3">
					<input type="text" class="form-control" name="matv" placeholder="Input field">
				</div>
		    </div>
		    <div class="row form-group">
				<label class="col-lg-2">Họ tên</label>
				<div class="col-lg-3">
					<input type="text" class="form-control" name="hoten" placeholder="Input field">
				</div>
		    </div>
		    <div class="row form-group">
				<label class="col-lg-2">Ngày đăng kí</label>
				<div class="col-lg-3">
					<input type="date" class="form-control" name="ngaydangki" placeholder="Input field">
				</div>
		    </div>
		    <div class="row form-group">
				<div class="col-lg-3">
					<input type="hidden" class="form-control" name="mahd" value="<%=request.getAttribute("mahd")%>">
				</div>
		    </div>
			<button type="submit" class="btn btn-primary" name="submit" value="submit">Đăng kí</button>
		</form>	
	</div>	
</body>
</html>
