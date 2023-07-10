<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="app" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/memberlist.css?v=2">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="./js/memberlist.js?v=1"></script>
<title>멤버 리스트</title>
</head>
<body>
<%@ include file="/admin/admin_header.jsp" %> <!-- 탑 -->
<%@ include file="/admin/admin_menu.jsp" %> <!-- 메뉴 -->
<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀회원관리</li>
</ul>
</section>
<form id="searchf">
<ul class="member_search">
<li>
<select name="searchm">
<option value="mid">아이디</option>
<option value="mname">고객명</option>
<option value="mtel">휴대폰</option>
</select>
</li>
<li><input type="text" name="memberinfo"></li>
<li><span onclick="msearch()">검색</span></li>
</ul>
<input type="hidden" name="page" value="1">
</form>

<section class="l2">
<ol class="lol1">
<li><input type="checkbox"></li>
<li>아이디</li>
<li>고객명</li>
<li>휴대폰</li>
<li>전화번호</li>
<li>레벨</li>
<li>포인트</li>
<li>최종접속</li>
<li>가입일</li>
<li>메일수신</li>
<li>SMS수신</li>
<li>관리</li>
</ol>

<app:set var="ea" value="${fn:length(md)}"></app:set>
<app:if test="${ea==0}">

<ol class="lol2">
<li style="width:100%">검색된 사용자가 없습니다.</li>
</ol>
</app:if>
<form id="member_frm">
<app:forEach var="i" items="${md}">
<ol class="lol2 lol1">
<li><input type="checkbox"></li>
<li>${i["mid"]}</li>
<li>${i["mname"]}</li>
<li>${i["mtel"]}</li>
<li>${i["mphone"]}</li>
<li>${i["mlevel"]}</li>
<li>${i["mpoint"]}</li>
<li>${i["mjoin"]}</li>
<li>${i["mlogin"]}</li>
<li>${i["memailok"]}</li>
<li>${i["msmsok"]}</li>
<li><span onclick="member_modify('${i.mid}','${i.mname}')">수정</span><span>정지</span></li>
</ol>



</app:forEach>
<input type="hidden" name="mid">
<input type="hidden" name="mname">
</form>
</section>

<form id="search_page">
<section class="member_page">
<ul>

<li onclick="searchno('first')"><<</li>
<li onclick="searchno('pre')"><</li>
<app:forEach var="cnt" begin="${startpage}" end="${endpage}">
<li onclick="searchno('${cnt}')">${cnt}</li>
</app:forEach>
<li onclick="searchno('next')">></li>
<li onclick="searchno('last')">>></li>
</ul>

</section>
<input type="hidden" name="memberinfo" value='${info}'>
<input type="hidden" name="page" value=''>
</form>

<section class="member_d">
<div>
<span onclick="member_d()">선택삭제</span>
</div>
</section>
<%@ include file="/admin/admin_footer.jsp" %> <!-- 카피라이터 -->


</body>
<script>
var nowpage=${page};
var endpage =${endpage};
var startpage=${startpage};
var totalpage=${totalpage};

function searchno(data){
	var page = document.getElementsByName("page");

	if(data=="next"){
		if(nowpage==totalpage){
			alert("끝 페이지 입니다.")
			search_page.page.value=nowpage;
		}else{
			search_page.page.value= endpage+1;
		}
	}
	else if(data=="pre"){
		
	if(startpage==1){
		search_page.page.value=1;
	}
	
	else {
		search_page.page.value= startpage-5;	
	}}
	else if(data=="first"){
		search_page.page.value=1;
	}
	else if(data=="last"){
		search_page.page.value =totalpage;
	}	
	else{
		search_page.page.value=data;	
	}
	
	search_page.method="GET";
	search_page.action="member_search.do";
	search_page.submit();
	
	
}
</script>


</html>