<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=2">
<link rel="stylesheet" type="text/css" href="./css/mreserveinfo.css?v=4">
<script src="./js/view.js?v=1"></script>


<title>예약확인페이지</title>
</head>
<body>

<form id="f">
<input type="hidden" name="num" value="" id="h">
<section class="infos">
	<div class="all">
		<p>야영장 예약 정보</p>
		<label>※ 야영장 예약은 PC에서만 가능 합니다.</label>
		<div><img src="./ico/camping.svg" class="ico"><span > 123 야영장</span></div>
		<div><span>야영장 위치</span><span>123123123 -123123123312 </span></div>
		<div>총 금액: 123123123원</div>
		<div><img src="./ico/report.svg" class="ico"><span>예약자 정보</span></div>
		<div><span>고객명</span><span>12123123</span></div>
		<div><span>연락처</span><span>123123132</span></div>
		<div><span>인원수</span><span>12312312312</span></div>
		<div><span>예약번호</span><span>123123123123</span></div>
		<div><img src="./ico/pay.svg" class="ico"><span>결제수단</span></div>
		<div class="box_all">
			<span class="box" id="pay">신용카드</span>
			<span class="comp" id="ok">입금완료</span>
			
		</div>
		
		<div class="b">
		<span onclick="back()"class="btn">예약취소</span>
		
		</div>
	</div>
</section>
</form>

</body>
<script>
var p =document.getElementById("pay");
var o =document.getElementById("ok");
var msg ="";
var h = document.getElementById("h");

if(msg =="a"){
	p.innerText="무통장 입금";
	o.innerText="입금완료";
}
else if(msg=="b"){
	p.innerText="신용카드";
}
else if(msg=="c"){
	p.innerText="계좌이체";
}
function adf(){
	window.location = "./reserv_ck.html";
}
</script>
</html>