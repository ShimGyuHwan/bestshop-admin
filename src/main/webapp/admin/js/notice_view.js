function notice_d(){
	if(confirm("공지를 삭제하시겠습니까?")){
	notice_view.method="POST";
	notice_view.action="notice_delete.do";
	notice_view.submit();
	}
}


function notice_mdf(){
	notice_view.method="post";
	notice_view.action="notice_modify.do";
	notice_view.submit();
	
	
	
}
	
