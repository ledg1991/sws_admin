package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.ManagerDAO;
import kr.co.sist.sws.vo.Manager;

@Component
public class LoginserviceImpl implements Loginservice {

	@Autowired(required=false)
    ManagerDAO mDao;
    
    // 01_01. 회원 로그인체크
	
	@Override
	public boolean loginCheck(Manager mv, HttpSession session) {
		 boolean result = mDao.loginCheck(mv);
		 if (result) { // true일 경우 세션에 등록
	            Manager mv2 = viewMember(mv);
	            // 세션 변수 등록
	            session.setAttribute("userId", mv.getID());
	            session.setAttribute("userName", mv.getMANAGERNAME());
	        } 
	        return result;
	   }

	@Override
	public Manager viewMember(Manager mv) {
		// TODO Auto-generated method stub
		return mDao.viewMember(mv);
	}

	@Override
	public void logout(HttpSession session) {
		// 세션 변수 개별 삭제
        // session.removeAttribute("userId");
        // 세션 정보를 초기화 시킴
        session.invalidate();
		
	}
}
