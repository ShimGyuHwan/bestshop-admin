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
    <link rel="stylesheet" type="text/css" href="./css/login.css"/> 
    <title>베스트샵 로그인</title>
    </head>
    
    <body>

<!--상단-->
    <header>
      <div id="top" class="top_css">
      <%@include file="./mainpage/header.jsp" %>
      </div>

    </header>
    <section class="login">
       <div class="container">
            <div class="contents">
                <span>
                    HOME > 로그인
                </span>
                <div class="sub_cotents">
                    <span>로그인</span>
                    <div class="member_info">
                        <h3>회원 로그인</h3>
                        <ul>
                            <li>
                                <div class="member_login_box">
	                            <form id="bestshoplogin" onsubmit="return bslogin()">
       								
    							
                                    <span>
                                        <input type="text" class="login_input" placeholder="아이디를 입력하세요!" name="mid" id="username">
                                    </span>
                                    <span>
                                        <input type="password" class="login_input" placeholder="패스워드를 입력하세요!" name="mpass">
                                    </span>
                                    <button type="submit" class="login_btn" title="회원 로그인" value="member">로그인</button>
                                	<input type="hidden" id="idsaveck" name="idsaveck">
    							</form>
                                </div>
                            </li>
                            <li>
                                <label class="id_save"><input type="checkbox" class="bsidck" id="bsidck"> 아이디 저장</label>
                            </li>
                        </ul>
                        
                        <h3 class="none"></h3>
                        <ol class="btn_login_box">
                            <li onclick="location.href='./agree.jsp'">
                            <input type="button" value="회원가입" class="btn_box1" title="회원가입">
                            </li>
                            <li onclick="alert('서비스 준비중')">
                            <input type="button" value="아이디 찾기" class="btn_box1 reserve1" title="아이디 찾기">
                            </li>
                            <li onclick="alert('서비스 준비중')">
                            <input type="button" value="비밀번호 찾기" class="btn_box1 reserve1" title="비밀번호 찾기">
                            </li>
                        </ol>
    					
                        
                        
                        <h3>비회원 로그인</h3>
                        <ul>
                            <li>
                                <div class="member_login_box">
                                    <form id="nomember" onsubmit="nomember()">
                                    <span>
                                        <input type="text" class="login_input" placeholder="주문자명">
                                    </span>
                                    <span>
                                        <input type="text" class="login_input" placeholder="주문번호">
                                    </span>
                                    <button type="submit" class="login_btn reserve1" title="비회원 로그인">확인</button>
                                	</form>
                                </div>
                            </li>
                            <li style="font-size: 12px; height: 40px; line-height: 40px;">
                                ※ 주문번호와 비밀번호를 잊으신 경우, 고객센터로 문의하여 주시기 바랍니다.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
    </div>
</section>
                        </form>
    <footer class="ft">
    <%@include file="./mainpage/copyright.jsp" %>
    </footer>
</body>
<script src="./js/login.js"></script>
</html>