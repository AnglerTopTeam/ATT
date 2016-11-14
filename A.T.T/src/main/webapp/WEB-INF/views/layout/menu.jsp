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
		                    	<div>
				                	<a href="#"><b>전체글보기</b></a>
				                </div>
		                    	<div>
				                	<a href="#" ><b>공지사항</b></a>
				                </div>
				                <div style="color:#5eb3dd;">
				                	게시판
				                </div>
			                    	<div style="margin-left: 10%;">
					                	<a href="#">-가입인사</a>
					                </div>
								 	<div style="margin-left: 10%;">
					                	<a href="#">-자유게시판</a>
					                </div>
					            </div>
							 	<div style="color:#5eb3dd;">
				                	포인트
				                </div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-물건구매</a>
				                	</div>
				                
							 	<div style="color:#5eb3dd;">
				                	조행기
				                </div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-사진</a>
				                	</div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-동영상</a>
				                	</div>
				                
								<div style="color:#5eb3dd;">
				                	업체게시판
				                </div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-업체홍보</a>
				                	</div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-공동구매</a>
				                	</div>
				                
				                <div style="color:#5eb3dd;">
				                	이벤트
				                </div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-경매</a>
				                	</div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-행사</a>
				                	</div>
				                
				           		
								<c:if test="${sessionid == 'admin'}">
								<div>
				                	<a href="#">회운목록</a>
				                </div>
				                <div>
				                	<a href="#">업체목록</a>
				                </div>
								</c:if>
							</div>
                        
                    </ul>
                </div>
            </div>
</body>
</html>