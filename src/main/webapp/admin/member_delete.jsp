<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<script>
if(${result}>0){
	alert("삭제되었습니다.");
	location.href="./member_list.do?page=1";
	
}else{
	alert("삭제 처리 중 오류가 발생하였습니다.");
	history.go(-1);
}
</script>