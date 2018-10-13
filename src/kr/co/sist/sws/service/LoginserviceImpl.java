package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.sws.dao.LoginDAO;
import kr.co.sist.sws.vo.Login;

@Component
public class LoginserviceImpl implements Loginservice {

	@Autowired(required=false)
    LoginDAO mDao;
    
    // 01_01. ȸ�� �α���üũ
	
	@Override
	public boolean loginCheck(Login lo,HttpSession session) {
		 boolean result = mDao.loginCheck(lo,session);
		 
		
	        return result;
	   }

	

	@Override
	public void logout(SessionStatus session,HttpSession ss) {
		// ���� ���� ���� ����
        ss.removeAttribute("userName");
        // ���� ������ �ʱ�ȭ ��Ŵ
        session.setComplete();
		
	}
}
