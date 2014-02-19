var http = require("http"), url = require("url"), handle = require("./handlers");
function route(response, request) {
	var pathname = url.parse(request.url).pathname;
	console.log("Request for " + pathname + " received.");
	if (typeof handle[pathname] === 'function') {
		handle[pathname](response, request, pathname);
	} else {
		if (!handle.getResources(response, request, pathname)) {
			console.error("No request handler found for " + pathname);
			response.writeHead(404, { "Content-Type" : "text/html" });
			response.write("404 Not found");
			response.end();
		}
	}
}
exports.route = route;