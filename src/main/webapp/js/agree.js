var text1 =document.getElementById("agree_text1");
var text2 =document.getElementById("agree_text2");
var ckall = document.getElementById("agree_ck1");
var ck = document.getElementsByName("agck");

document.querySelector("#agree_ck1").addEventListener("click",function(){
	if(ckall.checked ==true){
			for(var i=0;i<ck.length;i++){
				ck[i].checked=true;		
			}
	}else if(ckall.checked== false){
		for(var i=0;i<ck.length;i++){
				ck[i].checked=false;		
			}
	}
		
		
	})


var agreeText = function(url){
   var xhr = new XMLHttpRequest();
   xhr.open("GET",url,false);
   xhr.send();
   return xhr.response;   
}
text1.innerText = agreeText("./agree/agree1.txt");
text2.innerText = agreeText("./agree/agree2.txt");


function next(){
	
	if(ck[0].checked==false ||ck[1].checked==false ){
		
		alert("약관동의 필수 항목은 모두 동의 해 주셔야 합니다.");
	}else{
		location.href="./join.jsp";
	}
}