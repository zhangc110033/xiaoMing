<html>
<%
    String root = request.getContextPath();
%>
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=320, initial-scale=1, maximum-scale=1, user-scalable=1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords"
	content="easydropdown, jquery, drop-down, bootstrap, front-end, css3, jquery, patrick kunka, barrel, new york, manhattan, mixitup" />
<meta name="description"
	content="A Drop-down Builder for Styleable Inputs and Menus" />
<meta property="og:description"
	content="A Drop-down Builder for Styleable Inputs and Menus" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="EasyDropDown" />
<meta property="og:title" content="EasyDropDown" />
<meta property="og:image" content="http://kunkalabs.com/im/og_logo.png" />
<link rel="shortcut icon" type="image/x-icon"
	href="http://kunkalabs.com/im/favicon.ico" />
<link rel="stylesheet" type="text/css" href="demo.css" />
<link rel="stylesheet" type="text/css" href="themes/easydropdown.css" />
<script type="text/javascript"
	src="<%=root%>/js/libs/jquery/jquery.min.1.10.2.js"></script>
<script src="jquery.easydropdown.min.js"></script>
<title>EasyDropDown - A Drop-down Builder for Styleable Inputs
	and Menus</title>
</head>
<body>
	<header>
		<div class="wrapper just">
			<hgroup>
				<h1>jQuery EasyDropDown</h1>
				<h2>
					A Drop-down Builder for <strong>Styleable</strong> Inputs and Menus
				</h2>
			</hgroup>
		</div>
	</header>
	<section>
		<div class="col col_1">
			<div class="wrapper">
				<fieldset>
					<select tabindex="4" class="dropdown">
						<option value="" class="label" value="">Month</option>
						<option value="1">January</option>
						<option value="2">February</option>
						<option value="3">March</option>
						<option value="4">April</option>
						<option value="5">May</option>
						<option value="6">June</option>
						<option value="7">July</option>
						<option value="8">August</option>
						<option value="9">September</option>
						<option value="10">October</option>
						<option value="11">November</option>
						<option value="12">December</option>
					</select> <select tabindex="5" class="dropdown"
						data-settings='{"cutOff": 12}'>
						<option value="" class="label">Day</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select> <select tabindex="6" class="dropdown"
						data-settings='{"cutOff": 12}'>
						<option value="" class="label">Year</option>
						<option value="2013">2013</option>
						<option value="2012">2012</option>
						<option value="2011">2011</option>
						<option value="2010">2010</option>
						<option value="2009">2009</option>
						<option value="2008">2008</option>
						<option value="2007">2007</option>
						<option value="2006">2006</option>
						<option value="2005">2005</option>
						<option value="2004">2004</option>
						<option value="2003">2003</option>
						<option value="2002">2002</option>
						<option value="2001">2001</option>
						<option value="2000">2000</option>
						<option value="1999">1999</option>
						<option value="1998">1998</option>
						<option value="1997">1997</option>
						<option value="1996">1996</option>
						<option value="1995">1995</option>
						<option value="1994">1994</option>
						<option value="1993">1993</option>
						<option value="1992">1992</option>
						<option value="1991">1991</option>
						<option value="1990">1990</option>
					</select>
				</fieldset>
				<h4>
					Default /
					<a href="themes/easydropdown.css">easydropdown.css</a>
				</h4>
				<select class="dropdown" tabindex="7">
					<option value="1">Option 1</option>
					<option value="2">Option 2</option>
					<option value="3">Option 3</option>
					<option value="4">Option 4</option>
					<option value="5">Option 5</option>
				</select>
				<h4>
					Metro /
					<a href="themes/easydropdown.metro.css">easydropdown.metro.css</a>
				</h4>
				<select class="dropdown" tabindex="8"
					data-settings='{"wrapperClass":"metro"}'>
					<option value="1">Option 1</option>
					<option value="2">Option 2</option>
					<option value="3">Option 3</option>
					<option value="4">Option 4</option>
					<option value="5">Option 5</option>
				</select>
				<h4>
					Flat /
					<a href="themes/easydropdown.flat.css">easydropdown.flat.css</a>
				</h4>
				<select class="dropdown" tabindex="9"
					data-settings='{"wrapperClass":"flat"}'>
					<option value="1">Option 1</option>
					<option value="2">Option 2</option>
					<option value="3">Option 3</option>
					<option value="4">Option 4</option>
					<option value="5">Option 5</option>
				</select>
			</div>
		</div>
	</section>
</body>
</html>