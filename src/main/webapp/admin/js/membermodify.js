function cls(){
	window.close();
}

function mdf(){
	
	if(confirm("정보를 수정하시겠습니까?")){
		var url ="./member_list.do?page=1";
		var mpoint = mfy.mpoint.value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		
		mfy.mpoint.value = mpoint;
		mfy.action="./mcomp.do";
		mfy.method="POST";
		mfy.submit();
		
		
	
	
		
		
	}
	else{
		alert("취소 되었습니다.");
	}
	
}