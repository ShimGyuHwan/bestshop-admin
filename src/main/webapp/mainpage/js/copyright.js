document.querySelector("#bizno").style.cursor="pointer";
document.querySelector("#bizno").addEventListener("click",function(){
	
	var url = "https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1188120586";
	window.open(url,"bizCommPop","width=450,height=450");
	
})




var copyapi;
var htmlcp = new XMLHttpRequest();
htmlcp.onreadystatechange = function(){
	if(htmlcp.readyState === XMLHttpRequest.DONE){
		if(htmlcp.status ===200){
			copyapi = JSON.parse(this.response);
			copy(copyapi);
		
		}
	}
	
}
htmlcp.open("GET","./API/configapi.do",true);
htmlcp.send();


function copy(data){
	console.log(data[0].cgen);
	document.getElementById("cgen").innerText=data[0].cgen;
	document.getElementById("cp1").innerText=`ㅤㅤㅤ상호명 :  `+data[0].ctitle+` ㅤㅤㅤㅤ대표 : `+data[0].cceo+`ㅤㅤ  사업자등록번호 :  `+data[0].cbiznum+` `
	document.getElementById("cp2").innerText=`ㅤㅤㅤ통신판매업신고번호 :  `+data[0].ccomnum+` ㅤㅤㅤ   ㅤ사업장 주소 : `+data[0].caddr+` `
	document.getElementById("cp3").innerText=`ㅤㅤㅤ개인정보책임자  :  `+data[0].ccomadmin+`ㅤㅤㅤㅤㅤㅤㅤㅤㅤ개인정보 책임자 E-mail : `+data[0].ccomadminmail+``
	document.getElementById("cp5").innerText=`무통장 은행 :  `+data[0].cnobank+``
	document.getElementById("cp6").innerText=`은행계좌번호 :  `+data[0].cbank+``
	document.title=data[0].ctitle;
}

