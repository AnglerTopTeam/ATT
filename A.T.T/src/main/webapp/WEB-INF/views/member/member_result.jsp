<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Result</title>
	<link rel="stylesheet"
	href="resources/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="resources/css/bootstrap-thema.min.css">
	<link rel="stylesheet"
	href="resources/css/itschool.css">
	<link rel="stylesheet"
	href="resources/css/font-awesome.min.css">

	<script src="resources/js/jquery-3.1.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/parsley.min.js"></script>
</head>


<body>
<form action="main" method="GET">
	<div class="contatiner" align="center">
		<div class="row">
			<div class="col-md-4"><span></span></div>
			<div class="col-md-4">
				<div class="input-group">
					<div class="resultPage" style="font-size: 35px;margin-top: 10px"> Result Page </div>
				</div>
			</div>
			<div class="col-md-4"><span></span></div>
		</div>
		<br><br>
		<div class="row">
			<div class="col-md-4"><span></span></div>
			<div class="col-md-4" style="background-color:#eeeeee; ">
				<div class="input-group">
					<div class="resultMessage" style="font-size: 25px; line-height: 250px; margin-top: 20px; ">
					<c:if test="${result == 'ok'}">
						오케이.......
					</c:if>
					 ${msg} </div>
				</div>
			</div>
			<div class="col-md-4"><span></span></div>
		</div>
		<br><br>
		<div class="row">
			<div class="col-md-4"><span></span></div>
			<div class="col-md-4">
				<button class="btn btn-warning btn-block" type="submit"> 확 인 </button>
			</div>
			<div class="col-md-4"><span></span></div>
		</div>
	</div>
</form>
</body>
</html>