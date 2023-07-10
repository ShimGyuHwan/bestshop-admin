<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/membermodify.css?v=4">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="./js/membermodify.js?v=2"></script>
<title></title>
</head>
<body style="overflow-x:hidden; overflow-y:hidden;">

<form id="mfy">
<ul class="modify_popup">
<li><span>ㅤ[고객정보 수정]</span></li>
<li><span>아이디</span><span>${mid}</span></li>
<li><span>고객명</span><span>${mname}</span></li>
<li><span>레벨</span><span><input type="text" name="mlevel"></span></li>
<li><span>포인트</span><span><input type="text" name="mpoint"></span></li>
<li><span>휴면상태</span><input type="radio" name="mdormant" value="Y"><label style="line-height: 45px">적용</label><input type="radio" name="mdormant" value="N"><label style="	line-height: 45px;">미적용</label></li>
<li><span>탈퇴일자</span><span></span></li>
<li><div onclick="mdf()">정보수정</div><div onclick="cls()">창닫기</div></li>
 
</ul>
<input type="hidden" name="mid" value="${mid}">
</form>
</body>
</html>