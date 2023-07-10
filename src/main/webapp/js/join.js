
window.onload = function(){
    document.getElementById("addrbtn").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
            	document.getElementById('addr11').value = data.zonecode;
                document.getElementById("addr22").value = data.address; // 주소 넣기
                document.querySelector("#addr33").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
function passck(data){
	if(data ==document.getElementById("mpass1").value){
		
	}
	else{
		alert("비밀번호가 일치하지 않습니다.");
		document.getElementById("mpass2").value="";
		document.getElementById("mpass2").focus();
	}
	
}

function joincomplete(){
	var m1=document.getElementById("mail1").value;
	var m2=document.getElementById("mail2").value;
	var ok1 =document.getElementById("sok");
	var ok2 =document.getElementById("mok");
	
	if(m2==""){
	join_frm.memail.value=m1;
		
	}else{
		join_frm.memail.value=m1+m2;
	}
	join_frm.maddr.value=document.getElementById("addr11").value+" "+document.getElementById("addr22").value+" "+document.getElementById("addr33").value;
	
	if(join_frm.mid.value==""){
		alert("아이디를 입력하세요");
		join_frm.mid.focus();
	}
	else if(join_frm.mpass.value==""){
		alert("비밀번호를 입력하세요");
		join_frm.mpass.focus();
	}
	else if(document.getElementById("mpass2").value==""){
		alert("비밀번호확인을 하셔야 합니다.");
			document.getElementById("mpass2").focus();
	}
	else if(join_frm.mname.value==""){
		alert("이름을 입력하세요");
		join_frm.mname.focus();
	}
	else if(document.getElementById("mail1").value==""){
		alert("이메일을 입력하세요");
		document.getElementById("mail1").focus();
		
	}
	else if(join_frm.mtel.value==""){
		alert("휴대폰번호를 입력하세요");
		join_frm.mtel.focus();
	}
	else if(join_frm.mphone.value==""){
		alert("전화번호를 입력하세요");
		join_frm.mphone.focus();
	}
	else if(join_frm.maddr.value==""){
		alert("주소를 입력하세요");
	}
	else{
		
				
		if(ok2.checked==true){
			ok2.value="Y"
		}else{
			ok2.value="N"
		}
		if(ok1.checked==true){
			ok1.value="Y"
		}else{
			ok2.value="N"
		}
			
		
		console.log(join_frm.memailok.value)
		console.log(join_frm.msmsok.value)
		
		join_frm.method="POST";
		join_frm.action="welcome.do";
		//join_frm.submit();
		
	}
}

function joincancel(){
	
	if(confirm("회원가입을 취소하시겠습니까?")){
		
			location.href="./";
	}
	
}