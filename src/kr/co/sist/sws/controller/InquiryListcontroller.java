package kr.co.sist.sws.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.sws.service.InquiryserviceImpl;
import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Member;

import static org.springframework.web.bind.annotation.RequestMethod.GET;





@Controller
public class InquiryListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(InquiryListcontroller.class);
	@Autowired(required=false)
	InquiryserviceImpl inquiry;
	
	@RequestMapping(value="inquiry.do", method=GET)
	public String inquiry(HttpSession session,Model m) { 
		String url="login/login";
		String flag=(String) session.getAttribute("userName");
		if(flag!=null) {
			List<Inquiry> list=inquiry.inquirylist();
			m.addAttribute("i_list",list);
			url="inquiry/question_list";			
		}			
		String msg="required";
		m.addAttribute("msg",msg);
		

		return url;
	}
	
	@RequestMapping(value="answer.do" , method=GET)
	public String answer(HttpSession session, String iNumber,Model m) {
		String url="inquiry/answer_write_frm";
		Inquiry answer=inquiry.answer(iNumber);
			m.addAttribute("answer",answer);
		
		
	
		return url;
	}
	
		
}//class
