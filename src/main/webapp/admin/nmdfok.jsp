<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
if(${result}>0){
	
	alert("공지사항이 수정되었습니다!");
	location.href='./notice_list.do?page=1';
}else{
	alert("데이터처리 과정에서 오류가 발생하였습니다. 다시 시도해 주세요");
	location.href='./notice_list.do?page=1';
	
	
}

</script>