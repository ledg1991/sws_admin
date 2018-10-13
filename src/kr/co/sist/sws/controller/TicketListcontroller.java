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
import kr.co.sist.sws.service.RentalserviceImpl;
import kr.co.sist.sws.service.TicketserviceImpl;
import kr.co.sist.sws.vo.Product;
import kr.co.sist.sws.vo.Rental;
import kr.co.sist.sws.vo.Ticket;

import static org.springframework.web.bind.annotation.RequestMethod.GET;





@Controller
public class TicketListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(TicketListcontroller.class);
	@Autowired(required=false)
	TicketserviceImpl ticket;
	
	@RequestMapping(value="ticket.do", method=GET)
	public String inquiry(Model m,HttpSession session) { 
		String url="login/login";
		String flag=(String) session.getAttribute("userName");
		if(flag!=null) {
			List<Ticket> list=ticket.ticketlist();
			m.addAttribute("t_list",list);
			url="ticket/ticket_list";			
		}			
		String msg="required";
		m.addAttribute("msg",msg);
		

		return url;
	}
	
	
		
}//class
