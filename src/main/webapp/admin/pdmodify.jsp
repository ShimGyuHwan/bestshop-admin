<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/pdwrite.css?v=5">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="../ckeditor4/ckeditor.js?v=1"></script>

<title>상품리스트</title>
</head>
<body>
<%@ include file="/admin/admin_header.jsp" %> <!-- 탑 -->
<%@ include file="/admin/admin_menu.jsp" %> <!-- 메뉴 -->
<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀상품 수정 페이지 </li>
</ul>
</section>
<form id="pdmdf">
<section class="plist">
<ul>
<li><div>⠀대메뉴 카테고리</div>
<select style="width:130px; height:30px; margin-top:5px; font-size:12px;" name="pcg1">
<option value="기획상품">기획상품</option>
<option value="이벤트 상품">이벤트 상품</option>
<option value="무료배송상품">무료배송상품</option>
<option value="베스트 상품">베스트 상품</option>
<option value="이주의 핫딜">이주의 핫딜</option>
</select></li>
<li><div>⠀소메뉴 카테고리</div>
<select style="width:130px; height:30px; margin-top:5px; font-size:12px;" name="pcg2">
<option value="채소/과일/농수산물">채소/과일/농수산물</option>
<option value="간식/간편음식">간식/간편음식</option>
<option value="베이커리/우유">베이커리/우유</option>
<option value="냉장고/김치냉장고">냉장고/김치냉장고</option>
<option value="주방용품/생활가전">주방용품/생활가전</option>
<option value="컴퓨터/스마트폰">컴퓨터/스마트폰</option>
<option value="공기청정기">공기청정기</option>
</select>
</li>
<li><div>⠀상품코드</div><input type="text" style="width:130px;" name="pcode"  id="pcode" readonly></li>
<li><div>⠀상품명</div><input type="text" style="width:250px;" name="pname"><font size="2" style="line-height: 40px; color:#333;">⠀※ 상품명은 최대 100자까지만 적용할 수 있습니다.</font></li>
<li><div>⠀상품 부가설명</div><input type="text" style="width:500px;" name="pinfo"><font size="2" style="line-height: 40px; color:#333;">⠀※ 상품명은 최대 200자까지만 적용할 수 있습니다.</font></li>
<li><div>⠀판매가격</div><input type="text" style="width:100px;" id="pprice" name="pprice" onkeyup="newprice(this.value)"><font size="2" style="line-height: 40px; color:#333;">⠀※ ,없이 숫자만 입력하세요 최대 7자리</font></li>
<li><div>⠀할인율</div><input type="text" style="width:100px;" id="pdc" name="pdc" onkeyup="dcp(this.value)" value="0"><font size="2" style="line-height: 40px; color:#333;">⠀%⠀ ※ 숫자만 입력하세요.</font></li>
<li><div>⠀할인가격</div><input type="text" style="width:100px;" id="pdcprice" name="pdcprice" value="0" ><font size="2" style="line-height: 40px; color:#333;">⠀※ 할인율이 0%일 경우 할인가격은 0으로 처리 합니다.</font></li>
<li><div>⠀상품재고</div><input type="text" style="width:100px;" id="pea" name="pea" onkeyup="pea(this.value)"><font size="2" style="line-height: 40px; color:#333;">⠀EA⠀ ※ 숫자만 입력하세요. 재고가 0일 경우 soldout이 됩니다.</font></li>
<li><div>⠀판매 유/무</div><span></span><input type="radio" name="psell" value="Y">판매시작 <input type="radio" style="margin-left:30px;" name="psell" value="N">판매종료</li>
<li><div>⠀조기품절</div><input type="radio" name="psoldout" value="Y">사용 <input type="radio" style="margin-left:30px;" name="psoldout" value="N">미사용</li>
<li><div>⠀상품 대표 이미지</div>
<ol class="shopfile">
<li><input type="file" name="pimgall" onchange="fileck(this.files[0].size,0)" class="files"></li>
<li>※ 상품 대표이미지 이며, 이미지 용량은 2MB 까지 입니다.</li>
<li><input type="file" name="pimgall" onchange="fileck(this.files[0].size,1)" class="files"></li>
<li>※ 추가 이미지 이며, 이미지 용량은 2MB 까지 입니다.</li>
<li><input type="file" name="pimgall" onchange="fileck(this.files[0].size,2)" class="files"></li>
<li>※ 추가 이미지 이며, 이미지 용량은 2MB 까지 입니다.</li>
</ol>
<li><div>⠀상품 상세설명</div><textarea id="pdinfo" name="pinfo2"></textarea></li>
</ul>
</section>
</form>
<section class="plistbtn">
<div>상품리스트</div>
<div onclick="ckk()">상품등록</div>
</section>
<%@ include file="/admin/admin_footer.jsp" %> <!-- 카피라이터 -->
</body>
<script>
CKEDITOR.replace( 'pdinfo',
		  {
		    width : '830px',  
		    height : '320px', 
		    startupFocus : false,
		    filebrowserUploadUrl:"./imageupload.do"
		  }
		  );

document.getElementById("pcode").value=${pcode};

</script>
<script src="./js/pdwrite.js?v=6"></script>
</html>