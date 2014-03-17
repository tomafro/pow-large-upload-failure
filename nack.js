var http = require('http');
var nack = require('nack');

var app = nack.createProcess("config.ru");

http.createServer(function (req, res) {
  app.proxy(req, res);
}).listen(8124, "127.0.0.1");
