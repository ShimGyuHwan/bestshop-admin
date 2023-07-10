<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="app" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/list.css?v=3">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>메인-리스트</title>
</head>
<body>
<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>신규등록 관리자</li>
</ul>
</section>

<section class="l2">
<ol class="lol1">
<li>NO</li>
<li>관리자명</li>
<li>아이디</li>
<li>전화번호</li>
<li>이메일</li>
<li>담당부서</li>
<li>담당직책</li>
<li>가입일자</li>
<li>승인여부</li>
</ol>





<app:set var="ea" value="${fn:length(ad)}"></app:set>
<app:if test="${ea==0}">

<ol class="lol2">
<li style="width:100%">신규 등록된 관리자가 없습니다.</li>
</ol>
</app:if>

<form id="fl" action="acceptok.do" method="post">
<input type="hidden" value="" name="ac">
<app:forEach var="i" items="${ad}">
<ol class="lol2">
<li>${ea}</li>
<li>${i["aname"]}</li>
<li>${i["aid"]}</li>
<li>${i["atel"]}</li>
<li>${i["aemail"]}</li>
<li>${i["adpt"]}</li>
<li>${i["apst"]}</li>
<li>${i["adate"]}</li>
<li><span onclick="accept('${i.aidx}')">승인</span><span>미승인</span></li>
</ol>
<app:set var="ea" value="${fn:length(ad)-1}"></app:set>
</app:forEach>
</form>
</section>
</body>
<script>
function accept(a){
	if(confirm('승인 하시겠습니까?')){
		fl.ac.value=a;
		console.log(a);
		//fl.submit()	
}
	
}
</script>
</html>