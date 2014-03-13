<!DOCTYPE HTML>
<html>
<%
    String root = request.getContextPath();
%>
<style type="text/css">
.hover-shadow {
	display: inline-block;
	position: relative;
	-webkit-transition-duration: 0.3s;
	transition-duration: 0.3s;
	-webkit-transition-property: -webkit-transform;
	transition-property: transform;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	-webkit-transform: translateZ(0);
	-ms-transform: translateZ(0);
	transform: translateZ(0);
	box-shadow: 0 0 1px rgba(0, 0, 0, 0);
}

.hover-shadow:before {
	pointer-events: none;
	position: absolute;
	z-index: -1;
	content: '';
	top: 100%;
	left: 5%;
	height: 10px;
	width: 90%;
	opacity: 0;
	background: -webkit-radial-gradient(center, ellipse, rgba(0, 0, 0, 0.35)
		0%, rgba(0, 0, 0, 0) 80%);
	background: radial-gradient(ellipse at center, rgba(0, 0, 0, 0.35) 0%,
		rgba(0, 0, 0, 0) 80%);
	/* W3C */
	-webkit-transition-duration: 0.3s;
	transition-duration: 0.3s;
	-webkit-transition-property: -webkit-transform, opacity;
	transition-property: transform, opacity;
}

.hover-shadow:hover {
	-webkit-transform: translateY(-6px);
	-ms-transform: translateY(-6px);
	transform: translateY(-6px);
	-webkit-animation-name: hover;
	animation-name: hover;
	-webkit-animation-duration: 1.5s;
	animation-duration: 1.5s;
	-webkit-animation-delay: 0.3s;
	animation-delay: 0.3s;
	-webkit-animation-timing-function: linear;
	animation-timing-function: linear;
	-webkit-animation-iteration-count: infinite;
	animation-iteration-count: infinite;
	-webkit-animation-direction: alternate;
	animation-direction: alternate;
}

.hover-shadow:hover:before {
	opacity: .4;
	-webkit-transform: translateY(6px);
	-ms-transform: translateY(6px);
	transform: translateY(6px);
	-webkit-animation-name: hover-shadow;
	animation-name: hover-shadow;
	-webkit-animation-duration: 1.5s;
	animation-duration: 1.5s;
	-webkit-animation-delay: .3s;
	animation-delay: .3s;
	-webkit-animation-timing-function: linear;
	animation-timing-function: linear;
	-webkit-animation-iteration-count: infinite;
	animation-iteration-count: infinite;
	-webkit-animation-direction: alternate;
	animation-direction: alternate;
}

* {
	margin: 0;
	padding: 0;
}

#div1 {
	width: 100px;
	height: 150px;
}

#div2 {
	width: 100px;
	height: 100px;
	position: absolute;
	left: 0;
	top: 160px;
	border: black solid 1px;
}

div {
	margin: 10px;
	border: blue solid 1px;
}

div+div {
	border: orange solid 1px;
}

#div3 {
	width: 200px;
	height: 260px;
	position: absolute;
	left: 110px;
	top: 0;
}
</style>
<body>
<title>css_test</title>
	<div id="div1" class="hover-shadow"></div>
	<div id="div2"></div>
	<div id="div3"></div>
	<script type="text/javascript"
		src="<%=root%>/js/libs/jquery/jquery.min.1.10.2.js"></script>
	<script type="text/javascript">
		(function() {
			var a = { "x" : 1 };
			var b = a;
			a.x = 2;
			b.x;
			a = { "x" : 3 };
			console.log(b.x);
			a.x = 4;
			console.log(b.x);
		})();
		document.getElementById("div1").onmouseover = function(event) {
			$(this).css('z-index', 10);
			$(this).css('background-color', '#ddf8c0');
			$(this).css('position', 'absolute');
			$(this).css('height', '175px');
			$(this).css('width', '125px');
		};
		document.getElementById("div1").onmouseleave = function(event) {
			$(this).css('position', '');
			$(this).css('background-color', '');
			$(this).css('height', '');
			$(this).css('width', '');
		};
	</script>
</body>
</html>
