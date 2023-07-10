var data1;
var html1 = new XMLHttpRequest();
html1.onreadystatechange = function(){
	if(html1.readyState === XMLHttpRequest.DONE){
		if(html1.status ===200){
			data1 = JSON.parse(this.response);
			pdlist(data1);
		}
	}
	
}
html1.open("GET","./API/productlistapi.do",true);
html1.send();
function pdlist(pdlist){
		var pdul = document.getElementById("pdlistul");
		
		var htmltext="";
		pdlist.forEach(function(a,b){
		if(a.pdc!=""){
		htmltext +=`<li>
			<ol>
			<li><img src='admin/`+a.pimg+`'></li>
			<li>`+a.pname+`</li>
			<li>`+a.pinfo+`</li>
			<li class='pdprice'>`+a.pdcprice+`</li>
			</ol>
			<span class="productdc">`+a.pdc+`%</span>
			</li>`
			}
		else{
			htmltext +=`<li>
			<ol>
			<li><img src='admin/`+a.pimg+`'></li>
			<li>`+a.pname+`</li>
			<li>`+a.pinfo+`</li>
			<li class='pdprice'>`+a.pprice+`</li>
			</ol>
			</li>`	
			
		}
		})
		pdul.innerHTML=htmltext;
		var price = document.getElementsByClassName("pdprice");
		for(var i=0;i<price.length;i++){
		price[i].innerText= price[i].innerText.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")+"원";
		}
	
}