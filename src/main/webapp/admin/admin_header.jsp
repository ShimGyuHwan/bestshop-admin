<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% HttpSession session1 = request.getSession();
String name = (String)session1.getAttribute("admin"); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/header.css?v=6">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="./js/header.js?v=1"></script>
<title>메인-헤더</title>
</head>
<body>
<form id="h">
<header class="ah">
<ul class="hul">
<li>
<img src="./img/logo.png"><span>ADMINISTRATOR</span>
</li>
<li>
<span><%=name %> 관리자</span>
<span onclick="modify(alert('서비스 준비중 입니다.'))">[개인정보 수정]</span>
<span onclick="logout()">[로그아웃]</span>
</li>

</ul>

</header>
</form>
</body>
</html>