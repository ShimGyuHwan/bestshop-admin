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
<link rel="stylesheet" type="text/css" href="./css/welcome.css"/> 
<title>회원가입 완료</title>
</head>
<body>
<!--상단-->
    <header>
      <div id="top" class="top_css">
      <%@include file="./mainpage/header.jsp" %>
      </div>

    </header>


<section class="welcome">
	<div class="welcome_top">
    
	<span class="psc">
     HOME > 회원가입 > 회원가입완료
    </span>
    <div>
    <span>회원가입</span>
    <ul>
    <li>01 약관동의</li><li><img src="./ico/step.png"></li><li>02 정보입력</li><li><img src="./ico/step.png"></li><li>03 가입완료</li>
    </ul>
    </div>
    <ul>
    <li id="welcomeok1">회원가입완료</li>
    <li id="welcomeok1">${member["mname"]}님 회원가입이 완료되었습니다. 회원가입을 축하드립니다!!</li>
    <li><span onclick="gohome()">홈으로</span></li>
    </ul>
    
    </div>
    
</section>
</body>
<script>
function gohome(){
	
	location.href="./";
}

</script>
</html>