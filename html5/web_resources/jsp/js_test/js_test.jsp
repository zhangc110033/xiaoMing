<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE HTML>
<html>
<%
    String root = request.getContextPath();
%>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

ul {
	border: 1px solid red;
	margin: 5px;
}

li {
	border: 1px solid blue;
	margin: 5px;
	width: 300px;
	height: 30px;
}
</style>
<title>js_test</title>
<body>
	<ul>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	<script type="text/javascript"
		src="<%=root%>/js/libs/jquery/jquery.min.1.10.2.js"></script>
	<script type="text/javascript" src="js_test.js"></script>
</body>
</html>
