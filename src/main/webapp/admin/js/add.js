var a = document.getElementById("add");
var tt = document.getElementsByClassName("tt");
let regex = new RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
var p = document.getElementsByClassName("p");

function join(){
	if(a.aid.value==""){
		alert("아이디를 입력해 주세요")
		aid.focus();
	}
	else if(p[0].value==""|| p[1].value==""){
		alert("비밀번호를 입력해 주세요")
		a.apw.focus();
		
	}
	else if(p[0].value!=p[1].value){
		alert("비밀번호를 다시 확인해 주세요")
		p[0].value="";
		p[1].value="";
		p[0].focus();
	}
	else if(a.aname.value==""){
		alert("이름을 입력해 주세요")
		a.aname.focus();
		
	}
	else if(a.aname.value==""){
		alert("이름을 입력해 주세요")
		a.aname.focus();
		
	}
	else if(a.aemail.value==""){
		alert("메일을 입력해 주세요")
		a.aemail.focus();
		
	}
	else if(tt[0].value==""||tt[1].value==""||tt[2].value==""){
		alert("휴대폰 번호를 입력해 주세요")
		tt[0].focus();
		
	}
	else if(a.adpt.value==" "){
			alert("부서를 입력해 주세요");
			
		
	}
		else if(a.apst.value==" "){
			alert("직책을 입력해 주세요");
		
	}
	else if(regex.test(a.aemail.value)==false){
		alert("정확한 이메일을 입력해 주세요");
	}else{
		
		a.atel.value = tt[0].value+tt[1].value+tt[2].value;
		
		
		a.method="post";
		a.action="adminok.do";
		a.submit();
		
	}
}