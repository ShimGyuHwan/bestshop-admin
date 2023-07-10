<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/noticeview.css?v=2">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="./js/notice_view.js?v=3"></script>


<title>공지사항</title>
</head>
<body>
<%@ include file="/admin/admin_header.jsp" %> <!-- 탑 -->
<%@ include file="/admin/admin_menu.jsp" %> <!-- 메뉴 -->
<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀공지사항 등록페이지</li>
</ul>
</section>

<form id="notice_view">
<section class="notice_s">
<ul>
<li><span>제목</span><div>${md.nsub}</div></li>
<li><span>글쓴이</span><div>${md.nwriter}</div></li>
<li><span>첨부파일</span><div>${md.nfile}</div></li>
<li><span>공지내용</span><div id="ntexts" class="ntexts">${md.ntext}</div></li>
<li><div onclick="location.href='./notice_list.do?page=1'">공지목록</div><div onclick="notice_mdf()">공지수정</div><div onclick="notice_d()">공지삭제</div></li>
</ul>
<input type="hidden" name="nidx" value="${md.nidx}">
<input type="hidden" name="nsub" value="${md.nsub}">
<input type="hidden" name="nwriter" value="${md.nwriter}">
<input type="hidden" name="nfile" value="${md.nfile}">
<input type="hidden" name="ntext" value="${md.ntext}">


</section>
</form>

<%@ include file="/admin/admin_footer.jsp" %> <!-- 카피라이터 -->
</body>

</html>