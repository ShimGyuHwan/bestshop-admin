function bslogin(){
var ck1=document.getElementById("idsaveck");
var ck2 = document.getElementById("bsidck");	
	if(ck2.checked==true){
		ck1.value="Y";
	}else{
		ck1.value="N";
	}
	
	bestshoplogin.method="POST";
	bestshoplogin.action="loginok.do";
	bestshoplogin.submit();

}
 var username = window.sessionStorage.getItem("mid");
 console.log(username);
if(username!=null){
	document.getElementById("username").value=username;
	
}

function nomember(){
	alert("주문번호를 확인해 주세요");
	return false;
	
}