package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Member;

@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class MemberDAOImpl implements MemberDAO {
    // SqlSession ��ü�� �����ο��� �����Ͽ� ����
    // �������� ����(Dependency Injection), ������ ����
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
	
    // 01_01. ȸ�� �α���üũ
    @Override
    public boolean member(Member mo, HttpSession session) {
        String name = sqlSession.selectOne("member.memberList", mo);
        session.setAttribute("userName", name );
        return (name == null) ? false : true;
    }
   
    
    // 02. ȸ�� �α׾ƿ�
    @Override
    public void search(HttpSession session) {
    }
	
}
 

