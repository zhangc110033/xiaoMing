<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>SMINT Demo</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1 user-scalable=no">
<link rel='stylesheet' type='text/css'>
<link href="css/demo.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/libs/jquery/jquery.min.1.10.2.js"></script>
<script type="text/javascript" src="js/libs/jquery/jquery.smint.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.subMenu').smint({ 'scrollSpeed' : 1000 });
	});
	function openTab(url) {
		window.open(url);
	}
</script>
</head>
<body onload="setTimeout(function() { window.scrollTo(0, 1) }, 100);">
	<div class="wrap">
		<div class="subMenu">
			<div class="inner">
				<a href="#" id="sTop" class="subNavBtn">Home</a>
				<a href="#" id="s1" class="subNavBtn">animate_demo</a>
				<a href="#" id="s2" class="subNavBtn">测试</a>
				<a href="#" id="s3" class="subNavBtn">html5</a>
				<a href="#" id="s4" class="subNavBtn"></a>
				<a href="#" id="s5" class="subNavBtn end"></a>
			</div>
		</div>
		<div class="section sTop">
			<div class="inner">
				<h1>Welcome to the SMINT Demo page!</h1>
				<p>Click the links below to see it in action!</p>
			</div>
			<br class="clear">
		</div>
		<div class="section s1">
			<div class="inner">
				<h1>animate_demo</h1>
				<div>
					<p onclick="openTab('./jsp/animated_menu/animated_menu.jsp')"">animated_menu</p>
					<p onclick="openTab('./jsp/dropdownbox/dropdownbox.jsp')"">dropdownbox</p>
					<p onclick="openTab('./jsp/magnify/magnify.jsp')"">magnify</p>
					<p onclick="openTab('./jsp/form_validator/form_validator.jsp')"">form_validator</p>
				</div>
			</div>
		</div>
		<div class="section s2">
			<div class="inner">
				<h1>测试</h1>
				<div>
					<p onclick="openTab('./jsp/css_test.jsp')"">css测试</p>
					<p onclick="openTab('./jsp/cell_drag_selector/js_test.jsp')">cell_drag_selector</p>
					<p onclick="openTab('./jsp/js_test/js_test.jsp')">js_test</p>
				</div>
			</div>
		</div>
		<div class="section s3">
			<div class="inner">
				<h1>html5</h1>
				<p onclick="openTab('./jsp/exp_canvas.jsp')">html5绘图</p>
				<p onclick="openTab('./jsp/svg/svg.jsp')">html5矢量图(svg)</p>
			</div>
		</div>
		<div class="section s4">
			<div class="inner">
				<h1></h1>
			</div>
		</div>
		<div class="section s5">
			<div class="inner">
				<h1></h1>
				<div></div>
			</div>
		</div>
	</div>
</body>
</html>
