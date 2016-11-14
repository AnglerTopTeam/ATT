<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>menu</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>
<body>
            <div class="navbar-default sidebar" role="navigation" align="left">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    <!-- Welcome -->
		                    <div class="alert alert-info">
		                        <b>안녕하세요! </b> <b> 
		                        <c:choose>
		                              <c:when test="${sessionid != null}">
		                              ${sessionid}
		                              <br>등급:${sessionmemberlevel}
		                              <br>포인트:${sessionpoint}
		                              <br>캐쉬:${sessioncash}
		                              </c:when>
		                              <c:otherwise>
		                             <br>로그인후 사용가능합니다.
		                              </c:otherwise>
		                        </c:choose>
		                        <div class="row" align="center">
		                        <c:choose>
		                        <c:when test="${sessionid == null}">
		                        <button type="button" class="btn btn-primary btn-xs">회원가입</button>
		                        <button type="button" class="btn btn-primary btn-xs"> 로&nbsp;그&nbsp;인 </button>
		                        </c:when>
		                        <c:otherwise>
		                        <button type="button" class="btn btn-primary btn-xs">정보수정</button>
		                        <button type="button" class="btn btn-primary btn-xs">로그아웃</button>
		                        </c:otherwise>
		                        </c:choose>
		                        </div>
		                        </b>
		                    </div>
		                    <div class="btn-group-vertical" style=" width:100%;">
		                    	<button type="button" class="btn btn-primary">전체글보기</button>
		                    	<button type="button" class="btn btn-primary">공지사항</button>
							 	<button type="button" class="btn btn-primary">가입인사</button>
							 	<button type="button" class="btn btn-primary">자유게시판</button>
							 	<button type="button" class="btn btn-primary">포인트</button>
								<button type="button" class="btn btn-primary">조행기</button>
								<button type="button" class="btn btn-primary">업체게시판</button>
								<span class="col-md-offset-2 col-md-2">
               <i class="fa fa-pencil" aria-hidden="true"></i>
               <button  type="button" onclick="location.href='boardInsertForm'" class="btn btn-info resultButton"> 글쓰기</button>
            </span>
            <li>
                	<a href="Insert"><i class="fa fa-edit fa-fw"></i> 글쓰기</a>
                </li>
								<c:if test="${sessionid == 'admin'}">
								<button type="button" class="btn btn-primary">회원목록</button>
								<button type="button" class="btn btn-primary">업체목록</button>
								</c:if>
							</div>
                        
                    </ul>
                </div>
            </div>
</body>
</html>