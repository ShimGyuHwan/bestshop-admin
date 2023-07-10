function setUp(type){
	document.getElementById("stype").value=type;
	var setup = document.getElementById("setup");
	if(confirm("해당 내용을 변경하시겠습니까?")){
		
		setup.method="POST";
		setup.action="shop_setupok.do";
		setup.submit();
	}
	
	
}