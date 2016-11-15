<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>header</title>
	<link rel="stylesheet" href="resources/css/common.css" type="text/css" />
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="resources/js/respond.min.js"></script>
	<script src="resources/js/html5shiv.js"></script>
	<script src="//s3.amazonaws.com/nwapi/nwmatcher/nwmatcher-1.2.5-min.js"></script>
	<script src="//html5base.googlecode.com/svn-history/r38/trunk/js/selectivizr-1.0.3b.js"></script>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
</head>
<body >
	<div class="col-md-12">
		<span class="col-md-2" style="margin-top:0;">
			<a href="main"><b>A.T.T's</b></a>
		</span>   
		<span class="col-md-offset-4 col-md-8"  style="margin-left:50%;text-align: right">    	
		<c:choose>
		<c:when test="${sessionid != null}">
		안녕하세요 ${sessionid} 님
		등급:${sessionmemberlevel}
		포인트:${sessionpoint}
		캐쉬:${sessioncash}
		<button type="button" class="btn btn-primary btn-xs">정보수정</button>
		<button type="button" class="btn btn-primary btn-xs">로그아웃</button>
		</c:when>
		<c:otherwise>
		<input class="col-md-offset-2 col-md-2" placeholder="E-mail" name="email" type="email" autofocus
		data-parsley-error-container="div[id='validateEmail']">
		<input class="col-md-2" placeholder="Password" name="password" type="password" value="">
		<button type="submit" class="btn btn-success btn-xs"> 로그인  </button>
		<button type="button" onclick="location.href='memberInsertForm'" class="btn btn-warnning btn-xs"> 회원가입 </button>
		</c:otherwise>
		</c:choose>
		
		</span>
	</div>
</body>
</html>