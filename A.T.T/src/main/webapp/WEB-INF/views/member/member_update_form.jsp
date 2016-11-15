<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member 수정</title>
	<link rel="stylesheet"
	href="resources/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="resources/css/bootstrap-thema.min.css">
	<link rel="stylesheet"
	href="resources/css/itschool.css">
	<link rel="stylesheet"
	href="resources/css/font-awesome.min.css">
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/parsley.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		$('#update').click(function(){
			$('#u_form').submit();
		});
	});
</script>

<body class="div-bgcolor-gray" onload="doReset();">
<form id="u_form" name="u_form"  class="form-horizontal" enctype="multipart/form-data" action="mUpdate" method="POST" role="form" data-parsley-validate="true">
	<div class="contatiner">
	  <span class="text-success text-center"><h1>정보수정 </h1></span>
	  <br><br>
		<div class="row">
			<div class="col-md-4"><span></span></div>
			<div class="col-md-3">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
					<input id="id" name="id" class="form-control" type="text" value="${member.getId()}" size="16" readonly="readonly" />
				</div>
				<br>
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
					<input name="password" id="password" class="form-control" type="password" value="${member.getPassword()}" size="16" placeholder="PASSWORD" autocomplete="off"
					required="true" data-parsley-error-message="please insert your PASSWORD" data-parsley-errors-container="div[id='validatePassword']" />
				</div>
				<div id="validatePassword" style="color:#ff0000"></div>
				
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
					<input name="repassword" class="form-control" type="password" size="16" value="${member.getPassword()}" placeholder="REPASSWORD" autocomplete="off"
					required="true" data-parsley-error-message="please check Password and Repassword" data-parsley-equalto="#password" 
					data-parsley-errors-container="div[id='validateRePassword']" />
				</div>
				<div id="validateRePassword" style="color:#ff0000"></div>
				<br>
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-male" aria-hidden="true"></i></span>
					<input name="name" class="form-control" type="text" value="${member.getName()}" size="20" readonly="readonly"/>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-male" aria-hidden="true"></i></span>
					<input name="nicname" class="form-control" type="text" value="${member.getNicname()}" size="20" readonly="readonly"/>
				</div>
			</div>
			
			<div class="col-md-4"></div>
		</div>
		<br>
		<div class="row">
         <div class="col-md-4"><span></span></div>
         <div class="col-md-4">
            <div class="input-group" >
               <span class="input-group-addon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                  <span class="input-group-addon"> <select name="phone1">
                           <option value="010" <c:if test="${member.phone1=='010'}">selected</c:if>>010</option>
                           <option value="011" <c:if test="${member.phone1=='011'}">selected</c:if>>011</option>
                           <option value="016" <c:if test="${member.phone1=='016'}">selected</c:if>>016</option>
                           <option value="017" <c:if test="${member.phone1=='017'}">selected</c:if>>017</option>
                           <option value="018" <c:if test="${member.phone1=='018'}">selected</c:if>>018</option>
                           <option value="019" <c:if test="${member.phone1=='019'}">selected</c:if>>019</option>
                        </select></span>
               <span class="input-group-addon">-</span>
               <input name="phone2" class="form-control" type="text" value="${member.getPhone2()}" size="4" placeholder="Phone" />
               <span class="input-group-addon">-</span>
               <input name="phone3" class="form-control" type="text" value="${member.getPhone3()}" size="4" placeholder="Number"/>
               </div>
				<br>
				
				<div class="input-group" >
					<span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
					<input name="email" class="form-control" text="text" size="30" value="${member.getEmail()}" readonly="readonly"/>
					
				</div>
				<br>
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-briefcase" aria-hidden="true"></i></span>
					<input name="job" class="form-control" type="text" size="30" placeholder="JOB" autocomplete="off"/>
				</div>
				<br>
				<div align="center">
					<button id="update" name="update" type="button" class="btn btn-success">정보수정</button>
					<span>&nbsp;&nbsp;</span>
					<span>&nbsp;&nbsp;</span>
					<button type="button" id="cancel" name="cancel" onclick="location.href='main'" class="btn btn-default">Cancel</button>
					<span>&nbsp;&nbsp;</span>
					<span>&nbsp;&nbsp;</span>
					<button type="button" id="delete" name="delete" onclick="location.href='mDeleteYn?id=${member.id}'" class="btn btn-warning">회원탈퇴</button>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
		
	</div>
</form>
</body>
</html>