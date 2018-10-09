package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Member;

@Component// 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class MemberDAOImpl implements MemberDAO {
    // SqlSession 객체를 스프핑에서 생성하여 주입
    // 의존관계 주입(Dependency Injection), 느슨한 결합
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis 실행 객체
	
    // 01_01. 회원 로그인체크
    @Override
    public boolean member(Member mo, HttpSession session) {
        String name = sqlSession.selectOne("member.memberList", mo);
        session.setAttribute("userName", name );
        return (name == null) ? false : true;
    }
   
    
    // 02. 회원 로그아웃
    @Override
    public void search(HttpSession session) {
    }
	
}
 

