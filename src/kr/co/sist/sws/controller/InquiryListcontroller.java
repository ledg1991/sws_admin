package kr.co.sist.sws.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.sws.service.InquiryserviceImpl;
import kr.co.sist.sws.vo.Inquiry;
import static org.springframework.web.bind.annotation.RequestMethod.GET;





@Controller
public class InquiryListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(InquiryListcontroller.class);
	@Autowired(required=false)
	InquiryserviceImpl inquiry;
	
	@RequestMapping(value="inquiry.do", method=GET)
	public String inquiry(Model m) { 
		List<Inquiry> list=inquiry.inquirylist();
		System.out.println("---------------------------"+list);
		m.addAttribute("i_list",list);
	
		return "inquiry/question_list";
	}
		
}//class
