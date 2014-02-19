function _200(response) {
	response.writeHead("200", { "Content-type" : "text/html" });
	response.write("200 OK");
	response.end();
}
function _304(response) {
	response.writeHead("304", { "Content-type" : "text/html" });
	response.write("304 Not Modified");
	response.end();
}
function _400(response) {
	response.writeHead("400", { "Content-type" : "text/html" });
	response.write("400 Bad Request!");
	response.end();
}
function _404(response) {
	response.writeHead("404", { "Content-type" : "text/html" });
	response.write("404 Not Found!");
	response.end();
}
function _500(response) {
	response.writeHead("500", { "Content-type" : "text/html" });
	response.write("500 Interval Error!");
	response.end();
}
exports["200"] = exports._200 = _200;
exports["304"] = exports._304 = _304;
exports["400"] = exports._400 = _400;
exports["404"] = exports._404 = _404;
exports["500"] = exports._500 = _500;