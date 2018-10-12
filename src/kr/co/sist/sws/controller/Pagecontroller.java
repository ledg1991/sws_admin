package kr.co.sist.sws.controller;

import java.util.List;

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
import kr.co.sist.sws.vo.Product;
import kr.co.sist.sws.vo.Rental;

import static org.springframework.web.bind.annotation.RequestMethod.GET;





@Controller
public class Pagecontroller {
	
	@Autowired(required=false)
	AdminserviceImpl admin;
	
	private static final Logger logger = LoggerFactory.getLogger(Pagecontroller.class);
	
	
	@RequestMapping(value="search.do", method=GET)
	public String searchMember(Model m) { 
		return "admin/admin_list";
	}
		
}//class
