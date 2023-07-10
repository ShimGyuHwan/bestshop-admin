package pay;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pay_page {
	
		@PostMapping("/payok.do")
		public String payok(){
			
			return "payok";
		}
	
		@PostMapping("/order.do")
		public String orders(@ModelAttribute pays pays,Model m) {
			m.addAttribute("product_code", pays.getProduct_code());
			m.addAttribute("product_name", pays.getProduct_name());
			m.addAttribute("product_ea", pays.getProduct_ea());
			m.addAttribute("product_money", pays.getProduct_money());
		
			
			return "order";
		}

		@RequestMapping("/item.do")
		public String items(HttpServletRequest req,Model m) {
			HttpSession session = req.getSession();
			session.setAttribute("mid", "hong");
			session.setAttribute("mname", "홍길동");
			session.setAttribute("mtel", "01012345678");
			session.setAttribute("memail", "calcifer36@naver.com");
			
			Random rd = new Random();
			int n;
			String product_no="";
			
			for(int i=1; i<7;i++) {
				n=rd.nextInt(10);
				product_no+= n;
				
			}
			System.out.print(product_no);
			m.addAttribute("product_no",product_no);
		
			return "item";
		}
	
	
}
