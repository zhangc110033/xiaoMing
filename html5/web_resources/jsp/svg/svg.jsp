<!DOCTYPE HTML>
<html>
<head>
<style type="text/css">
</style>
<script type="text/javascript">
	var x = 10;
	function foo() {
		console.log(x);
	}
	(function(funArg) {
		window.x = 20;
		funArg(); // 10, but not 20
	})(foo); // pass "down" foo as a "funarg"
</script>
</head>
<body>
	<svg width="100%" height="100%" version="1.1"
		xmlns="http://www.w3.org/2000/svg">
	<circle cx="100" cy="50" r="40" stroke="#32BBFE" stroke-width="2"
			fill="#32BBFE" />
	<rect x="20" y="20" rx="100" ry="100" width="250" height="100"
			style="fill:red;stroke:black;
			stroke-width:5;opacity:0.5" />
</svg>
</body>
</html>
