<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
<link href="resources/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href="resources/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />

<title>Manu</title>
</head>
<body>
            <div class="navbar-default sidebar" role="navigation" >
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    <!-- Welcome -->
                <div class="col-lg-12">
                    <div class="alert alert-info">
                        <b>&nbsp;안녕하세요! </b> <b> 
                        <c:choose>
                              <c:when test="${sessionid != null}">
                              ${sessionid}
                              </c:when>
                              <c:otherwise>
                             	<br> 로그인후 사용가능합니다.
                              </c:otherwise>
                        </c:choose>
                        </b>
                    </div>
                </div>
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default"  type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
	                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> 회원관리<span class="fa arrow"></span></a>
		                        <ul class="nav nav-second-level">
		                            
		                            <li>
			                            <a href="memberInsertForm"><i class="fa fa-dashboard fa-fw"></i> 회원가입</a>
			                        </li>
			                        <c:if test="${sessionid == 'admin'}">
				                        <li>
				                            <a href="memberList"><i class="fa fa-table fa-fw"></i> 회원목록</a>
				                        </li>
			                        </c:if>
		                        </ul>
                    	</li>
                    	<li>
	                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> 게시판<span class="fa arrow"></span></a>
		                        <ul class="nav nav-second-level">
		                            <li>
				                        <a href="#"><i class="fa fa-table fa-fw"></i> 공지사항</a>
				                    </li>
		                            <li>
				                        <a href="#"><i class="fa fa-edit fa-fw"></i>가입인사</a>
				                    </li>
				                    <li>
				                        <a href="#"><i class="fa fa-edit fa-fw"></i>자유게시판</a>
				                    </li>
				                    <li>
				                        <a href="#"><i class="fa fa-edit fa-fw"></i>등업 요청 게시판</a>
				                    </li>
				                    <li>
				                        <a href="#"><i class="fa fa-edit fa-fw"></i>문의 사항</a>
				                    </li>
		                        </ul>
                    	</li>
                    	<li>
	                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> 조행기<span class="fa arrow"></span></a>
		                        <ul class="nav nav-second-level">
		                            <li>
				                        <a href="#"><i class="fa fa-edit fa-fw"></i> 일반</a>
				                    </li>
		                            <li>
				                        <a href="#"><i class="fa fa-edit fa-fw"></i> 사진</a>
				                    </li>
				                    <li>
				                        <a href="#"><i class="fa fa-edit fa-fw"></i> 동영상</a>
				                    </li>
		                        </ul>
                    	</li>
                        <%-- <c:if test="${sessionid == 'admin'}"> --%>
                        <li>
	                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> 사원관리<span class="fa arrow"></span></a>
		                        <ul class="nav nav-second-level">
		                            <li>
		                                <a href="#"><i class="fa fa-dashboard fa-fw"></i>입력</a>
		                            </li>
		                            <li>
		                                <a href="#"><i class="fa fa-table fa-fw"></i>수정</a>
		                            </li>
		                            <li>
		                                <a href="#"><i class="fa fa-table fa-fw"></i>삭제</a>
		                            </li>
		                            <li>
			                            <a href="#"><i class="fa fa-edit fa-fw"></i>리스트</a>
			                        </li>
		                            <li>
			                            <a href="#"><i class="fa fa-edit fa-fw"></i>목록</a>
			                        </li>
		                        </ul>
                    	</li>
                    	<%-- </c:if> --%>
                    </ul>
                    
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->

<!-- Core Scripts - Include with every page -->
    
    <script src="resources/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="resources/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="resources/plugins/pace/pace.js"></script>
    <script src="resources/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="resources/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="resources/plugins/morris/morris.js"></script>
    <script src="resources/scripts/dashboard-demo.js"></script>

</body>
</html>