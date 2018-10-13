package kr.co.sist.sws.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.sws.service.AdminserviceImpl;
import kr.co.sist.sws.service.ProductserviceImpl;
import kr.co.sist.sws.service.RentalserviceImpl;
import kr.co.sist.sws.vo.Admin;
import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Product;
import kr.co.sist.sws.vo.Rental;

import static org.springframework.web.bind.annotation.RequestMethod.GET;





@Controller
public class AdminListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(AdminListcontroller.class);
	@Autowired(required=false)
	AdminserviceImpl admin;
	
	@RequestMapping(value="admin.do", method=GET)
	public String admin(HttpSession session, Model m) {
		String url="login/login";
		String flag=(String) session.getAttribute("userName");
		if(flag!=null) {
			List<Admin> list=admin.adminlist();
			m.addAttribute("a_list",list);
			url="admin/admin_list";			
		}			
		String msg="required";
		m.addAttribute("msg",msg);
		

		return url;
	
	
}

		
}//class
