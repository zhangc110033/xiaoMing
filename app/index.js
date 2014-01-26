var server = require('./server');
var route = require("./route");
var requestHandlers = require("./reqHandler");
var handler = {};
handler["/"] = requestHandlers.start;
handler["/start"] = requestHandlers.start;
handler["/upload"] = requestHandlers.upload;
server.start(route.route, handler);
//	½Ì³ÌÁ´½Ó
//	http://www.nodebeginner.org/index-zh-cn.html