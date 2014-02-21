$(function() {
	var myWindow = window
	.open(location.protocol + "//" + location.host + "/pdf/UI.pdf");
	var onload = function() {
		console.info("123");
		myWindow.print();
	};
//	myWindow.onload = onload();
	setTimeout(onload, 5000);
});
//$(function() {
//	function downloadFile(url) {
//		var hiddenIFrameID = 'hiddenDownloader_';
//		var iframe = document.getElementById(hiddenIFrameID);
//		if (iframe === null) {
//			iframe = document.createElement('iframe');
//			iframe.style.display = "none";
//			iframe.id = hiddenIFrameID;
//			if (iframe.attachEvent) {
//				iframe.attachEvent("onload", function() {
//					window.frames["hiddenDownloader_"].focus();
//					window.frames["hiddenDownloader_"].print();
//				});
//			} else {
//				iframe.onload = function() {
//					window.print();
//				};
//			}
//			iframe.src = url;
//			document.body.appendChild(iframe);
//		}
//		iframe.src = url;
//		document.body.appendChild(iframe);
//	}
//	downloadFile("http://172.16.1.144:8888/pdf/UI.pdf");
//});