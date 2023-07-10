<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
    <title></title>
  </head>
  <body>
    <!--상단-->
    <header>
      <div id="top" class="top_css">
      <%@include file="./mainpage/header.jsp" %>
      </div>

    </header>
    <!--메뉴-->
    <nav><div id="menu" class="menu_css">
    <%@include file="./mainpage/menu.jsp" %>
    </div></nav>
    <main class="main_css">
      <!--배너-->
      <section ><%@include file="./mainpage/banner.jsp" %></section>
      <!--신규상품-->
      <section><%@include file="./mainpage/newarrival.jsp" %></section>
  	<!--  AD1 -->
      <section><div id="ad1" class="ad1_css"><div class="adct"><a class="adurl"><img class="adimg" src="./ico/ad0.png"></a></div></div></section>
  
      <!--MD's pick-->
      <article><%@include file="./mainpage/mdpick.jsp" %></article>
      <!--공지사항 및 최신 트랜드-->
      <section class="nt_css">
        <div class="nt2_css">
       	<%@include file="./mainpage/notice.jsp" %>
		<%@include file="./mainpage/trend.jsp" %>	        
      </div>
      
      </section>
      <!--AD2 -->
      <section><div id="ad2" class="ad2_css"><div class="adct"><a class="adurl"><img class="adimg"></a></div></div></section>

    </main>
    <!--카피라이터 + 약관 -->
    <footer class="ft">
    <%@include file="./mainpage/copyright.jsp" %>
    </footer>
  </body>
  <script>
		function title(data){
			document.title=data[0].ctitle;
		}
  </script>
  <script src="./mainpage/js/banner.js"></script>
</html>