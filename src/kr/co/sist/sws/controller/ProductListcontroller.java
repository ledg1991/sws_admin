package kr.co.sist.sws.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.sws.service.ProductserviceImpl;
import kr.co.sist.sws.vo.Product;

import static org.springframework.web.bind.annotation.RequestMethod.GET;





@Controller
public class ProductListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(ProductListcontroller.class);
	@Autowired(required=false)
	ProductserviceImpl product;
	
	@RequestMapping(value="product.do", method=GET)
	public String inquiry(Model m) { 
		List<Product> list=product.productlist();
		m.addAttribute("p_list",list);
	
		return "product/product_list";
	}
		
}//class
