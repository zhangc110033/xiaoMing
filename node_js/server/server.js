var http = require("http"),route = require("./route");
function start() {
	function onRequest(request, response) {
		route.route(response, request);
	}
	http.createServer(onRequest).listen(8888);
	console.warn("Server has started...");
}
exports.start = start;