var pprice = document.getElementById("pprice").value;
var pdc = document.getElementById("pdc").value;
var pdcprice = document.getElementById("pdcprice").value;
var pea = document.getElementById("pea").value;
var num1=0;
var num2=0;

if(pea=="0"){
		
		pea = "soldout";
	}


function newprice(data){
	num2 =parseInt(data);
}
function dcp(data){
	
	num1 = parseInt(data);
	document.getElementById("pdcprice").value=  Math.round(num2*(100-num1)/100);
	
	
}

if(pdc =="0"){
	document.getElementById("pdcprice").value="0";
}


function fileck(data,num){
	var file =document.getElementsByClassName("files");
	var mb = 1024*1024;
	var maxsize = mb*2;
	if(data>maxsize){
		alert("파일 사이즈는 2MB까지 입니다.");
		file[num].value=null;
	}
	
	
}


function ckk(){
	var pd =document.getElementById("pdwrite");
	
	pd.method="post";
	pd.action="pdwriteok.do";
	pd.enctype="multipart/form-data";
	pd.submit();
	/*
	console.log(data);
	method="post" action="shop_product_write.do" enctype="multipart/form-data"
	pdwrite.sumbit();
	*/
}


var code="";
for(var i=0;i<6;i++){
	var randnum =Math.floor(Math.random() * 10);
	code+=randnum;
}
document.getElementById("pcode").value=code;



var codelist;
var htmlcode = new XMLHttpRequest();
htmlcode.onreadystatechange = function(){
	if(htmlcode.readyState === XMLHttpRequest.DONE){
		if(htmlcode.status ===200){
			codelist = JSON.parse(this.response);
			thrw(codelist);
		}
	}
	
}
htmlcode.open("GET","./codeapi.do",true);
htmlcode.send();


var codecheck =0;

function thrw(cl){
	cl.forEach(function(a){
		
		if(code== a.pcode){
			codecheck++;
		}
		
		
		})
}

function codeck(){
	if(codecheck>0){
			alert("중복된 상품코드입니다. 다시 확인해 주세요");
			for(var i=0;i<6;i++){
			var randnum =Math.floor(Math.random() * 10);
			code+=randnum;
			}document.getElementById("pcode").value=code;
		}else{
			alert("사용가능한 상품코드입니다.")
		}

	
}


