<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>main</title>

<decorator:head />
</head>

<body>
	<table border="1" align="center" width="70%" height="auto">
		
		<tr><td colspan="2" width="100%"><page:applyDecorator id="header" name="header"/>
		</td></tr>
		<tr>
			<td width="20%"><page:applyDecorator id="menu" name="menu"/></td>
			<td width="70%"><decorator:body/></td>
			<td width="10%"><page:applyDecorator id="rmenu" name="rmenu"/></td>
		</tr>
		<tr><td colspan="2" width="100%"><page:applyDecorator id="footer" name="footer"/>
		</td></tr>
	</table>
</body>
</html>

