<!DOCTYPE HTML>
<html>
<%
    String root = request.getContextPath();
%>
<head>
<title>Password Verification</title>
<style type="text/css">
body {
	/* background: url(bg.jpg); */
	font-family: "Segoe UI", Candara, "Bitstream Vera Sans", "DejaVu Sans",
		"Bitstream Vera Sans", "Trebuchet MS", Verdana, "Verdana Ref",
		sans serif;
	font-size: 16px;
	color: #444;
}

ul,li {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

#container {
	width: 400px;
	padding: 0px;
	background: #fefefe;
	margin: 0 auto;
	border: 1px solid #c4cddb;
	border-top-color: #d3dbde;
	border-bottom-color: #bfc9dc;
	box-shadow: 0 1px 1px #ccc;
	border-radius: 5px;
	position: relative;
}

h1 {
	margin: 0;
	padding: 10px 0;
	font-size: 24px;
	text-align: center;
	background: #eff4f7;
	border-bottom: 1px solid #dde0e7;
	box-shadow: 0 -1px 0 #fff inset;
	border-radius: 5px 5px 0 0;
	/* otherwise we get some uncut corners with container div */
	text-shadow: 1px 1px 0 #fff;
}

form ul li {
	margin: 10px 20px;
}

form ul li:last-child {
	text-align: center;
	margin: 20px 0 25px 0;
}

input {
	padding: 10px 10px;
	border: 1px solid #d5d9da;
	border-radius: 5px;
	box-shadow: 0 0 5px #e8e9eb inset;
	width: 328px;
	/* 400 (#container) - 40 (li margins) -  10 (span paddings) - 20 (input paddings) - 2 (input borders) */
	font-size: 1em;
	outline: 0; /* remove webkit focus styles */
}

input:focus {
	border: 1px solid #b9d4e9;
	border-top-color: #b6d5ea;
	border-bottom-color: #b8d4ea;
	box-shadow: 0 0 5px #b9d4e9;
}

label {
	color: #555;
}

#container span {
	background: #f6f6f6;
	padding: 3px 5px;
	display: block;
	border-radius: 5px;
	margin-top: 5px;
	float: left;
}

button {
	background: #57a9eb; /* Old browsers */
	background: -moz-linear-gradient(top, #57a9eb 0%, #3a76c4 100%);
	/* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #57a9eb),
		color-stop(100%, #3a76c4)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #57a9eb 0%, #3a76c4 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #57a9eb 0%, #3a76c4 100%);
	/* Opera 11.10+ */
	background: -ms-linear-gradient(top, #57a9eb 0%, #3a76c4 100%);
	/* IE10+ */
	background: linear-gradient(top, #57a9eb 0%, #3a76c4 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient(           startColorstr='#57a9eb',
		endColorstr='#3a76c4', GradientType=0); /* IE6-9 */
	border: 1px solid #326fa9;
	border-top-color: #3e80b1;
	border-bottom-color: #1e549d;
	color: #fff;
	text-shadow: 0 1px 0 #1e3c5e;
	font-size: .875em;
	padding: 8px 15px;
	width: 150px;
	border-radius: 15px;
	box-shadow: 0 1px 0 #bbb, 0 1px 0 #9cccf3 inset;
}

button:active {
	background: #3a76c4; /* Old browsers */
	background: -moz-linear-gradient(top, #3a76c4 0%, #57a9eb 100%);
	/* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #3a76c4),
		color-stop(100%, #57a9eb)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #3a76c4 0%, #57a9eb 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #3a76c4 0%, #57a9eb 100%);
	/* Opera 11.10+ */
	background: -ms-linear-gradient(top, #3a76c4 0%, #57a9eb 100%);
	/* IE10+ */
	background: linear-gradient(top, #3a76c4 0%, #57a9eb 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient(           startColorstr='#3a76c4',
		endColorstr='#57a9eb', GradientType=0); /* IE6-9 */
	box-shadow: none;
	text-shadow: 0 -1px 0 #1e3c5e;
}

#pswd_info {
	position: absolute;
	bottom: -120px;
	bottom: -115px\9; /* IE Specific */
	right: 55px;
	width: 250px;
	padding: 15px;
	background: #fefefe;
	font-size: .875em;
	border-radius: 5px;
	box-shadow: 0 1px 3px #ccc;
	border: 1px solid #ddd;
}

#pswd_info h4 {
	margin: 0 0 10px 0;
	padding: 0;
	font-weight: normal;
}

#pswd_info {
	display: none;
}

#pswd_info::before {
	content: "\25B2";
	position: absolute;
	top: -14px;
	left: 45%;
	font-size: 14px;
	line-height: 14px;
	color: #ddd;
	text-shadow: none;
	display: block;
}

.invalid {
	background: url(../images/invalid.png) no-repeat 0 50%;
	padding-left: 22px;
	line-height: 24px;
	color: #ec3f41;
}

.valid {
	background: url(../images/valid.png) no-repeat 0 50%;
	padding-left: 22px;
	line-height: 24px;
	color: #3a7d34;
}
</style>
</head>
<body>
	<div id="container">
		<h1>Password Verification</h1>
		<form action="">
			<ul>
				<li><label for="username">Username:</label> <span>
						<input id="username" name="username" type="text" />
					</span></li>
				<li><label for="pswd">Password:</label> <span>
						<input id="pswd" type="password" name="pswd" />
					</span></li>
				<li><button type="submit">Register</button></li>
			</ul>
		</form>
		<div id="pswd_info">
			<h4>Password must meet the following requirements:</h4>
			<ul>
				<li id="letter" class="invalid">At least <strong>one
						letter</strong></li>
				<li id="capital" class="invalid">At least <strong>one
						capital letter</strong></li>
				<li id="number" class="invalid">At least <strong>one
						number</strong></li>
				<li id="length" class="invalid">Be at least <strong>8
						characters</strong></li>
			</ul>
		</div>
	</div>
	<script type="text/javascript"
		src="<%=root%>/js/libs/jquery/jquery.min.1.10.2.js"></script>
	<script type="text/javascript">
		$(function() {
			$('input[type=password]').on({ keyup : function() {
				var pswd = $(this).val();
				if (pswd.length < 8) {
					$('#length').removeClass('valid').addClass('invalid');
				} else {
					$('#length').removeClass('invalid').addClass('valid');
				}
				if (pswd.match(/[A-z]/)) {
					$('#letter').removeClass('invalid').addClass('valid');
				} else {
					$('#letter').removeClass('valid').addClass('invalid');
				}
				//validate capital letter
				if (pswd.match(/[A-Z]/)) {
					$('#capital').removeClass('invalid').addClass('valid');
				} else {
					$('#capital').removeClass('valid').addClass('invalid');
				}
				//validate number
				if (pswd.match(/\d/)) {
					$('#number').removeClass('invalid').addClass('valid');
				} else {
					$('#number').removeClass('valid').addClass('invalid');
				}
			}, focus : function() {
				$('#pswd_info').show();
			}, blur : function() {
				$('#pswd_info').hide();
			} });
		})
	</script>
</body>
</html>
