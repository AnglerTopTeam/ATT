<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>menu</title>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/common.css" type="text/css" />
	<script src="resources/js/respond.min.js"></script>
	<script src="resources/js/html5shiv.js"></script>
	<script src="//s3.amazonaws.com/nwapi/nwmatcher/nwmatcher-1.2.5-min.js"></script>
	<script src="//html5base.googlecode.com/svn-history/r38/trunk/js/selectivizr-1.0.3b.js"></script>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<script src="resources/js/jquery-latest.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>

</head>
<body>
            <div class="navbar-default sidebar" align="left">
                <div class="sidebar-nav navbar-collapse">
                    <!-- Welcome -->
		                    
		                    <div class="btn-group-vertical" style=" width:100%;">
		                    	<div>
				                	<a href="memberInsert"><b>전체글보기</b></a>
				                </div>
		                    	<div>
				                	<a href="#" ><b>공지사항</b></a>
				                </div>
				                <div style="color:#2770bc;">
				                	<b>게시판</b>
				                </div>
				                	<div style="margin-left: 10%;">
					                	<a href="memberList">-회원목록테스트-</a>
					                </div>
			                    	<div style="margin-left: 10%;">
					                	<a href="#">-가입인사</a>
					                </div>
								 	<div style="margin-left: 10%;">
					                	<a href="#">-자유게시판</a>
					                </div>
					            </div>
							 	<div>
				                	<a href="#"><b>포인트</b></a>
				                </div>
				                	
				                
							 	<div style="color:#2770bc;">
				                	<b>조행기</b>
				                </div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-사진</a>
				                	</div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-동영상</a>
				                	</div>
				                
								<div style="color:#2770bc;">
				                	<b>업체게시판</b>
				                </div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-물건구매</a>
				                	</div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-업체홍보</a>
				                	</div>
				                	<div style="margin-left: 10%;">
				                		<a href="#">-공동구매</a>
				                	</div>
				                
				                <div style="color:#2770bc;">
				                	<b>이벤트</b>
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
                        
                </div>
</body>
</html>