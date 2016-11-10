<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Layout</title>
    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="resources/css/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/css/sb-admin-2.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="resources/css/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- jQuery -->
    <script src="resources/js/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/js/metisMenu.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <script src="resources/js/raphael.min.js"></script>
    <script src="resources/js/morris.min.js"></script>
    <script src="resources/js/morris-data.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="resources/js/sb-admin-2.js"></script>

</head>
<body>
	<div id="wrapper">
    	<page:applyDecorator name="header" />
        <page:applyDecorator name="menu"/>
        <div class="container-fluid">
        	<div id="page-wrapper">
            	<decorator:body/>
            </div>
        </div>
    </div>
        <div class="footer navbar-fixed-bottom" style="text-align: center !important;" width="100%">
        	ⓒ Copyright 2016.10.10. Itschool.ac.kr Ltd
        </div>
        
	<script src="resources/plugins/jquery-1.10.2.js"></script>
    <script src="resources/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="resources/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="resources/plugins/pace/pace.js"></script>
    <script src="resources/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="resources/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="resources/plugins/morris/morris.js"></script>
</body>
</html>