package kr.co.sist.sws.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.tracing.dtrace.ModuleAttributes;

import kr.co.sist.sws.service.Loginservice;
import kr.co.sist.sws.vo.Manager;

import static org.springframework.web.bind.annotation.RequestMethod.GET; 
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;; 




@Controller
public class Logincontroller {
	
	private static final Logger logger = LoggerFactory.getLogger(Logincontroller.class);
	@Inject
	Loginservice loginservice;
	
	@RequestMapping(value="index.do", method=GET)
	public String Login() { 
		return "login/login";
	}//hello

	@RequestMapping(value="login/loginCheck.do", method={GET,POST})
	 public ModelAndView loginCheck( @ModelAttribute Manager mv, HttpSession session){
		boolean result = loginservice.loginCheck(mv,session);
		ModelAndView mav = new ModelAndView();
		
        // �α��� ����
        if(result == true) {
        	//main.jsp �̵�
            
            mav.setViewName("main/main");// ������ ������ �̵�
            mav.addObject("msg", "success");
        // �α��� ����
        } else { 
            mav.setViewName("login/login"); // �α��� ������ �̵�
            mav.addObject("msg", "failure");
        }
        return mav;
    }

    // 3. ������ �α׾ƿ�
    @RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session){
        loginservice.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("login/login");
        mav.addObject("msg", "logout");
        return mav;
    }
	
	
	
	
}//class
