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

import static org.springframework.web.bind.annotation.RequestMethod.GET; 
import static org.springframework.web.bind.annotation.RequestMethod.POST;


import javax.servlet.http.HttpSession;; 




@Controller
public class Linkcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(Linkcontroller.class);
	@Autowired(required=false)
	
	
	
	@RequestMapping("member.do")
	public String memberLink() { 
		return "member/member_list";
	}//
	@RequestMapping("question.do")
	public String questionLink() { 
		return "question/question_list";
	}//
	@RequestMapping("product.do")
	public String productLink() { 
		return "product/product_list";
	}//
	@RequestMapping("rental.do")
	public String rentalLink() { 
		return "rental/rental_list";
	}//
	@RequestMapping("ticket.do")
	public String ticketLink() { 
		return "ticket/ticket_list";
	}//
	
	
	@RequestMapping("admin.do")
	public String adminLink() { 
		return "admin/admin_list";
	}//
	@RequestMapping("admin_insert.do")
	public String admin_insertLink() { 
		return "admin/admin_insert";
	}//h

	@RequestMapping("notice.do")
	public String noticeLink() { 
		return "notice/notice_list";
	}//
	
	
	

	
	
	
	
}//class
