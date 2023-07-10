var point = document.getElementsByName("cpointok");
var credit = document.getElementsByName("ccredit");
var telpay = document.getElementsByName("ctelpay");
var gift = document.getElementsByName("cgift");
var bill = document.getElementsByName("cbill");
var dd = document.getElementsByName("cdelivery_day");


if(pointck=="Y"){
	point[0].checked=true;
	
}else{
	point[1].checked=true;
}

if(creditck=="Y"){
	credit[0].checked=true;
	
}else{
	credit[1].checked=true;
}

if(telpayck=="Y"){
	telpay[0].checked=true;
	
}else{
	telpay[1].checked=true;
}

if(billck=="Y"){
	bill[0].checked=true;
	
}else{
	bill[1].checked=true;
}

if(giftck=="Y"){
	gift[0].checked=true;
	
}else{
	gift[1].checked=true;
}

if(delck=="Y"){
	dd[0].checked=true;
	
}else{
	dd[1].checked=true;
}


function config(num){
	
	if(num==2){
		if(confirm("설정을 취소하시겠습니까?")){
			location.href="shop_config.do";
		}
		
	}else{
		if(confirm("설정을 저장하시겠습니까?")){
			configsave.method="POST";
			configsave.action="shop_configok.do";
			configsave.submit();
			
		}
		
	}
	
}