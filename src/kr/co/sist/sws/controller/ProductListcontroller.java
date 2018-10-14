package kr.co.sist.sws.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.sws.service.ProductserviceImpl;
import kr.co.sist.sws.vo.Notice;
import kr.co.sist.sws.vo.Product;

import static org.springframework.web.bind.annotation.RequestMethod.GET;





@Controller
public class ProductListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(ProductListcontroller.class);
	@Autowired(required=false)
	ProductserviceImpl product;
	
	@RequestMapping(value="product.do", method=GET)
	public String product(Model m,HttpSession session) { 
		String url="login/login";
		String flag=(String) session.getAttribute("userName");
		if(flag!=null) {
			List<Product> list=product.productlist();
			m.addAttribute("p_list",list);
			url="product/product_list";			
		}			
		String msg="required";
		m.addAttribute("msg",msg);
		

		return url;
	}
	
	@RequestMapping(value="productInfo.do" , method=GET)
	public String productInfo(HttpSession session, String pNum,Model m) {
		String url="product/product_reg";
			Product p_info=product.info(pNum);
			
			m.addAttribute("p_info",p_info);
		
		
	
		return url;
	}
	
	
	
	
		
}//class
