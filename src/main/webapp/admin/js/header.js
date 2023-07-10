/**
 * 
 */

 function logout(){
	 
	 if(confirm('로그아웃 하시겠습니까?')){
		 
		 h.method="post";
		 h.action="./admin_logout.do";
		 h.submit();
	 }
 }
