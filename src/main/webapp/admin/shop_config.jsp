<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/shopconfig.css?v=1">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="./js/header.js?v=1"></script>
<title>쇼핑몰 기본설정</title>
</head>
<body>
<%@ include file="/admin/admin_header.jsp" %> <!-- 탑 -->
<%@ include file="/admin/admin_menu.jsp" %> <!-- 메뉴 -->
<form id="configsave">
<section class="shopconfig_css">

<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀홈페이지 가입환경 설정</li>
</ul>
</section>
<ul class="shopconfig_ul">
<li><span>홈페이지 제목</span><input type="text" style="width:250px" name="ctitle" value="${ls.get(0).ctitle }"></li>
<li><span>관리자 메일 주소</span><input type="text" style="width:300px" name="cadminmail" value="${ls.get(0).cadminmail}"><label>⠀※관리자가 보내고 받는 용도로 사용하는 메일 주소를 입력합니다.(회원가입,인증메일,회원메일발송 등에서 사용)</label></li>
<li><span>포인트 사용 유/무</span><nav class="shop_nav"><input type="radio" name="cpointok" value="Y">포인트 사용</nav><nav class="shop_nav"><input type="radio" name="cpointok" value="N">포인트 미사용</nav></li>
<li class="shopconfig_li"><div><span>회원가입시 적립금</span><input type="text" class="score" style="width:80px" name="cpoint" value="${ls.get(0).cpoint}">⠀점</div><div><span>회원가입시 권한레벨</span><input type="text" class="score" style="width:80px" name="clevel" value="${ls.get(0).clevel}">⠀레벨</div></li>
</ul>

<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀홈페이지 기본환경 설정</li>
</ul>
</section>
<ul class="shopconfig_ul shop_middle">
<li style="display:flex"><div><span>회사명</span><input type="text" name="ccompname" value="${ls.get(0).ccompname}"></div><div><span>사업자등록번호</span><input type="text" name="cbiznum" value="${ls.get(0).cbiznum}"></div></li>
<li style="display:flex"><div><span>대표자명</span><input type="text" name="cceo" value="${ls.get(0).cceo}"></div><div><span>대표전화번호</span><input type="text" name="cgen" value="${ls.get(0).cgen}"></div></li>
<li style="display:flex"><div><span>통신판매업 신고번호</span><input type="text" name="ccomnum" value="${ls.get(0).ccomnum}"></div><div><span>부가통신 사업자번호</span><input type="text" name="ccombiznum" value="${ls.get(0).ccombiznum}"></div></li>
<li style="display:flex"><div><span>사업장 우편번호</span><input type="text" name="caddrnum" value="${ls.get(0).caddrnum}"></div><div><span>사업장 주소</span><input type="text" style="width:300px" name="caddr" value="${ls.get(0).caddr}"></div></li>
<li style="display:flex"><div><span>정보관리책임자명</span><input type="text" name="ccomadmin" value="${ls.get(0).ccomadmin}"></div><div><span>정보책임자 E-mail</span><input type="text" style="width:250px" name="ccomadminmail" value="${ls.get(0).ccomadminmail}"></div></li>

</ul>


<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀홈페이지 기본환경설정</li>
</ul>
</section>
<ul class="shopconfig_ul">
<li class="shopconfig_li"><div><span>무통장 은행</span><input type="text" name="cnobank" value="${ls.get(0).cnobank}"></div><div><span>은행계좌번호</span><input type="text" style="width:250px" name="cbank" value="${ls.get(0).cbank}"></div></li>
<li><span>신용카드 결제 사용</span><nav class="shop_nav"><input type="radio" name="ccredit" value="Y">사용</nav><nav class="shop_nav"><input type="radio" name="ccredit" value="N">미사용</nav><label>⠀※해당 PG사가 있을 경우 사용으로 변경합니다.</label></li>
<li><span>휴대폰 결제 사용</span><nav class="shop_nav"><input type="radio" name="ctelpay" value="Y">사용</nav><nav class="shop_nav"><input type="radio" name="ctelpay" value="N">미사용</nav><label>⠀※주문시 휴대폰 결제를 가능하게 할 것인지를 설정합니다.</label></li>
<li><span>도서상품권 결제사용</span><nav class="shop_nav"><input type="radio" name="cgift" value="Y">사용</nav><nav class="shop_nav"><input type="radio" name="cgift" value="N">미사용</nav><label>⠀※도서상품권 결제만 적용이 되며,그 외에 상품권은 결제 되지 않습니다.</label></li>
<li class="shopconfig_li"><div><span>결제 최소 포인트</span><input type="text" value="0" readonly>⠀점</div><div><span>결제 최대 포인트</span><input type="text"  value="10000000"readonly>⠀점</div></li>
<li><span>현금 영수증 발급사용</span><nav class="shop_nav"><input type="radio" name="cbill" value="Y">사용</nav><nav class="shop_nav"><input type="radio" name="cbill" value="N">미사용</nav><label>⠀※현금영수증 관련 사항은 PG사 가입이 되었을 경우 사용가능 합니다.</label></li>
<li class="shopconfig_li"><div><span>배송업체명</span><input type="text" name="cdelivery" value="${ls.get(0).cdelivery}"></div><div><span>배송비 가격</span><input type="text" class="score" name="cdprice" value="${ls.get(0).cdprice}"></div></li>
<li><span>희망배송일</span><nav class="shop_nav"><input type="radio" name="cdelivery_day" value="Y">사용</nav><nav class="shop_nav"><input type="radio" name="cdelivery_day" value="N">미사용</nav><label>⠀※희망배송일 사용시 사용자가 직접 설정 할 수 있습니다.</label></li>
</ul>
<div class="shopsave">
<span onclick="config(1)">설정 저장</span>
<span onclick="config(2)">저장 취소</span>
</div>
</section>
</form>
<%@ include file="/admin/admin_footer.jsp" %> <!-- 카피라이터 -->
</body>
<script>
var pointck ="${ls.get(0).cpointok}";
var creditck ="${ls.get(0).ccredit}";
var telpayck = "${ls.get(0).ctelpay}";
var giftck = "${ls.get(0).cgift}";
var billck = "${ls.get(0).cbill}";
var delck = "${ls.get(0).cdelivery_day}";
</script>
<script src="./js/shopconfig.js"></script>
</html>