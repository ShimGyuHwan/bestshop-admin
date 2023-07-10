<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% HttpSession session3 = request.getSession();
String user = (String)session3.getAttribute("user"); 

%>
<link rel="stylesheet" type="text/css" href="mainpage/css/header.css"/>

<form id="top_frm" onsubmit="return bestshopsearch()"> 

        <section class="top_ad">
        <div style="background-image: url('./ico/top_ad.png')">
        <span id="ani" onclick="ani()">x</span>    
        </div>   
        </section>
        <ul class="top_ulcss">         
        <li id="ad">
        <span id="ani" onclick="ani()">x</span>
        </li>
        <li>
        <span>합리적인 쇼핑 베스트샵! 네이버에서 베스트샵을 검색하세요!</span>
        <%if(user==null){%>
        <ul class="top_middle"><li onclick="login()">로그인</li><li onclick="join()">회원가입</li><li>장바구니  <font class="basket_font"></font></li><li>마이페이지▼</li><li>고객센터▼</li></ul>   
        <% }else{%><ul class="top_middle"><li style="cursor:normal"><%=user%></li><li onclick="logout()">로그아웃</li><li>장바구니  <font class="basket_font">jsp</font></li><li>마이페이지▼</li><li>고객센터▼</li></ul> <% }%>
        </li>
        <li>
        <div>
            <span style="background-image: url('mainpage/ico/logo.gif')" id="bestshoplogo"></span>
        </div>
        <div>
        <input type="text"  placeholder="검색단어를 입력하세요" name="search"></input>
        <button type="submit" style="background-image: url('mainpage/ico/top_btn_search.gif')"></button>
            
        </div>
        <div><span  style="background-image: url('mainpage/ico/coupon.jpg')"></span></div>
        </li>
        </ul>
        </form>

<script src="mainpage/js/header.js?v=1"></script>
