package kr.co.sist.sws.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.co.sist.sws.vo.Member;





@Controller
public class MemberListcontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(MemberListcontroller.class);
	@Autowired(required=false)
	
	@RequestMapping("member.do")
	public String member() { 
		return "";
	}//hello

	@RequestMapping("search.do")
	 public String search(Member mo,Model m){
		String url="";
        // 로그인 성공
        return url;
    }

    
	
	
	
	
}//class
