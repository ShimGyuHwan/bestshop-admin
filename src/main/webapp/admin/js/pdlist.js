function pd_modify(){
	
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
}

function product_d(){
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
		if(confirm("상품을 삭제하시겠습니까?")){
		
		pd_frm.action="product_d.do";
		pd_frm.method="POST";
		pd_frm.submit();
			
		}
	}
	
	
	
}


function pageno(data){
	var page = document.getElementsByName("page");
	console.log(startpage);
	console.log(endpage);
	if(data=="next"){
		
		if(nowpage==totalpage){
			alert("끝 페이지 입니다.")
			pdpage_frm.page.value=nowpage;
		}else{
		pdpage_frm.page.value= endpage+1;
		}
	}
	else if(data=="pre"){
		
	if(startpage==1){
		pdpage_frm.page.value=1;
	}
	
	else {
		pdpage_frm.page.value= startpage-5;	
	}}
	else if(data=="first"){
		pdpage_frm.page.value=1;
	}
	else if(data=="last"){
		pdpage_frm.page.value =totalpage;
	}	
	else{
	pdpage_frm.page.value=data;	
	}

	pdpage_frm.method="GET";
	pdpage_frm.action="shop_product_list.do";
	pdpage_frm.submit();
	
	
}


function psearch(){
	
	searchf.method="GET";
	searchf.action="product_search.do";
	searchf.submit();
}





var price = document.getElementsByClassName("pprice");
		for(var i=0;i<price.length;i++){
		price[i].innerText= price[i].innerText.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		}
var price2 = document.getElementsByClassName("pdcprice");
		for(var i=0;i<price2.length;i++){
		price2[i].innerText= price2[i].innerText.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		}
		
		