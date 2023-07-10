<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="title" content="합리적인 쇼핑 베스트샵 [BEST SHOP]"/>
    <meta
      name="description"
      content="합리적인 쇼핑 베스트샵 [BEST SHOP]"
    />
    <meta name="pulisher" content="sgh"/>
    <meta name="robots" content="index,follow"/>
    <meta name="twitter:card" content="채소,과일,수산물,베이커리,우유,간식"/>
    <meta name="keywords" content="채소,과일,수산물,베이커리,우유,간식"/>
    <meta name="twitter:description" content="합리적인 쇼핑 베스트샵 [BEST SHOP]"/>  
    <meta name="twitter:title" content="합리적인 쇼핑 베스트샵 [BEST SHOP]"/>  
    <meta property="og:locale" content="ko_KR"/>
    <meta property="og:site_name" content="합리적인 쇼핑 베스트샵 [BEST SHOP]"/>
    <meta property="og:type" content="website"/>
    <meta property="og:author" content="sgh"/>
    <meta property="og:url" content="http://calcifer36.cafe24.com/portfolio"/>
    <meta property="og:img" content="./bs_logo.png"/>
    <meta property="al:ios:url" content="http://calcifer36.cafe24.com/portfolio"/>
    <meta property="al:android:url" content="http://calcifer36.cafe24.com/portfolio"/>
    <meta property="al:web:url" content="http://calcifer36.cafe24.com/portfolio"/>

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="icon" href="./ico/bs_logo.png" size="100x100"/>
    <link rel="icon" href="./ico/bs_logo.png" size="64x64"/>
    <link rel="icon" href="./ico/bs_logo.png" size="32x32"/>
    <link rel="icon" href="./ico/bs_logo.png" size="16x16"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
<link rel="stylesheet" type="text/css" href="./css/main.css"/>
<link rel="stylesheet" type="text/css" href="./css/join.css"/> 
<title>회원가입</title>
</head>
<body>
<!--상단-->
    <header>
      <div id="top" class="top_css">
      <%@include file="./mainpage/header.jsp" %>
      </div>

    </header>

    <form id="join_frm">
<section class="join">
	<div class="join_top">
	<span class="psc">
     HOME > 회원가입 > 정보입력
    </span>
    <div>
    <span>회원가입</span>
    <ul>
    <li>01 약관동의</li><li><img src="./ico/step.png"></li><li>02 정보입력</li><li><img src="./ico/step.png"></li><li>03 가입완료</li>
    </ul>
    </div>
    <ul>
    <li><h3>기본정보</h3><label>※모든정보는 필수항목이므로 반드시 입력하셔야 합니다.</label></li>
    <li><span>ㅤ아이디</span><span><input type="text" style="width:350px" name="mid"></span></li>
    <li><span>ㅤ비밀번호</span><span><input type="password"style="width:200px" id="mpass1" name="mpass" maxlength="15"></span></li>
    <li><span>ㅤ비밀번호 확인</span><span><input type="password" style="width:200px" id="mpass2" onchange="passck(this.value)"></span></li>
    <li><span>ㅤ이름</span><span><input type="text" style="width:350px" name="mname"></span></li>
    <li>
    <span>ㅤ이메일</span>
    <span><input type="text" id="mail1" >
    <select id="mail2" style="width:100px; height:35px; box-sizing:border-box;" >
    <option value="" >직접입력</option>
    <option value="@hanmail.net">hanmail.net</option>
    <option value="@naver.com">naver.com</option>
    <option value="@gmail.com">gmail.com</option>
    <option value="@Hotmail.com">Hotmail.com</option>
    <option value="@daum.net">daum.net</option>
    <option value="@nate.com">nate.com</option>
    </select><br>
    <label><input type="checkbox"  id="mok" value="N" name="memailok">ㅤ정보/이벤트 메일 수신에 동의합니다.</label>
    </span></li>
    <li><span>ㅤ휴대폰번호</span><span><input type="text" name="mtel" placeholder="ㅤ- 없이 입력하세요" onkeyup="this.value =this.value.replace(/[^0-9]/g,'')" maxlength="11"><br><label><input type="checkbox" value="N" name="msmsok" id="sok">ㅤ정보/이벤트 SMS 수신에 동의합니다.</label></span></li>
    <li><span>ㅤ전화번호</span><span><input type="text" name="mphone" style="width:350px" placeholder="ㅤ- 없이 입력하세요" onkeyup="this.value =this.value.replace(/[^0-9]/g,'')" maxlength="11"></span></li>
    <li><span>ㅤ주소</span>
	<ol class="addrol">
    <li><input type="text"  id="addr11" placeholder="ㅤ우편번호" readonly style="width:100px;"><input type="button" id="addrbtn" value="주소검색"></li>
    <li><input type="text"  id="addr22" placeholder="ㅤ도로명주소" readonly style="width:450px;"></li>
    <li><input type="text"  id="addr33" placeholder="ㅤ상세주소" style="width:450px;"></li>
    </ol>
    </li>
    </ul>
    <input type="hidden" value="" name="memail">
    <input type="hidden" value="" name="maddr">
	<section class="joinok">
	<span onclick="joincancel()">취소</span>
	<span onclick="joincomplete()">회원가입</span>
	</section>
	</div>
	
	
	

</section>
	<input type="hidden" name="mdormant" value="N">
	<input type="hidden" name="maccept" value="Y">
	<input type="hidden" name="mlevel" value="1">
	<input type="hidden" name="mpoint" value="1000">
    </form>
    
    <footer class="ft">
    <%@include file="./mainpage/copyright.jsp" %>
    </footer>    

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="./js/join.js"></script>
</html>