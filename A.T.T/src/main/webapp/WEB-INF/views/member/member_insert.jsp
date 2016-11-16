<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Page</title>

	<link rel="stylesheet"
	href="resources/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="resources/css/bootstrap-thema.min.css">
	<link rel="stylesheet"
	
	href="resources/css/font-awesome.min.css">
	<link rel="stylesheet"
	href="resources/css/sb-asmin.css">
	<link rel="stylesheet"
	href="resources/css/morris.css">
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/parsley.min.js"></script>
</head>
<script type="text/javascript">
	function doReset() {
		document.insert_form.id.value = "";
		document.insert_form.password.value = "";
		document.insert_form.repassword.value = "";
		document.insert_form.name.value = "";
		document.insert_form.nickname.value = "";
		document.insert_form.phone.value = "";
		document.insert_form.email.value = "";
		
	}
</script>

<body class="div-bgcolor-gray" onload="doReset();">
<form id="i_form" name="i_form"  class="form-horizontal" enctype="multipart/form-data" action="memberInsert" method="POST" role="form" data-parsley-validate="true">
	<div class="contatiner">
	  <span class="text-success text-center"><h1>회원가입 </h1></span>
	  <br><br>
		<div class="row">
			<div class="col-md-4"><span></span></div>
			<div class="col-md-3">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
					<input id="id" name="id" class="form-control" type="text" size="16" placeholder="ID" autocomplete="off"
					required="" data-parsley-error-message="아이디를 입력하세요" data-parsley-errors-container="div[id='validateId']" />
					<span class="input-group-btn">
						<button id="confirm" type="button" class="btn btn-primary" >Confirm</button>
						<script type="text/javascript">
							$('#confirm').click(function(){
								var id = $('#id').val();
								if( id == "") {
									alert("ID를 입력하세요!");
									return;
								}
								$.ajax({
									type : 'POST',
									data : "id="+ id,
									dataType : 'json',
									url : 'idconfirm',
									success : function(data) {
										if(data==0){
											alert("사용가능한 ID입니다");
											$('#confirm_check').attr('value','yes');
										} else {
											alert("중복된 ID입니다");
										}
										return false;
									}
								});
							});
						</script>
						<input id="confirm_check" type="hidden" value="no"/>
					</span>
				</div>
				<div id="validateId" style="color:#ff0000"></div>
				<br>
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
					<input name="password" id="password" class="form-control" type="password" size="16" placeholder="PASSWORD" autocomplete="off"
					required="true" data-parsley-error-message="패스워드를 입력하세요" data-parsley-errors-container="div[id='validatePassword']" />
				</div>
				<div id="validatePassword" style="color:#ff0000"></div>
				
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
					<input name="repassword" class="form-control" type="password" size="16" placeholder="REPASSWORD" autocomplete="off"
					required="true" data-parsley-error-message="패스워드 재입력하세요" data-parsley-equalto="#password" 
					data-parsley-errors-container="div[id='validateRePassword']" />
				</div>
				<div id="validateRePassword" style="color:#ff0000"></div>
				<br>
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-male" aria-hidden="true"></i></span>
					<input name="name" class="form-control" type="text" size="20" placeholder="NAME" autocomplete="off"
					required="" data-parsley-error-message="이름을 입력하세요" data-parsley-errors-container="div[id='validateName']" />
				</div>
				<div id="validateName" style="color:#ff0000"></div>
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
					<input id="nickname" name="nickname" class="form-control" type="text" size="16" placeholder="닉네임" autocomplete="off"
					required="" data-parsley-error-message="닉네임을 입력하세요" data-parsley-errors-container="div[id='validatenickname']" />
					<span class="input-group-btn">
						<button id="nickconfirm" type="button" class="btn btn-primary" >중복체크</button>
						<script type="text/javascript">
							$('#nickconfirm').click(function(){
								var nickname = $('#nickname').val();
								if( nickname == "") {
									alert("닉네임을 입력하세요!");
									return;
								}
								$.ajax({
									type : 'POST',
									data : "nickname="+ nickname,
									dataType : 'json',
									url : 'nickconfirm',
									success : function(data) {
										if(data==0){
											alert("사용가능한 닉네임입니다");
											$('#nickconfirm_check').attr('value','yes');
										} else {
											alert("사용할수 없는(중복) 닉네임입니다.");
										}
										return false;
									}
								});
							});
						</script>
						<input id="nickconfirm_check" type="hidden" value="no"/>
					</span>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
         <div class="col-md-4"><span></span></div>
         <div class="col-md-4">
            <div class="input-group" >
               <span class="input-group-addon"><i class="fa fa-phone" aria-hidden="true"></i></span>
               <input name="phone" class="form-control" type="text" value="${member.getPhone()}" placeholder="기호뺀 숫자만"/>
               </div>
				<br>
				
				<div class="input-group" >
					<span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
					<input name="email" class="form-control" text="text" size="30" placeholder="E-MAIL" autocomplete="off"/>
				</div>
				<br>
				<div align="center">
					<button id="save" name="save" type="submit" class="btn btn-success">가입하기</button>
					<script type="text/javascript">
						$('#save').click(function(){
							if($('#confirm_check').val()=='id'){
								alert("ID중복 체크하세요");
								return;
							}
							if($('#nickconfirm_check').val()=='nickname'){
								alert("닉네임중복 체크하세요");
								return;
							}else{
							$('#i_form').submit();
							}
						});
					</script>
					<span>&nbsp;&nbsp;</span>
					<span>&nbsp;&nbsp;</span>
					<button type="reset" name="reset" class="btn btn-default" >다시하기</button>
					<span>&nbsp;&nbsp;</span>
					<span>&nbsp;&nbsp;</span>
					<button type="button" name="cancel" class="btn btn-default" onclick="location.href='main'">취소</button>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
		
	</div>
</form>
</body>
</html>