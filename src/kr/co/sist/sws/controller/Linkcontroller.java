package kr.co.sist.sws.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class Linkcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(Linkcontroller.class);
	
	
	
	
	
	
	
	@RequestMapping("admin_insert.do")
	public String admin_insertLink() { 
		return "admin/admin_insert";
	}//h

	
	
	

	
	
	
	
}//class
