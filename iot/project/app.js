var http = require('http');
var server = http.createServer(function (req, res) { 
	    res.end('Hello World');
	    }); 
server.listen(9000);
console.log('서버 실행 중…');
