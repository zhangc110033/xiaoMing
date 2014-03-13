$(function() {
	Ext.getCmp();
	document.querySelector("ul").addEventListener("click", function(event) {
		//event.stopPropagation();
		console.info("捕获..." + new Date());
	}, true);
	document.querySelector("ul").addEventListener("click", function(a, b, c, d) {
		console.info("冒泡..." + new Date());
	}, false);
	document.querySelector("li").addEventListener("click", function(a, b, c, d) {
		console.info("li..." + new Date());
	});
});
