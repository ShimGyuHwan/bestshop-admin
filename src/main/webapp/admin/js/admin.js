var a = document.getElementById("admin");
function login(){
	if(a.aid.value==""){
		alert("아이디를 입력해 주세요");
		a.aid.focus();
	}
	else if (a.apw.value==""){
	alert("비밀번호를 입력해 주세요");
		a.apw.focus();		
	}
	else if(a.aid.value=="admin"||a.aid.value=="master"){
		alert("로그인 할 수 없는 계정입니다.")
		a.aid.value="";
		a.aid.focus();
		
	}
	else{
		
		a.method="post";
		a.action="./loginok.do";
		a.submit();
	}
}

function page(n){
	if(n==1){
		location.href ="./add_master.html";
	}else{
		location.href =" ./add_master_search.html";
	}
	
}