$(function() {
	window.dragPosition = {};
//	var a =1;
//	function fn1(){
//	alert(a);
//	var a =2;
//	}
//	fn1();
//	alert(a);
	/**/
//	var a =1;
//	function fn1(){
//	alert(a);
//	a =2;
//	}
//	fn1();
//	alert(a);
	/**/
//	var a =1;
//	function fn1(a){
//	alert(a);
//	a =2;
//	}
//	fn1();
//	alert(a);
	for ( var i = 0; i <= 50; i++) {
		$('table')
		.append('<tr><td>2223</td><td>2123</td><td>3123</td><td>2123</td><td>3123</td></tr>');
	}
	$('table')
	.on({
		'mousedown' : function(event) {
			window.dragPosition = { y : event.clientY, x : event.clientX };
			$('table')
			.append('<div class="drag-select" style="background-color: #dbeaf9"></div>');
			$('.drag-select').css('top', event.clientY).css('left', event.clientX);
			event.preventDefault();
		},
		'mouseup' : function(event) {
			window.dragPosition = {};
			$('.drag-select').hide();
			delete $('.drag-select');
		},
		'mousemove' : function(event) {
			if (window.dragPosition && event.clientY <= window.dragPosition.y) {
				$('.drag-select').css('top', event.clientY);
				$('.drag-select').css('height', window.dragPosition.y - event.clientY);
			} else {
				$('.drag-select').css('top', window.dragPosition.y);
				$('.drag-select').css('height', event.clientY - window.dragPosition.y);
			}
			if (event.clientX <= window.dragPosition.x) {
				$('.drag-select').css('left', event.clientX);
				$('.drag-select').css('width', window.dragPosition.x - event.clientX);
			} else {
				$('.drag-select').css('left', window.dragPosition.x);
				$('.drag-select').css('width', event.clientX - window.dragPosition.x);
			}
		} });
	$('td').on({ 'mouseenter' : function() {
		if (window.dragPosition.x) {
			var colNum = $(this).index();
			var rowNum = $(this).closest('tr').index();
			var startCol = window.startCmp.index();
			var startRow = window.startCmp.closest('tr').index();
			if (startRow <= rowNum) {
				for ( var i = startRow; i <= rowNum; i++) {
					var td = $($('table tr')[i]).children('td');
					if (startCol <= colNum) {
						for ( var j = startCol; j <= colNum; j++) {
							$(td[j]).addClass('selected');
						}
					} else {
						for ( var j = startCol; j >= colNum; j--) {
							$(td[j]).addClass('selected');
						}
					}
				}
			} else {
				for ( var i = startRow; i >= rowNum; i--) {
					var td = $($('table tr')[i]).children('td');
					if (startCol <= colNum) {
						for ( var j = startCol; j <= colNum; j++) {
							$(td[j]).addClass('selected');
						}
					} else {
						for ( var j = startCol; j >= colNum; j--) {
							$(td[j]).addClass('selected');
						}
					}
				}
			}
		}
	}, 'mouseleave' : function(event) {
		if (window.dragPosition.x) {
			$('td').removeClass('selected');
			var colNum = $(this).index();
			var rowNum = $(this).closest('tr').index();
			var startCol = window.startCmp.index();
			var startRow = window.startCmp.closest('tr').index();
			if (startRow <= rowNum) {
				for ( var i = startRow; i <= rowNum; i++) {
					var td = $($('table tr')[i]).children('td');
					if (startCol <= colNum) {
						for ( var j = startCol; j <= colNum; j++) {
							$(td[j]).addClass('selected');
						}
					} else {
						for ( var j = startCol; j >= colNum; j--) {
							$(td[j]).addClass('selected');
						}
					}
				}
			} else {
				for ( var i = startRow; i >= rowNum; i--) {
					var td = $($('table tr')[i]).children('td');
					if (startCol <= colNum) {
						for ( var j = startCol; j <= colNum; j++) {
							$(td[j]).addClass('selected');
						}
					} else {
						for ( var j = startCol; j >= colNum; j--) {
							$(td[j]).addClass('selected');
						}
					}
				}
			}
		}
	}, 'mousedown' : function() {
		window.startCmp = $(this);
	} });
	//滚动溢出则浮动
	$(window).scroll(function() {
		$('#float_div').data('scrollTop') || $('#float_div')
		.data('scrollTop', $('#float_div').offset().top);
		var scroll = $(window).scrollTop();
		if (scroll >= $('#float_div').data('scrollTop')) {
			if ($('#float_div').css('position') != 'fixed') {
				$('#float_div')
				.css({ position : 'fixed', top : '0', 'z-index' : 1000 });
			}
		} else {
			$('#float_div').css({ position : 'static', float : top });
		}
	});
});