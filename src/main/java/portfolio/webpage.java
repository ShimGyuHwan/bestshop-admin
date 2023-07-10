package portfolio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.cglib.core.Local;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;





@Controller
public class webpage {
	
	//image API 서버 
	@GetMapping("/imgapi/{name:[a-zA-Z0-9]+}")
	public @ResponseBody byte[] imgsrc(@PathVariable String name, HttpServletRequest req, HttpServletResponse res) throws Exception {
		String webpath = req.getSession().getServletContext().getRealPath("/banners/");
		String img = webpath+name+".png";
		InputStream in = new FileInputStream(img);
		byte[] imgurl = IOUtils.toByteArray(in);
		in.close();
		return imgurl;
	}
	
	@Inject
	private SqlSessionTemplate sqlst;
	@Inject
	private SqlSessionTemplate sqlst2;

		
	
	
	
	@RequestMapping("/admin/adminok.do")
	public void adok(@ModelAttribute("board") adminvo adminvo ,Model m,HttpServletRequest req) {
		String result="";
	
		String id = req.getParameter("aid");
		List<String> ls = sqlst.selectList("adminDB.idck",id);
		JSONArray ja = new JSONArray();
		ja.add(ls);
		System.out.print(ja);
		result = ja.toString();
		m.addAttribute("result", result);		
		int a = sqlst.insert("adminDB.admininsert",adminvo);
		m.addAttribute("num", a);
		 
		
	}
	@SuppressWarnings({ "unchecked" })
	@RequestMapping("admin/idck.do")
	public void idck(Model m) {
		List<Map<String,Object>> ls = sqlst.selectList("adminDB.idck");
		JSONArray jsonArray = new JSONArray();
	System.out.print(ls);
		for (Map<String, Object> map : ls) {

			JSONObject json = new JSONObject();
			for(Map.Entry<String, Object> entry :  map.entrySet()) {
				String key = entry.getKey();
				Object value = entry.getValue();
				json.put(key,value);
			
			}
			jsonArray.add(json);

		}
		System.out.print(jsonArray);
		m.addAttribute("result",jsonArray);
		
		
	}
	
	
	
