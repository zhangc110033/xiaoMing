<!DOCTYPE HTML>
<html>
<%
    String root = request.getContextPath();
%>
<head>
<style type="text/css">
ul {
	display: none;
}

input[type="text"] {
	position: relative;
}

.mask {
	position: absolute;
	top: 0px;
	left: 0px;
	opacity: 0;
	background-color: black;
	width: 100%;
	height: 100%;
	display: none;
}

.window {
	width: 40%;
	height: 30%;
	border: solid 1px;
	position: absolute;
	background-color: white;
	left: 30%;
	top: -40%;
}

.close {
	color: #000000;
	float: right;
	font-size: 20px;
	font-weight: bold;
	line-height: 20px;
	opacity: 0.5;
	margin: 0px 5px 0px 0px;
	text-shadow: 0 1px 0 #FFFFFF;
	cursor: pointer;
}
</style>
</head>
<body>
	<canvas id="myCanvas" width="200" height="200"
		style="border: 1px solid #c3c3c3;">
Your browser does not support the canvas element.
</canvas>
	<script type="text/javascript"
		src="<%=root%>/js/libs/jquery/jquery.min.1.10.2.js"></script>
	<script type="text/javascript">
		var c = document.getElementById("myCanvas");
		var cxt = c.getContext("2d");
		cxt.fillStyle = "#dc7017";
		//cxt.moveTo(100, 100);
		var x = 1, y = 1, side = 100;
		function paint() {
			if (x < side && y == 1) {
				x++;
			} else if (y < side && x == side) {
				y++;
			} else if (y == side && x > 1) {
				x--;
			} else if (x == 1 && y > 1) {
				y--;
			} else if (x == 1 && y == 1) {
				clearTimeout(task);
			}
			cxt.lineTo(x, y);
			cxt.stroke();
			var task = setTimeout(paint, 10);
		}
		paint();
		$(function() {
			var slide = function() {
				var ul = $(this).closest('body').find('ul');
				ul.css('display') == 'none' ? ul.slideDown() : ul.slideUp();
			};
			$('button:first').on('click', slide);
			$('div[style]').on('mouseenter', slide);
			$('div[style]').on('mouseleave', function() {
				$('body').find('ul').slideUp();
			});
			$('input[type="text"]').on('keyup', function() {
				var amount = +$('input[type="text"]').val();
				var price = +$('.price').data('price');
				$('p span').text(amount * price);
			});
			$('#animate').on('click', function() {
				var texts = $('input[type="text"]');
				var i = 0;
				var duration = 300;
				var ani = function() {
					$(texts[i]).animate({ 'top' : '-50px' }, duration);
					$(texts[i]).animate({ 'top' : '0px' }, duration);
					i != texts.length && setTimeout(ani, 150);
					i++;
				};
				setTimeout(ani, duration);
			});
			var action = function() {
				if (!$('.mask').length) {
					$('body').append('<div class="mask"></div>');
					$('.mask').click(function() {
						$('.window').animate({ top : '-40%' }, 300);
						$('.mask').animate({ opacity : 0 }, 500, function() {
							$('.mask').hide();
						});
					});
				}
				$('.mask').show();
				$('.mask').animate({ opacity : 0.7 }, 500);
				if (!$('.window').length) {
					$('body')
					.append('<div class="window"><div class="close">x</div>');
					$('.window div').on('click', function() {
						$('.window').animate({ top : '-40%' }, 300);
						$('.mask').animate({ opacity : 0 }, 500, function() {
							$('.mask').hide();
						});
					});
				}
				$('.window').animate({ top : '10%' }, 300);
			};
			$('#modelWindow').on('click', action);
		});
	</script>
	<div style="height: 20px; width: 20px; border: 1px solid blue"></div>
	<button type="button" style="width: 200px">click</button>
	<button id="modelWindow" type="button" style="width: 200px">modelWindow</button>
	<button id="animate" type="button" style="width: 200px">animate</button>
	<ul>
		<li>9:00AM</li>
		<li>9:00AM</li>
		<li>18:00PM</li>
	</ul>
	<div class="price" data-price="239" data-bad="bading">price:239.00</div>
	<input type="text">
	<input type="text">
	<input type="text">
	<input type="text">
	<input type="text">
	<input type="text">
	<input type="text">
	<input type="text">
	<p>
		total:
		<span></span>
	</p>
</body>
</html>
