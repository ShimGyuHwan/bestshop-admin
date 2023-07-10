<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/menu.css?v=5">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="./js/menu.js?v=2"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="menu_frm">
<section class="s">
<ul class="sul">

<li onclick="page('./shop_config.do')">쇼핑몰 기본설정</li>
<li onclick="page('./member_list.do')">회원관리</li>
<li onclick="page('./notice_list.do?page=1')">공지사항</li>
<li onclick="page('./shop_setup.do')">쇼핑몰관리</li>
<li onclick="page('./shop_product_list.do?page=1')">상품리스트</li>
<li>주문내역</li>
<li>매출내역</li>
</ul>
<input type="hidden" name="page" value="1">
</section>
</form>
</body>
</html>