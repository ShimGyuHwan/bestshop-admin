<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
var ck = ${result}

if(ck>0){
	
	alert("설정이 저장되었습니다.")
	location.href="shop_config.do";
}

</script>