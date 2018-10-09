package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.ManagerDAO;
import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Manager;

@Component
public class LoginserviceImpl implements Loginservice {

	@Autowired(required=false)
    ManagerDAO mDao;
    
    // 01_01. 회원 로그인체크
	
	@Override
	public boolean loginCheck(Login lo,HttpSession session) {
		 boolean result = mDao.loginCheck(lo,session);
		 
		
	        return result;
	   }

	

	@Override
	public void logout(HttpSession session) {
		// 세션 변수 개별 삭제
        // session.removeAttribute("userId");
        // 세션 정보를 초기화 시킴
        session.invalidate();
		
	}
}
