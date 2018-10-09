package kr.co.sist.sws.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.sist.sws.vo.Login;

@Component// 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class ManagerDAOImpl implements ManagerDAO {
    // SqlSession 객체를 스프핑에서 생성하여 주입
    // 의존관계 주입(Dependency Injection), 느슨한 결합
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis 실행 객체
	
    // 01_01. 회원 로그인체크
    @Override
    public boolean loginCheck(Login lo,HttpSession session) {
        String name = sqlSession.selectOne("manager.loginCheck", lo);
        session.setAttribute("userName", name );
        return (name == null) ? false : true;
    }
   
    
    // 02. 회원 로그아웃
    @Override
    public void logout(HttpSession session) {
    	session.invalidate();
    }
	
}
 

