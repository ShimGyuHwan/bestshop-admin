
var cks = document.getElementsByName("cks");

document.querySelector("#allck").addEventListener("click",function(){
	if(document.getElementById("allck").checked ==true){
			for(var i=0;i<cks.length;i++){
				cks[i].checked=true;		
			}
	}else if(document.getElementById("allck").checked== false){
		for(var i=0;i<cks.length;i++){
				cks[i].checked=false;		
			}
	}
		
		
	})

function noticeinfo(data,data2){
	notice_frm.ncount.value=data2+1;
	notice_frm.ninfo.value=data;

	notice_frm.method="POST";
	notice_frm.action="notice_view.do";
	notice_frm.submit();
}

document.querySelector("#nreg").addEventListener("click",function(){
	
	location.href="notice_write.do";
	
})



function npageno(data){
	var page = document.getElementsByName("page");

	if(data=="next"){
		if(nowpage==totalpage){
			alert("끝 페이지 입니다.")
			npage.page.value=nowpage;
		}else{
		npage.page.value= endpage+1;
		}
	}
	else if(data=="pre"){
		
	if(startpage==1){
		npage.page.value=1;
	}
	
	else {
		npage.page.value= startpage-5;	
	}}
	else if(data=="first"){
		npage.page.value=1;
	}
	else if(data=="last"){
		npage.page.value =totalpage;
	}	
	else{
	npage.page.value=data;	
	}
	console.log(npage.page.value);
	npage.method="GET";
	npage.action="notice_list.do";
	npage.submit();
	
	
}


function ndel(){
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
		
		if(confirm("공지를 삭제하시겠습니까?")){
		notice_frm.action="notice_delete.do";
		notice_frm.method="POST";
		notice_frm.submit();
	}
	
	}
	
	
}