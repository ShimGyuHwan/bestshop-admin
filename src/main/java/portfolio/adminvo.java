package portfolio;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class adminvo {
	/*admin계정*/
	int aidx;
	String aname,apw,aid,atel,aemail,adpt,apst,accept;
	Date adate;
	
	/*member 리스트*/
	int midx;
	
	String mid,mname,mpass,maccept,memail,maddr,mtel,mphone,mlevel,mpoint,memailok,msmsok,mdormant,searchm,memberinfo ;
	String idsaveck;
	Date mjoin,mlogin,mdrop;
	String[] cks;

	/*notice*/
	
	int nidx,count;
	String ncount,nsub,nwriter,nfile,ntext,ninfo,del_nidx,nsub1,nwriter1,nfile1,ntext1,ninfo1;
	Date ndate;
	
	
	//paging
	String page;
	int s;

	//file
	
	MultipartFile[] pimgall;
	int pidx;
	String pcg1,pcg2,pcode,pname,pinfo,pprice,pdc,pdcprice,pea,psell,psoldout,pinfo2,searchp,productinfo;
	String pimg;
	ArrayList<String> pimg1;
	
	
	//shop setup
	
	String sb1,sb2,sb3,sb4,sbl1,sbl2,sbl3,sbl4,sp1,spl1,sad1,sad2,sadl1,sadl2,stype,spopupok;
	
	
	//shop config
	String  ctitle,cadminmail,cpointok,cpoint,clevel,ccompname,cbiznum,cceo,cgen,ccomnum,ccombiznum,caddr,caddrnum,ccomadmin,ccomadminmail,cnobank,cbank,ccredit,ctelpay,cgift,cbill,cdelivery,cdprice,cdelivery_day;

}

