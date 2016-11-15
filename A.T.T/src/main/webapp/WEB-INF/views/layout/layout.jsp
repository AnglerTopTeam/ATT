<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/common.css" type="text/css" />
	<script src="resources/js/respond.min.js"></script>
	<script src="resources/js/html5shiv.js"></script>
	<script src="//s3.amazonaws.com/nwapi/nwmatcher/nwmatcher-1.2.5-min.js"></script>
	<script src="//html5base.googlecode.com/svn-history/r38/trunk/js/selectivizr-1.0.3b.js"></script>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<script src="resources/js/jquery-latest.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
<title>main</title>

<decorator:head />
</head>

<body>
	<table border="1" align="center" width="1450px" height="auto">
		<tr>
			<td colspan="2" width="100%"><page:applyDecorator id="header" name="header"/></td>
		</tr>
		<tr>
			<td width="13%"><page:applyDecorator id="menu" name="menu"/></td>
			<td width="77%"><decorator:body/></td>
			<td width="10%"><page:applyDecorator id="rmenu" name="rmenu"/></td>
		</tr>
		<tr>
			<td colspan="2" width="100%"><page:applyDecorator id="footer" name="footer"/></td>
		</tr>
	</table>
	<decorator:getProperty property="page.local_link_memberlogin"/>
	<decorator:getProperty property="page.local_script_memberlogin1"/>
	<decorator:getProperty property="page.local_script_memberlogin2"/>
</body>
</html>

