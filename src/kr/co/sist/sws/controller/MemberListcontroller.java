package kr.co.sist.sws.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.sws.service.MemberserviceImpl;
import kr.co.sist.sws.vo.Member;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;




@Controller

public class MemberListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(MemberListcontroller.class);
	@Autowired(required=false)
	MemberserviceImpl member;
	
	@RequestMapping(value="member.do" , method=GET)
	public String member(HttpSession session, Model m) {
		String url="login/login";
		String flag=(String) session.getAttribute("userName");
		System.out.println(flag);
		if(flag!=null) {
			List<Member> list=member.memberlist();
			m.addAttribute("list",list);
			url="member/member_list";			
		}			
		String msg="required";
    	m.addAttribute("msg",msg);
		
	
		return url;
	}
	
	@RequestMapping(value="profile.do" , method=GET)
	public String profile(HttpSession session, String mNumber,Model m) {
		String url="member/profile_frm";
			Member p_list=member.profile(mNumber);
			System.out.println(mNumber);
			m.addAttribute("p_list",p_list);
		
		
	
		return url;
	}
	
	@RequestMapping(value="m_stop.do" , method=POST)
	public String m_stop(HttpSession session, String mNumber) {
		String url="member/member_list";
			Member m_stop=member.m_stop(mNumber);
		
		
	
		return url;
	}
	
	@RequestMapping(value="activity.do", method=POST)
	public String activity(HttpSession session, String mNumber) {
		String url="member/member_list";
			Member activity=member.activity(mNumber);
		
		
	
		return url;
	}
	
	
	
	
	
		
}//class
