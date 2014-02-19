var url = require("url"), handle = require("./handlers"), exp = require("./exception");
function route(response, request) {
	var pathname = url.parse(request.url).pathname;
	console.log("Request for " + pathname + " received.");
	//����route���صķ������ϵ�����Ӧ�Ľӿ�
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