<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login page</title>
<content tag="local_link_memberlogin">
   <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
   <link rel="stylesheet" href="resources/css/jquery.dataTables.min.css">
</content>
<content tag="local_script_memberlogin1">
   <script src="resources/js/jquery-3.1.1.min.js"></script>
   <script src="resources/js/jquery.dataTables.min.js"></script>
   <script src="resources/js/dataTables.bootstrap.min.js"></script>
   <script src="resources/plugins/jquery-1.10.2.js"></script>
   <script src="resources/plugins/bootstrap/bootstrap.min.js"></script>
   <script src="resources/plugins/metisMenu/jquery.metisMenu.js"></script>
</content>
</head>
<body class="body-Login-back" onload="doRest();">
<form id="login-form" name="login-form" class="form-horizontal" action="loginup" Method="POST">
<div class="container" align="center">
        <div class="row" style="width:30%;">
            
            <div class=" col-md-offset-4 col-md-4 ">
                <div class="login-panel panel panel-default">                  
                    <div class="panel-heading">
                        <h3 class="panel-title">로그인</h3>
                    </div>
                    <div class="panel-body">
                    	<div class="form-group">
                        	<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus
                            data-parsley-error-container="div[id='validateEmail']">
                        </div>
                        <div class="form-group">
                        	<input class="form-control" placeholder="Password" name="password" type="password" value="">
                        </div>
                        <div class="checkbox">
                        	<label>
                            	<input name="remember" type="checkbox" value="Remember Me">Remember Me
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" align="center">
            	<div class="col-md-offset-4 col-md-4" >
            		<button type="submit" class="col-md-6 btn btn-success"> 로그인  </button>
            		<button type="button" onclick="location.href='main'" class="col-md-6 btn btn-warnning"> 취소 </button>
            	</div>
        </div>	
    </div>
</form>
    
</body>
</html>