	@RequestMapping("/admin/admin_logout.do")
	public void logout(HttpServletRequest req) {
		
		 HttpSession session = req.getSession();
	        session.invalidate();
	        
	}
	@RequestMapping("/admin/loginok.do")//로그인 id pw 검토
	public void login(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo ,Model m ) {
		String msg="no";
		try {
		
		String pw = req.getParameter("apw").intern();
		String id = req.getParameter("aid").intern();		
		adminvo avo = sqlst.selectOne("adminDB.selectid",id);
		String key="yes";
		if(!pw.equals(avo.getApw())) {
			key="no";
		}
		HttpSession session1 = req.getSession();
		session1.setAttribute("admin",avo.getAname());
		m.addAttribute("accept", avo.getAccept());
		m.addAttribute("msg",key);
		m.addAttribute("id",avo.getAid());
		m.addAttribute("name",avo.getAname());
		
		
		}catch (Exception e) {
			e.printStackTrace();
			m.addAttribute("msg",msg);
		}
		
	}
	@RequestMapping("/admin/acceptok.do")//승인
	public void accept1(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo ,Model m ) {
		try {
			String ac = req.getParameter("ac");
			System.out.print(ac);
		
		int a =sqlst.update("adminDB.adminupdate",ac);
		m.addAttribute("a",a);
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/admin/admin_main.do")
	public void adminmain(HttpServletRequest req,Model m) {
		try {
			
			String name = req.getParameter("aname");
			List<adminvo> ad = sqlst.selectList("adminDB.selectall");	
			for(int a=0; a<ad.size(); a++) {
				System.out.println("제목:" + ad.get(a).getAemail());
			}
			
			
			m.addAttribute("ad", ad);		
			m.addAttribute("name",name);
			
			
			
		}catch (Exception e) {
			System.out.print(e);
			String name = req.getParameter("aname");
			String id = req.getParameter("aid");
			ArrayList<String> ad = new ArrayList<String>();
			//m.addAttribute("ad", ad);		
			m.addAttribute("name",name);
		}
		
		
	}
	@RequestMapping("/admin/shop_config.do")
	public void shopconfig(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo,Model m) {
		
		List<adminvo> ls = sqlst.selectList("adminDB.selectconfig");
		m.addAttribute("ls",ls);
			
		
		
		
	}
	@RequestMapping("/admin/shop_configok.do")
	public void shopconfigok(@ModelAttribute("board") adminvo adminvo,Model m) {
		
		int result = sqlst.update("adminDB.shopconfig",adminvo);
		m.addAttribute("result",result);
			
		
		
		
	}
	
	@RequestMapping("/admin/shop_setup.do")
	public void shopsetup(@ModelAttribute("board") adminvo adminvo,Model m) {
		List<adminvo> ls = sqlst.selectList("adminDB.setupall");
		m.addAttribute("ls",ls);
		}
	
	@RequestMapping("/admin/shop_setupok.do")
	public void shopsetupok(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo,Model m) {
	try {	
		String type = req.getParameter("stype");		
		
			if(type.equals("a")) {
			System.out.print(type);
		int result1 = sqlst.update("adminDB.sbupdate",adminvo);		
		}
		else if(type.equals("b")) {
		int result2 = sqlst.update("adminDB.spupdate",adminvo);
		}
		else if(type.equals("c")) {
		int result3 = sqlst.update("adminDB.sadupdate",adminvo);	
		}
	}catch (Exception e) {
		e.printStackTrace();
	}
	
	}
	
	
	
	@RequestMapping("/welcome.do")
	public void welcome(@ModelAttribute("board") adminvo adminvo,Model m) {
	
		
		int result = sqlst.insert("adminDB.joinmember",adminvo);
		m.addAttribute("result",result);
		m.addAttribute("member",adminvo);
		
	}
	
	
	@RequestMapping("/admin/member_list.do")
	public void memberlist(HttpServletRequest req,Model m) {
		try {	
			//int ckpage = Integer.parseInt( req.getParameter("newpage"));
			
			
			//String[] ar = req.getParameterValues("cks");
			//if(ar.length>0 || ar != null) {
			//session.delete("ck_delete",ar);
			//}
			
			
			int page = Integer.parseInt( req.getParameter("page"));//현재 페이지
			int total = sqlst2.selectOne("memberDB.member_count");//전체 글 갯수 		
			int pagesize = 10;//한 페이지 글 갯수
			int startpage;//현재 페이지 시작번호
			int	endpage;//현재 페이지 끝번호
			int totalpage;//페이지 총 갯수
			int pagecount=5;
			
			int startno,endno;//페이지 글 시작 끝
			startno = (page-1)*pagesize+1;
			endno = startno+(pagesize-1);
			
			totalpage = (total-1)/pagesize+1;
			startpage = ((page-1)/pagecount)*pagecount+1;
			
			endpage = startpage+4;
			if(totalpage<endpage) {
				endpage=totalpage;
			}
			/*
			paging pg = new paging();
			
			HashMap<String, Integer> p =pg.page();
			*/
			
			
			pagevo pv = new pagevo(startno,endno,"hello");
			
		
			
			List<adminvo> md = sqlst.selectList("adminDB.selectmember",pv);	
			m.addAttribute("md", md);
			m.addAttribute("startpage", startpage);
			m.addAttribute("endpage", endpage);
			m.addAttribute("page", page);
			m.addAttribute("totalpage", totalpage);
	
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping("/admin/member_modify.do")
	public void modify(HttpServletRequest req,Model m) {
	try {	
		String mid = (String)req.getParameter("mid");
		String mname = (String)req.getParameter("mname");		
		m.addAttribute("mname",mname);
		m.addAttribute("mid",mid);
		
	}catch (Exception e) {
		e.printStackTrace();
	}
		
	}
	
	@RequestMapping("/admin/mcomp.do")
	public void mdf(HttpServletRequest req,Model m) {
		
		try {
		String mid = (String)req.getParameter("mid");
		String mlevel = (String)req.getParameter("mlevel");
		String mpoint = (String)req.getParameter("mpoint");
		
		String mdormant = (String)req.getParameter("mdormant");
		modifyvo mv = new modifyvo(mid,mpoint,mlevel,mdormant);
		
 		
		sqlst.update("adminDB.member_modify",mv);
		
		sqlst.close();
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	@RequestMapping("/admin/member_search.do")
	public void search(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo,Model m) {
		try {
		String info = adminvo.getMemberinfo();
		
		System.out.println(adminvo.getMemberinfo()+adminvo.getSearchm());
		int page = Integer.parseInt( req.getParameter("page"));//현재 페이지
		
		int total = sqlst.selectOne("adminDB.search_count",adminvo);//전체 글 갯수 		
		int pagesize = 10;//한 페이지 글 갯수
		int startpage;//현재 페이지 시작번호
		int	endpage;//현재 페이지 끝번호
		int totalpage;//페이지 총 갯수
		int pagecount=5;
		int startno,endno;//페이지 글 시작 끝
		startno = (page-1)*pagesize+1;
		endno = startno+(pagesize-1);
		
		totalpage = (total-1)/pagesize+1;
		startpage = ((page-1)/pagecount)*pagecount+1;
		
		endpage = startpage+4;
		if(totalpage<endpage) {
			endpage=totalpage;
		}
		
		
		pagevo pv = new pagevo(startno,endno,info);
		List<adminvo> md = sqlst.selectList("adminDB.membersearch",adminvo);	
		m.addAttribute("md", md);
		m.addAttribute("startpage", startpage);
		m.addAttribute("endpage", endpage);
		m.addAttribute("page", page);
		m.addAttribute("totalpage", totalpage);
		m.addAttribute("info", info);
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/admin/member_delete.do")
	public void memeberd(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo ,Model m) {
				int result =sqlst.delete("adminDB.memberd",adminvo);
				m.addAttribute("result",result);
	}
	
	
	@RequestMapping("/admin/notice_list.do")
	public void nlist(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo ,Model m) {
			
		try {
			
			int page = Integer.parseInt( req.getParameter("page"));//현재 페이지
			
			int total = sqlst.selectOne("adminDB.notice_count");//전체 글 갯수 		
			int pagesize = 10;//한 페이지 글 갯수
			int startpage;//현재 페이지 시작번호
			int	endpage;//현재 페이지 끝번호
			int totalpage;//페이지 총 갯수
			int pagecount=5; //페이지 view 
			int startno,endno;//페이지 글 시작 끝
			startno = (page-1)*pagesize+1;
			endno = startno+(pagesize-1);
			
			totalpage = (total-1)/pagesize+1;
			startpage = ((page-1)/pagecount)*pagecount+1;
			
			endpage = startpage+4;
			if(totalpage<endpage) {
				endpage=totalpage;
			}
			
			
			pagevo pv = new pagevo(startno,endno,"");
			
			System.out.println(startpage);
			System.out.println(endpage);
			System.out.println(totalpage);
			
			List<adminvo> md =sqlst.selectList("adminDB.selectnotice",pv);
			
			m.addAttribute("md",md);
			m.addAttribute("startpage", startpage);
			m.addAttribute("endpage", endpage);
			m.addAttribute("page", page);
			m.addAttribute("totalpage", totalpage);
			//현재페이지 시작페이지 끝페이지 전체페이지 다음페이지 이전페이지
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/admin/notice_write.do")
	public void noticewrite() {
		
	}
	
	@RequestMapping("/admin/notice_reg.do")
	public void noticereg(@ModelAttribute("board") adminvo adminvo) {
	
		sqlst.insert("adminDB.noticeinsert",adminvo);
		
	}
		
		
	
	@RequestMapping("/admin/notice_view.do")
	
	public void nview(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo ,Model m) {
		
		try {
			
			adminvo avo = sqlst.selectOne("adminDB.noticeinfo",adminvo);
			sqlst.selectOne("adminDB.countupdate",adminvo);
			m.addAttribute("md",avo);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/admin/notice_delete.do")
	public void noticed(@ModelAttribute("board") adminvo adminvo,Model m ) {
	if(adminvo.getCks()!=null) {
		int result=sqlst.delete("adminDB.noticedel",adminvo);
		m.addAttribute("result",result);
		
	}else {
		int result=sqlst.delete("adminDB.noticedelone",adminvo);
		m.addAttribute("result",result);
	}
		
	}
	@RequestMapping("/admin/notice_modify.do")
	public void noticemdf(@ModelAttribute("board") adminvo adminvo,Model m) {
		m.addAttribute("nl",adminvo);
	}
	
	@RequestMapping("/admin/nmdfok.do")
	public void nmdfok(@ModelAttribute("board") adminvo adminvo,Model m) {
		int result =sqlst.update("adminDB.noticemdf",adminvo);
		m.addAttribute("result",result);
	}
	
	
	
	@RequestMapping("/admin/shop_product_list.do")
	public void shopproductlist(@ModelAttribute("board") adminvo adminvo,Model m,HttpServletRequest req ) {
		String page1 = req.getParameter("page");
		adminvo.setPage(page1);
		int page = Integer.parseInt( adminvo.getPage());//현재 페이지
		int total = sqlst.selectOne("adminDB.pd_count");//전체 글 갯수 		
		int pagesize = 10;//한 페이지 글 갯수
		int startpage;//현재 페이지 시작번호
		int	endpage;//현재 페이지 끝번호
		int totalpage;//페이지 총 갯수
		int pagecount=5; //페이지 view 
		int startno,endno;//페이지 글 시작 끝
		startno = (page-1)*pagesize+1;
		endno = startno+(pagesize-1);
		
		totalpage = (total-1)/pagesize+1;
		startpage = ((page-1)/pagecount)*pagecount+1;
		
		endpage = startpage+4;
		if(totalpage<endpage) {
			endpage=totalpage;
		}
		
		
		pagevo pv = new pagevo(startno,endno,"");
		
		 adminvo.setS(pv.s);
		List<adminvo> md = sqlst.selectList("adminDB.selectpd",adminvo);	
		m.addAttribute("md",md);
		m.addAttribute("startpage", startpage);
		m.addAttribute("endpage", endpage);
		m.addAttribute("page", page);
		m.addAttribute("totalpage", totalpage);
		
	}
	@RequestMapping("/admin/product_search.do")
	public void psearch(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo,Model m) {
		try {
		String info = adminvo.getPinfo();
		
		System.out.println(adminvo.getProductinfo()+adminvo.getSearchp());
		int page = Integer.parseInt( req.getParameter("page"));//현재 페이지
		
		int total = sqlst.selectOne("adminDB.psearch_count",adminvo);//전체 글 갯수 		
		int pagesize = 10;//한 페이지 글 갯수
		int startpage;//현재 페이지 시작번호
		int	endpage;//현재 페이지 끝번호
		int totalpage;//페이지 총 갯수
		int pagecount=5;
		int startno,endno;//페이지 글 시작 끝
		startno = (page-1)*pagesize+1;
		endno = startno+(pagesize-1);
		
		totalpage = (total-1)/pagesize+1;
		startpage = ((page-1)/pagecount)*pagecount+1;
		
		endpage = startpage+4;
		if(totalpage<endpage) {
			endpage=totalpage;
		}
		
		
		pagevo pv = new pagevo(startno,endno,info);
		List<adminvo> md = sqlst.selectList("adminDB.productsearch",adminvo);	
		m.addAttribute("md", md);
		m.addAttribute("startpage", startpage);
		m.addAttribute("endpage", endpage);
		m.addAttribute("page", page);
		m.addAttribute("totalpage", totalpage);
		m.addAttribute("info", info);
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	@RequestMapping("/admin/pdwriteok.do")
	public String shopproductwrite(@ModelAttribute("board") adminvo adminvo,HttpServletRequest req,HttpServletResponse res,Model m ) {
		OutputStream out = null;
		res.setCharacterEncoding("utf-8");
	    res.setContentType("text/html; charset=utf-8");
	    MultipartFile[] f = adminvo.getPimgall();	   
	    String msg="ok";
	    String a = "a";
	    try {
	    	if(f.length<1) {
	    		msg="no";
	    		m.addAttribute("msg",msg);
	    	}else {
	    		ArrayList<String> al = new ArrayList<String>();
	    		for(int i=0; i<f.length;i++) {
	    			String time = String.valueOf(System.currentTimeMillis());
	    			String fileName = f[i].getOriginalFilename(); 
	    			String fileP = "product_img/"+time+fileName;
	    	        al.add(fileP);
	    	        System.out.println(fileP);
	    	        
	    	        byte[] bytes = f[i].getBytes();
	    	       
	    	        
	    	        String uploadpath = req.getSession().getServletContext().getRealPath("admin/product_img/");
	    	        System.out.println(uploadpath);
	    	        String imgsave = uploadpath+time+fileName;
	    	        System.out.println(imgsave);
	    	        if(fileName=="") {
	    	        	continue;
	    	        }else {
	    	        out = new FileOutputStream(new File(imgsave));
	    	        out.write(bytes);
	    	        }
	    		}
	    		
	    		adminvo.setPimg1(al);
	    		
	    		int ck = sqlst.insert("adminDB.insertpd",adminvo);
	    	
	    		m.addAttribute("ck",ck);
	    		m.addAttribute("msg",msg);

	    				
	    	}
	    
	        
	    }
	    catch(Exception e) {
	    	int ck =0;
	    	msg="no";
	    	m.addAttribute("ck",ck);
    		m.addAttribute("msg",msg);
    		e.printStackTrace();
	    }
	
	    return "admin/pdwriteok";
	}
	
	@RequestMapping("/admin/imageupload.do")
	public void imgupload(HttpServletRequest req, HttpServletResponse res, MultipartFile upload) {
		OutputStream out = null;
		PrintWriter pw = null;
		res.setCharacterEncoding("utf-8");
	    res.setContentType("text/html; charset=utf-8");
	    
	    try {
	        String fileName = upload.getOriginalFilename(); 
	        byte[] bytes = upload.getBytes();
	        String time = String.valueOf(System.currentTimeMillis());
	        
	        String uploadpath = req.getSession().getServletContext().getRealPath("admin/product_img/");
	        System.out.println(uploadpath);
	        String imgsave = uploadpath +time+fileName;
	        System.out.println(imgsave);
	        out = new FileOutputStream(new File(imgsave));
	        out.write(bytes);
	        
	        pw = res.getWriter();
	        String fileurl = "product_img/" + time+fileName;
	        pw.println("{\"filename\":\"" + fileName + "\", \"uploaded\":1,\"url\":\"" + fileurl + "\"}");
	        pw.flush();
	        pw.close();
	        
	    }
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
	}
	
	@RequestMapping("/admin/product_d.do")
	public void pdd(@ModelAttribute("board") adminvo adminvo ,Model m) {
		int result =sqlst.delete("adminDB.productd",adminvo);
		m.addAttribute("result",result);
		
	}
	
	@SuppressWarnings({ "unchecked" })
	@RequestMapping("/API/noticeapi.do")
	public void noticeapi(@ModelAttribute("board") adminvo adminvo,Model m) {
		List<Map<String,Object>> ls = sqlst.selectList("adminDB.noticesub",adminvo);
		JSONArray jsonArray = new JSONArray();
	
		for (Map<String, Object> map : ls) {

			JSONObject json = new JSONObject();
			for(Map.Entry<String, Object> entry :  map.entrySet()) {
				String key = entry.getKey();
				Object value = entry.getValue();
				json.put(key,value);
			
			}
			jsonArray.add(json);

		}
		
		m.addAttribute("result",jsonArray);
		
		
	}
	
	
	
	@SuppressWarnings({ "unchecked" })
	@RequestMapping("API/productlistapi.do")
	public void noticeapi(Model m) {
		List<Map<String,Object>> ls = sqlst.selectList("adminDB.productlist");
		JSONArray jsonArray = new JSONArray();
	
		for (Map<String, Object> map : ls) {

			JSONObject json = new JSONObject();
			for(Map.Entry<String, Object> entry :  map.entrySet()) {
				String key = entry.getKey();
				Object value = entry.getValue();
				json.put(key,value);
			
			}
			jsonArray.add(json);

		}
		
		m.addAttribute("result",jsonArray);
		
		
	}
	
	@SuppressWarnings({ "unchecked" })
	@RequestMapping("API/mdpicklistapi.do")
	public void mdpickapi(Model m) {
		List<Map<String,Object>> ls = sqlst.selectList("adminDB.mdpicklist");
		JSONArray jsonArray = new JSONArray();
	
		for (Map<String, Object> map : ls) {

			JSONObject json = new JSONObject();
			for(Map.Entry<String, Object> entry :  map.entrySet()) {
				String key = entry.getKey();
				Object value = entry.getValue();
				json.put(key,value);
			
			}
			jsonArray.add(json);

		}
		
		m.addAttribute("result",jsonArray);
		
		
	}
	
	@SuppressWarnings({ "unchecked" })
	@RequestMapping("admin/codeapi.do")
	public void codeapi(Model m) {
		List<Map<String,Object>> ls = sqlst.selectList("adminDB.codelist");
		JSONArray jsonArray = new JSONArray();
	
		for (Map<String, Object> map : ls) {

			JSONObject json = new JSONObject();
			for(Map.Entry<String, Object> entry :  map.entrySet()) {
				String key = entry.getKey();
				Object value = entry.getValue();
				json.put(key,value);
			
			}
			jsonArray.add(json);

		}
		
		m.addAttribute("result",jsonArray);
		
		
	}
	
	@SuppressWarnings({ "unchecked" })
	@RequestMapping("API/configapi.do")
	public void configapi(Model m) {
		List<Map<String,Object>> ls = sqlst.selectList("adminDB.configapi");
		JSONArray jsonArray = new JSONArray();
	System.out.print(ls);
		for (Map<String, Object> map : ls) {

			JSONObject json = new JSONObject();
			for(Map.Entry<String, Object> entry :  map.entrySet()) {
				String key = entry.getKey();
				Object value = entry.getValue();
				json.put(key,value);
			
			}
			jsonArray.add(json);

		}
		
		m.addAttribute("result",jsonArray);
		
		
	}
	
	@SuppressWarnings({ "unchecked" })
	@RequestMapping("API/bannerapi.do")
	public void bannerapi(Model m) {
		List<Map<String,Object>> ls = sqlst.selectList("adminDB.bannerapi");
		JSONArray jsonArray = new JSONArray();
	System.out.print(ls);
		for (Map<String, Object> map : ls) {

			JSONObject json = new JSONObject();
			for(Map.Entry<String, Object> entry :  map.entrySet()) {
				String key = entry.getKey();
				Object value = entry.getValue();
				json.put(key,value);
			
			}
			jsonArray.add(json);

		}
		m.addAttribute("result",jsonArray);
		
		
	}
	
	
	
	
	
	@RequestMapping("/loginok.do")
	public void loginok(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo,Model m) {
		
		try {
			String save = adminvo.getIdsaveck();	
			String result =sqlst.selectOne("adminDB.bestshoplogin",adminvo);
			HttpSession session = req.getSession();
			session.setAttribute("user",result);
			m.addAttribute("result",result);
			m.addAttribute("save",save);
			
		
		}catch (Exception e) {
			e.printStackTrace();
			String result="no";
			m.addAttribute("result",result);
		}
		
	}
	
	@RequestMapping("/logout.do")
	public void logout(HttpServletRequest req,@ModelAttribute("board") adminvo adminvo,Model m) {
		HttpSession session = req.getSession();
        session.invalidate();
	}
	
	
}
