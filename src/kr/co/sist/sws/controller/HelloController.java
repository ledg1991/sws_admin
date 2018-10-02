package kr.co.sist.sws.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.sws.service.loginservice;
import kr.co.sist.sws.vo.Manager;

import static org.springframework.web.bind.annotation.RequestMethod.GET; 
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;; 




@Controller
public class HelloController {
	@Inject
	loginservice login;
	
	@RequestMapping(value="index.do", method=GET)
	public String hello() {
		return "login/login";
	}//hello

	@RequestMapping(value="admin/loginCheck.do", method={GET,POST})
	 public ModelAndView loginCheck(HttpSession session, Manager mv, ModelAndView mav){
        String name = login.
        // 로그인 성공
        if(name != null) {
            session.setAttribute("adminId", mv.getID());
            session.setAttribute("adminPw", mv.getPW());
            session.setAttribute("adminName", name);
            session.setAttribute("userName", name);
            mav.setViewName("admin/adminHome"); // 관리자 페이지 이동
            mav.addObject("msg", "success");
        // 로그인 실패
        } else { 
            mav.setViewName("admin/adminLogin"); // 로그인 페이지 이동
            mav.addObject("msg", "failure");
        }
        return mav;
    }

    // 3. 관리자 로그아웃
    @RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session){
        session.invalidate();
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin/adminLogin");
        mav.addObject("msg", "logout");
        return mav;
    }
	
	
	
	
}//class
