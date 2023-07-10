

function member_modify(a,b){
	member_frm.mid.value = a;
	member_frm.mname.value=b;
	window.open("","openForm","width=550,height=470,scrollbars=no,resizeable=no,left:100,top:50");
	member_frm.method="post";
	member_frm.action="./member_modify.do";
	member_frm.target="openForm";
	member_frm.submit();
	
	
}


function msearch(){
	
	searchf.method="GET";
	searchf.action="member_search.do";
	searchf.submit();
}

function pageno(data){
	var page = document.getElementsByName("page");

	if(data=="next"){
		if(nowpage==totalpage){
			alert("끝 페이지 입니다.")
			page_frm.page.value=nowpage;
		}else if(endpage==totalpage){
			alert("끝 페이지 입니다.")
			page_frm.page.value=nowpage;
		}
		else{
		page_frm.page.value= endpage+1;
		}
	}
	else if(data=="pre"){
		
	if(startpage==1){
		page_frm.page.value=1;
	}
	
	else {
		page_frm.page.value= startpage-5;	
	}}
	else if(data=="first"){
		page_frm.page.value=1;
	}
	else if(data=="last"){
		page_frm.page.value =totalpage;
	}	
	else{
	page_frm.page.value=data;	
	}
	
	page_frm.method="GET";
	page_frm.action="member_list.do";
	page_frm.submit();
	
	
}

//checkbox



function member_d(){
	
	var cks = document.getElementsByName("cks");
	var cnt=0;
	for(var i=0;i<cks.length;i++){
		if(cks[i].checked==false){
			cnt++
		}
	}

	if(cnt==cks.length){
		alert("삭제할 사항을 체크해 주세요.")
	}else{
		if(confirm("체크박스에 체크된 사용자는 모두 삭제가 되며, 선택삭제시 “해당 사용자 삭제시 데이터는 복구 되지않습니다. 진행 하시겠습니까?” ")){
		member_frm.method="post";
		member_frm.action="member_delete.do";
		member_frm.submit();
		
	}
	
	}
		
}

