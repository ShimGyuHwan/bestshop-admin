function back(){
	
	history.go(-1);
}

function reg(){
	notice_reg.method="POST";
	notice_reg.action="notice_reg.do";
	notice_reg.submit();
	
}
