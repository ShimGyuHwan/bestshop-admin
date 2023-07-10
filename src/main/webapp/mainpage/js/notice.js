var data;
var html = new XMLHttpRequest();
html.onreadystatechange = function(){
	if(html.readyState === XMLHttpRequest.DONE){
		if(html.status ===200){
			data = JSON.parse(this.response);
			notice(data);
		}
	}
	
}
html.open("GET","./API/noticeapi.do",true);
html.send();
var nsub =document.getElementsByClassName("nsub");
var ndate =document.getElementsByClassName("ndate");
function notice(data){
	

	var cnt=0;	
	data.forEach(function(a){
      nsub[cnt].innerText="•    " +a.nsub;
      ndate[cnt].innerText=a.ndate;
      cnt++;
		
	});
	
}
