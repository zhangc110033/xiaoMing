var http = require("http"),router = require("./router");
function start(handle) {
	function onRequest(request, response) {
		router.route(response, request);
	}
	http.createServer(onRequest).listen(8888);
	console.warn("Server has started.");
}
exports.start = start;