package kr.co.sist.sws.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.sws.service.LoginserviceImpl;
import kr.co.sist.sws.vo.Login;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;; 




@Controller
public class Logincontroller {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(Logincontroller.class);
	@Autowired(required=false)
	LoginserviceImpl loginservice;
	
	@RequestMapping(value="/login.do",method=GET)
	public String login() { 
		return "login/login";
	}//hello

	@RequestMapping("loginCheck.do")
	 public String loginCheck( Login lo,Model m, HttpSession session){
		
		boolean result = loginservice.loginCheck(lo, session);
		String url="login/login";
        // �α��� ����
        if(result) {
        	//main.jsp �̵�
            
        	url="main/main";// ������ ������ �̵�
        // �α��� ����
        } else {
        	
        	String msg="fail";
        	m.addAttribute("msg",msg);
        }
        return url;
    }

    // 3. ������ �α׾ƿ�
    @RequestMapping("logout.do")
    public String logout(SessionStatus session,Model m,HttpSession ss){
    	String url="login/login";
    	String msg="logout";
    	m.addAttribute("msg",msg);
    	ss.removeAttribute("userName");
    	session.setComplete();
        return url;
    }
	
	
	
	
}//class
