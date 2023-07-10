function ani(){
    document.querySelector(".top_ad").style.marginTop = -70+"px";
    document.querySelector("#ad").style.marginTop = -70+"px";
}

function login(){
	
	location.href="./login.jsp";
}

function join(){
	
	location.href="./agree.jsp";
}

document.querySelector("#bestshoplogo").addEventListener("click",function(){
	
	location.href="./";
})


function bestshopsearch(){
	if(top_frm.search.value==""){
		alert("검색할 단어를 입력해주세요.");
		return false;
	}
	
}

function logout(){
	location.href="./logout.do";
	
}