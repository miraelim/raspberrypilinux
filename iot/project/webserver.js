var express = require('express');
var bodyParser = require('body-parser');
var app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.post('/', handlePostRequest);  // Post 방식 사용, post방식으로 값이 들어오면      handlePostRequest 함수 호출
app.listen(9000, function() {  // Port 번호9000번 지정
  console.log('Server is listening @ 9000');
});
function handlePostRequest(req, res) {  // 들어오는 데이터가 req 에 저장됨
  console.log(req.body);  //  들어오는 데이터 출력
}


