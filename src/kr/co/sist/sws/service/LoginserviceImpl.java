package kr.co.sist.sws.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.sist.sws.dao.ManagerDAO;
import kr.co.sist.sws.vo.Manager;

@Service
public class LoginserviceImpl {

	@Inject
    ManagerDAO mDao;
    
    // 01_01. 회원 로그인체크
	 public boolean loginCheck(Manager mv) {
	        return mDao.loginCheck(mv);
	    }
}
