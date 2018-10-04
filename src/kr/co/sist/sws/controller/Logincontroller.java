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
		
        // 로그인 성공
        if(result == true) {
        	//main.jsp 이동
            
            mav.setViewName("main/main");// 관리자 페이지 이동
            mav.addObject("msg", "success");
        // 로그인 실패
        } else { 
            mav.setViewName("login/login"); // 로그인 페이지 이동
            mav.addObject("msg", "failure");
        }
        return mav;
    }

    // 3. 관리자 로그아웃
    @RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session){
        loginservice.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("login/login");
        mav.addObject("msg", "logout");
        return mav;
    }
	
	
	
	
}//class
