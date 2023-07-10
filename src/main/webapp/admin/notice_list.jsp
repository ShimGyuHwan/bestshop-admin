<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="app" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/noticelist.css?v=5">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<title>공지사항 목록</title>
</head>
<body>
<%@ include file="/admin/admin_header.jsp" %> <!-- 탑 -->
<%@ include file="/admin/admin_menu.jsp" %> <!-- 메뉴 -->

<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀공지사항 관리페이지</li>
</ul>
</section>

<section class="l2">
<ol class="lol1">
<li><input type="checkbox" id="allck"></li>
<li>NO</li>
<li>제목</li>
<li>글쓴이</li>
<li>날짜</li>
<li>조회</li>
</ol>
<app:set var="ea" value="${fn:length(md)}"></app:set>
<app:if test="${ea==0}">

<ol class="lol1 lol2">
<li style="width:100%">등록된 공지사항이 없습니다.</li>
</ol>
</app:if>
<form id="notice_frm">
<app:forEach var="i" items="${md}">
<ol class="lol2 lol1">
<li><input type="checkbox" name="cks" value="${i.nidx}"></li>
<li>${i.nidx }</li>
<li onclick="noticeinfo('${i.nidx}',${i.count})">${i.nsub }</li>
<li>${i.nwriter }</li>
<li>${i.ndate }</li>
<li>${i.count }</li>
</ol>
</app:forEach>
<input type="hidden" name="ninfo" value="">
<input type="hidden" name="ncount" value="">
</form>
</section>


<form id="npage">
<section class="notice_page">
<ul>

<li onclick="npageno('first')"><<</li>
<li onclick="npageno('pre')"><</li>
<app:forEach var="cnt" begin="${startpage}" end="${endpage}">
<li onclick="npageno('${cnt}')">${cnt}</li>
</app:forEach>
<li onclick="npageno('next')">></li>
<li onclick="npageno('last')">>></li>
</ul>

</section>
<input type="hidden" name="page" value=''>
</form>


<section class="notice_btn">
<div><span onclick="ndel()">공지삭제</span><span id="nreg">공지등록</span></div>
</section>
<%@ include file="/admin/admin_footer.jsp" %> <!-- 카피라이터 -->
</body>
<script src="./js/noticelist.js?v=3"></script>
<script>
var nowpage=${page};
var endpage =${endpage};
var startpage=${startpage};
var totalpage=${totalpage};
</script>
</html>