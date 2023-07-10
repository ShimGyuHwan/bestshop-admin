<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/shopsetup.css?v=4">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<title>쇼핑몰관리</title>
</head>
<body>
<%@ include file="/admin/admin_header.jsp" %> <!-- 탑 -->
<%@ include file="/admin/admin_menu.jsp" %> <!-- 메뉴 -->
<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀쇼핑몰 메인 베너관리</li>
</ul>
</section>
<form id="setup">
<section class="shopsetup1">
<div>⠀메인 배너 등록</div>
<ul>

<li><input type="text" class="setuptext" name="sb1" value="${ls.get(0).sb1}">⠀배너1 <font color="red">⠀⠀※ 배너 이미지 URL를 입력하세요.</font></li>
<li><input type="text" class="setuptext" name="sbl1" value="${ls.get(0).sbl1}">⠀링크URL</li>
<li><input type="text" class="setuptext" name="sb2" value="${ls.get(0).sb2}">⠀배너2 <font color="red">⠀⠀※ 배너 이미지 URL를 입력하세요.</font></li>
<li><input type="text" class="setuptext" name="sbl2" value="${ls.get(0).sbl2}">⠀링크URL</li>
<li><input type="text" class="setuptext" name="sb3" value="${ls.get(0).sb3}">⠀배너3 <font color="red">⠀⠀※ 배너 이미지 URL를 입력하세요.</font></li>
<li><input type="text" class="setuptext" name="sbl3" value="${ls.get(0).sbl3}">⠀링크URL</li>
<li><input type="text" class="setuptext" name="sb4" value="${ls.get(0).sb4}">⠀배너4 <font color="red">⠀⠀※ 배너 이미지 URL를 입력하세요.</font></li>
<li><input type="text" class="setuptext" name="sbl4" value="${ls.get(0).sbl4}">⠀링크URL</li>

</ul>
</section>
<section class="setupbtn"><div onclick="setUp('a')">배너 변경</div></section>

<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀쇼핑몰 메인 베너관리</li>
</ul>
</section>
<section class="shopsetup1">

<div>⠀메인 팝업 등록</div>
<ul>
<li><input type="text" class="setuptext" name="sp1" value="${ls.get(0).sp1}">⠀팝업<font color="red">⠀⠀※ 팝업 이미지 URL를 입력하세요.</font></li>
<li><input type="text" class="setuptext" name="spl1" value="${ls.get(0).spl1}">⠀링크URL</li>
<li><input type="checkbox" id="popupck">팝업창 사용</li>
</ul>
</section>
<section class="setupbtn" ><div onclick="setUp('b')">팝업창 변경</div></section>

<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀쇼핑몰 AD 배너</li>
</ul>
</section>
<section class="shopsetup1">
<div>⠀AD 배너 등록</div>
<ul>
<li><input type="text" class="setuptext" name="sad1" value="${ls.get(0).sad1}">⠀AD 배너1 <font color="red">⠀⠀※ 이미지 URL를 입력하세요.</font></li>
<li><input type="text" class="setuptext" name="sadl1" value="${ls.get(0).sadl1}">⠀링크URL</li>
<li><input type="text" class="setuptext" name="sad2" value="${ls.get(0).sad2}">⠀AD 배너2 <font color="red">⠀⠀※ 이미지 URL를 입력하세요.</font></li>
<li><input type="text" class="setuptext" name="sadl2" value="${ls.get(0).sadl2}">⠀링크URL</li>
</ul>

</section>
<section class="setupbtn"><div onclick="setUp('c')">AD 배너 변경</div></section>
<input type="hidden" name="stype" id="stype">
<input type="hidden" name="spopupok" value="${ls.get(0).spopupok}">
</form>
<%@ include file="/admin/admin_footer.jsp" %> <!-- 카피라이터 -->
</body>
<script>
var ckck= '${ls.get(0).spopupok}'

if(ckck=="Y"){
	document.getElementById("popupck").checked=true;
	
}

</script>
<script src="./js/shopsetup.js?v=3"></script>
</html>