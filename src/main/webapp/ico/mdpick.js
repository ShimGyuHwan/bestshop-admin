var data2;
var html2 = new XMLHttpRequest();
html2.onreadystatechange = function(){
	if(html2.readyState === XMLHttpRequest.DONE){
		if(html2.status ===200){
			data2 = JSON.parse(this.response);
			mdpick(data2);
		}
	}
	
}
html2.open("GET","./API/mdpicklistapi.do",true);
html2.send();
function mdpick(mdpicklist){
	
		console.log(data2);
	
	
		var mdul = document.getElementById("mdlistul");
		console.log(mdpicklist)	
		var htmltext=`<li><img src="./ico/part1.jpg"></li>`;
		mdpicklist.forEach(function(a){
		if(a.pdc!=""){
		htmltext +=`<li>
			<ol>
			<li><img src='admin/`+a.pimg+`'></li>
			<li>`+a.pname+`</li>
			<li class='mdprice'>`+a.pdcprice+`</li>
			</ol>
			<span class="productdc">`+a.pdc+`%</span>
			</li>`
			}
		else{
			htmltext +=`<li>
			<ol>
			<li><img src='admin/`+a.pimg+`'></li>
			<li>`+a.pname+`</li>
			<li class='mdprice'>`+a.pprice+`</li>
			</ol>
			</li>`	
			
		}
		})
		mdul.innerHTML=htmltext;
		var price = document.getElementsByClassName("mdprice");
		for(var i=0;i<price.length;i++){
		price[i].innerText= price[i].innerText.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")+"원";
		}
	
}

const TIME_ZONE = 9 * 60 * 60 * 1000;

const date = new Date();

new Date(date.getTime() + TIME_ZONE).toISOString().replace('T', ' ').slice(0, -5);

