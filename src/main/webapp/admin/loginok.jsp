<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<form id="f" method="post" action="./admin_main.do">
<input type="hidden" value='${id}' name="aid">
<input type="hidden" value='${name}' name="aname">
</form>
</body>
<script>
var msg = '${msg}';
var accept ='${accept}';
console.log(msg);
if(msg=="no"){
	alert('아이디 또는 패스워드를 확인하세요.');
	history.go(-1);
}else if(accept =="N"){
	alert('관리자 승인이 되지 않았습니다.');
	history.go(-1);
	
}else{
	f.aid.value='${id}';
	f.aname.value='${admin}';
	f.submit();
}
</script>
</html>