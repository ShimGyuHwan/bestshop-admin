<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
var result ='${result}';
var save = '${save}';

if(save =="Y"){
	window.sessionStorage.setItem("mid",result);
}else{
	window.sessionStorage.removeItem("mid");
}



if( result == ""){
	alert("아이디 또는 비밀번호를 확인해 주세요")
	history.go(-1);
	
}
else{
	
	alert(result+"님 로그인 하셨습니다.");
	location.href="./";
}
</script>