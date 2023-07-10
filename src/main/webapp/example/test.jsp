<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>모바일 전용 사용시 오브젝트 변화(calc)</title>
<style>
body{margin:0;padding:0;}

.mid{
	width:calc(100% - 40px);
	height:30px;
	box-sizing: border-box;
}

.btn{
width:calc(100% - 40px);
height:30px;
box-sizing: border-box;
}

@media screen and (max-width:580px) and (min-width:341px){

	.mid{
	max-width:540px;

	}
	.btn{
	max-width:540px;

	}
	

}

</style>

</head>
<body>
<input type="text" class="mid" placeholder="아이디를 입력하세요"><br>
<input type="submit" value="로그인" class="btn">
</body>
<script>
/*
 ES 
 window.addEventListener("resize",function(){
	 
 });
 
 JS
*/
window.onresize=function(){
	 var w = window.innerWidth();
	 if(w > 580 || w <340){
		 alert("모바일 전용 사이트 입니다.");
		 location.href="about:blank";
	 }
 }

</script>
</html>