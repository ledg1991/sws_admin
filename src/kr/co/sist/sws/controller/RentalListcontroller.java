package kr.co.sist.sws.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.sws.service.ProductserviceImpl;
import kr.co.sist.sws.service.RentalserviceImpl;
import kr.co.sist.sws.vo.Product;
import kr.co.sist.sws.vo.Rental;

import static org.springframework.web.bind.annotation.RequestMethod.GET;





@Controller
public class RentalListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(RentalListcontroller.class);
	@Autowired(required=false)
	RentalserviceImpl rental;
	
	@RequestMapping(value="rental.do", method=GET)
	public String inquiry(Model m) { 
		List<Rental> list=rental.rentallist();
		m.addAttribute("r_list",list);
	
		return "rental/rental_list";
	}
		
}//class
