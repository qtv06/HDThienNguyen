<%@page import="bean.HoatDongTN"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" type="text/css" href="css/style.css">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="DanhsachHDServlet">Hoạt Động Thiện Nguyện</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="DanhsachHDServlet">Home</a></li>
		      <li><a href="#">Điểm TB của trưởng đoàn</a></li>
		      
		    </ul>
		  </div>
		</nav>
		<div class="contant">
			<div class="content_left">
				<h3 >Điểm trung bình của trưởng đoàn</h3>
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Mã trưởng đoàn</th>
								<th>Tên tên trưởng đoàn</th>
								<th>Mã hoạt động</th>
								<th>Điểm trung bình</th>
							
								<th></th>
							</tr>
						</thead>
						<tbody>
						
							
						</tbody>
					</table>
				</div>
			</div><!-- end content_left -->
			
		<div class="clearfix"></div>
		<div class="footer"></div><!-- end footer -->
		
	</body>
</html>