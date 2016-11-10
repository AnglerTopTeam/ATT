<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HEADER</title>
   <link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
   <link rel="stylesheet" href="resources/css/jquery.dataTables.min.css">
</head>
<body >
        <nav class="navbar navbar-default navbar-static-top"  role="navigation" style="margin-bottom: 0; background: #a8a8fa">
            <div class="navbar-header">
                <a class="navbar-brand" href="main">A.T.T's</a>
            </div>
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  
                           <c:choose>
                              <c:when test="${sessionid != null}">
                              ${sessionid}
                              </c:when>
                              <c:otherwise>
                              Guest
                              </c:otherwise>
                              </c:choose><i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                       <c:if test="${sessionid !=null}">
                           <li><a href="memberUpdateForm?id=${sessionid}"><i class="fa fa-user fa-fw"></i> 정보수정</a>
                           </li>
                       </c:if>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                           <c:choose>
                              <c:when test="${sessionid == null}">
                                 <a href="login"><i class="fa fa-fw fa-sign-in"></i> Login</a>
                              </c:when>   
                              <c:otherwise>
                                 <a href="logout"><i class="fa fa-fw fa-sign-out"></i>logout</a>
                              </c:otherwise>
                           </c:choose>
                        </li>
                    </ul>
                </li>
            </ul>
         </nav>   
</body>
</html>