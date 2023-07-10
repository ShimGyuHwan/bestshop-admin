<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="app" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/memberlist.css?v=4">
<link rel="stylesheet" type="text/css" href="./css/productlist.css?v=6">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<title>상품 리스트</title>
</head>
<body>
<%@ include file="/admin/admin_header.jsp" %> <!-- 탑 -->
<%@ include file="/admin/admin_menu.jsp" %> <!-- 메뉴 -->
<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀상품관리 페이지</li>
</ul>
</section>
<form id="searchf" onsubmit="return false">
<ul class="member_search">
<li>
<select name="searchp">
<option value="pname">상품명</option>
<option value="pcode">상품코드</option>
</select>
</li>
<li><input type="text" name="productinfo"></li>
<li><span onclick="psearch()">검색</span></li>
</ul>
<input type="hidden" name="page" value="1">
</form>

<section class="l2">
<ol class="lol1 pdol">
<li><input type="checkbox" id="allck" style="margin-top:10px;"></li>
<li>상품코드</li>
<li>이미지</li>
<li>상품명</li>
<li>대분류</li>
<li>판매가격</li>
<li>할인가격</li>
<li>할인율</li>
<li>재고현황</li>
<li>판매 유/무</li>
<li>관리</li>
</ol>

<app:set var="ea" value="${fn:length(md)}"></app:set>
<app:if test="${ea==0}">

<ol class="lol2">
<li style="width:100%">등록된 상품이 없습니다.</li>
</ol>
</app:if>
<form id="pd_frm">
<app:forEach var="i" items="${md}">
<ol class="lol2 lol1">
<li><input type="checkbox" name="cks" value="${i.pidx}"></li>
<li>${i["pcode"]}</li>
<li class="pinfo"><img src=./${i["pimg"]}></li>
<li>${i["pname"]}</li>
<li>${i["pcg1"]}</li>
<li class="pprice">${i["pprice"]}</li>
<li class="pdcprice">${i["pdcprice"]}</li>
<li>${i["pdc"]}%</li>
<li>${i["pea"]}</li>
<li>${i["psell"]}</li>
<li><span onclick="pd_modify(alert('서비스 준비중 입니다.'))" class="pdbtn">수정</span></li>
</ol>



</app:forEach>
<input type="hidden" name="mid">
<input type="hidden" name="mname">
</form>
</section>

<form id="pdpage_frm">
<section class="member_page">
<ul>

<li onclick="pageno('first')"><<</li>
<li onclick="pageno('pre')"><</li>
<app:forEach var="cnt" begin="${startpage}" end="${endpage}">
<li onclick="pageno('${cnt}')">${cnt}</li>
</app:forEach>
<li onclick="pageno('next')">></li>
<li onclick="pageno('last')">>></li>
</ul>

</section>
<input type="hidden" name="page" value=''>
<input type="hidden" name="memberinfo" value='${info}'>
</form>


<input type="hidden" name="mcksdel" value="">
<section class="member_d">
<div class="productbtn">
<span onclick="product_d()">선택삭제</span>
<span onclick="location.href='./shop_product_write.jsp'">상품등록</span>
</div>
</section>

<%@ include file="/admin/admin_footer.jsp" %> <!-- 카피라이터 -->
</body>
<script src="./js/pdlist.js?v=6"></script>
<script>

var nowpage=${page};
var endpage =${endpage};
var startpage=${startpage};
var totalpage=${totalpage};

var cks = document.getElementsByName("cks");

document.querySelector("#allck").addEventListener("click",function(){
	if(document.getElementById("allck").checked ==true){
			for(var i=0;i<cks.length;i++){
				cks[i].checked=true;		
			}
	}else if(document.getElementById("allck").checked== false){
		for(var i=0;i<cks.length;i++){
				cks[i].checked=false;		
			}
	}
		
		
	})
		
var nowpage=${page};
var endpage =${endpage};
var startpage=${startpage};
var totalpage=${totalpage};		

</script>

</html>