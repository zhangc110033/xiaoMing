<!DOCTYPE HTML>
<html>
<%
    String root = request.getContextPath();
%>
<head>
<style type="text/css">
tr td {
	border: solid #9195eb 1px;
	padding: 5px 60px;
}

@media screen and (max-device-width: 1000px) {
	tr td {
		border: solid black 1px;
		padding: 5px 60px;
	}
}

.drag-select {
	/* z-index: 999; */
	border: 2px solid blue;
	position: absolute;
	border-radius: 5px;
	opacity: 0.5;
}

.selected {
	background-color: #d2d2fb;
}

#float_div {
	height: 30px;
	width: 100%;
	border: blue solid 1px;
	background: -moz-linear-gradient(center top, #dbeaf9 0%, #E5E5E5 100%)
		repeat scroll 0 0;
	/* chrome等 webkit内核的浏览器的渐变样式 */
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#dbeaf9),
		to(#E5E5E5), color-stop(0.5, #E5E5E5)) repeat scroll 0 0;
	/* IE10 非滤镜渐变样式,于IE6-9的方式不同 */
	background: -ms-linear-gradient(top, #dbeaf9, #E5E5E5);
}
</style>
</head>
<body>
	<img src="img/title.png" alt="title">
	<div style="height: 300px; border: blue solid 1px"></div>
	<div id="float_div"></div>
	<div class="login-form">
		<h1>Login Form</h1>
		<form action="#">
			<input type="text" name="username" placeholder="username">
			<input type="password" name="password" placeholder="password">
			<span>
				<input type="checkbox" name="checkbox">
				<label for="checkbox">remember</label>
			</span>
			<input type="submit" value="log in">
		</form>
	</div>
	<table>
	</table>
	<script src="js/login-form.js"></script>
</body>
<script type="text/javascript"
	src="<%=root%>/js/libs/jquery/jquery.min.1.10.2.js"></script>
<script type="text/javascript" src="dragger.js">
	
</script>
</html>
