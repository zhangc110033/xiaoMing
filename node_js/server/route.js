var url = require("url"), handle = require("./handlers"), exp = require("./exception");
function route(response, request) {
	var pathname = url.parse(request.url).pathname;
	console.log("Request for " + pathname + " received.");
	//根据route返回的方法集合调用响应的接口
	if (typeof handle[pathname] === 'function') {
		handle[pathname](response, request, pathname);
	} else {
		if (!handle.getResources(response, request, pathname)) {
			console.error("No request handler found for " + pathname);
			global.exception._200(response);
		}
	}
}
exports.route = route;