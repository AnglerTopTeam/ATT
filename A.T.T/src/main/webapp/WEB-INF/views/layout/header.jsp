<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>header</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>
<body >
        <div class="navbar navbar-default navbar-static-top"  role="navigation" style="margin-bottom: 0; background: #fff">
            <div class="navbar-header">
                <a class="navbar-brand" href="main">A.T.T's</a>
                
                <div class="dropdown" align="right" style="padding:1%; margin-right:15px">
				  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> 안녕하세요!!! 
                           <c:choose>
                              <c:when test="${sessionid != null}">
                              ${sessionid} 님
                              </c:when>
                              <c:otherwise>
                              Guest(로그인후 사용가능)
                              </c:otherwise>
                              </c:choose><i class="fa fa-caret-down"></i>
                    </a>
				  
				  <ul class="dropdown-menu dropdown-menu-right">
				    <li><a href="#">로그인</a></li>
				    <li><a href="#">로그웃</a></li>
				    <li><a href="#">정보수정</a></li>
				  </ul>
				 </div>
				
				 
				
            </div>
         </div>  
</body>
</html>