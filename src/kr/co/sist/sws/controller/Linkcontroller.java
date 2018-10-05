package kr.co.sist.sws.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import kr.co.sist.sws.service.LoginserviceImpl;
import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Manager;

import static org.springframework.web.bind.annotation.RequestMethod.GET; 
import static org.springframework.web.bind.annotation.RequestMethod.POST;


import javax.servlet.http.HttpSession;; 




@Controller
public class Linkcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(Linkcontroller.class);
	@Autowired(required=false)
	
	
	@RequestMapping("m.do")
	public String login() { 
		return "";
	}//hello


	
	
	
	
}//class
