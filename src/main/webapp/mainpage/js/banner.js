var binfo;
var htmlb = new XMLHttpRequest();
htmlb.onreadystatechange = function(){
	if(htmlb.readyState === XMLHttpRequest.DONE){
		if(htmlb.status ===200){
			binfo = JSON.parse(this.response);
			binfo1(binfo);
		}
	}
	
}
htmlb.open("GET","./API/bannerapi.do",true);
htmlb.send();
var bimg =document.getElementsByClassName("bannerimg");
var burl =document.getElementsByClassName("bannerurl");
var img1,img2,img3,url1,url2,url3,adimg1,adimg2,adurl1,adurl2;
var adimg = document.getElementsByClassName("adimg");
var adurl = document.getElementsByClassName("adurl");

function binfo1(data){
	adimg1=data[0].sad1;
	adimg2=data[0].sad2;
	adurl1=data[0].sadl1;
	adurl2=data[0].sadl2;
	
	img1=data[0].sb1;
	url1=data[0].sbl1;
	img2=data[0].sb2;	
	url2=data[0].sbl2;
	img3=data[0].sb3;	
	url3=data[0].sbl3;
	
	bimg[0].src=img1
bimg[1].src=img2
bimg[2].src=img3	
burl[0].href =url1;
burl[1].href =url2;
burl[2].href =url3;
adimg[0].src=adimg1;
adimg[1].src=adimg2;
adurl[0].href =adurl1;
adurl[1].href =adurl2;


			
	
}



var bi =document.getElementsByClassName("banner_item");
var bp =document.getElementsByClassName("bpaging");
var slide =document.getElementById("slide");
var pnode =0; //현재 페이지노드
var node=0;


function timer1(){
		pnode++		
		if(pnode==3){
			pnode=0;
		}
		var cn =bi[0].cloneNode(true);
		console.log(cn);
		slide.style.transition="all ease 2s";
		slide.style.transform="translateX(-1100px)";
		
		for(var i=0; i<bp.length;i++){
		bp[i].style.backgroundColor="black";
		}
		bp[pnode].style.backgroundColor="red";
		slide.appendChild(cn);
		setTimeout(timer2,2000);		
	}
function timer2(){
	
		slide.style.transition="";
		slide.style.transform="";
		slide.removeChild(bi[0]);
		slide.style.left=0;
		setTimeout(timer1,2000);
}	
	
	
		
setTimeout(timer1,2000);