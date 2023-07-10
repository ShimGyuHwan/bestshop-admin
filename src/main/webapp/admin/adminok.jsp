<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
${result}

<script>
var num = ${num};
if(num<1){
	
	alert("회원가입이 정상적으로 이루어 지지 않았습니다.");
	location.href="./index.html";
}else{
	alert('회원등록이 완료되었습니다.');
	location.href="./index.html";
	
}



</script>