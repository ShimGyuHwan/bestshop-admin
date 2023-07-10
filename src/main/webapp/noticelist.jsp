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
    <link rel="stylesheet" type="text/css" href="./css/agree.css"/>
    <link rel="stylesheet" type="text/css" href="./css/noticelist.css"/> 
<title>Insert title here</title>
</head>
<body>

    <header>
      <div id="top" class="top_css">
      <%@include file="mainpage/header.jsp" %>
      </div>

    </header>

<section class="agree">
	<div class="agree_top">
	<span class="psc">
     HOME > NOTICE
    </span>
    <div>
    <span>NOTICE</span>
</div>
</div>
<ul class="nul">
<li>NO</li>
<li>제목</li>
<li>글쓴이</li>
<li>날짜</li>
<li>조회수</li>
</ul>

<ol>

</ol>


<section class="nlist_page">
<ul>

<li onclick="npageno('first')"><<</li>
<li onclick="npageno('pre')"><</li>
<!-- <app:forEach var="cnt" begin="${startpage}" end="${endpage}">
<li onclick="npageno('${cnt}')">${cnt}</li>
</app:forEach>
-->
<li onclick="npageno('next')">></li>
<li onclick="npageno('last')">>></li>
</ul>

</section>

</section>
</body>
</html>