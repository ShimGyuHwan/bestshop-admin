function nmdf(){
	
	if(confirm("공지사항을 수정하시겠습니까?")){
		noticemdf.method="POST";
		noticemdf.action="nmdfok.do";
		noticemdf.submit();	
		
	}
	
	
	
}