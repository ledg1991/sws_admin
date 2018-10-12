package kr.co.sist.sws.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.sws.service.NoticeserviceImpl;
import kr.co.sist.sws.service.ProductserviceImpl;
import kr.co.sist.sws.service.RentalserviceImpl;
import kr.co.sist.sws.vo.Notice;
import kr.co.sist.sws.vo.Product;
import kr.co.sist.sws.vo.Rental;

import static org.springframework.web.bind.annotation.RequestMethod.GET;





@Controller
public class NoticeListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(NoticeListcontroller.class);
	@Autowired(required=false)
	NoticeserviceImpl notice;
	
	@RequestMapping(value="notice.do", method=GET)
	public String inquiry(Model m) { 
		List<Notice> list=notice.noticelist();
		m.addAttribute("n_list",list);
	
		return "notice/notice_list";
	}
		
}//class
