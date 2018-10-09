package kr.co.sist.sws.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.sist.sws.vo.Login;

@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class ManagerDAOImpl implements ManagerDAO {
    // SqlSession ��ü�� �����ο��� �����Ͽ� ����
    // �������� ����(Dependency Injection), ������ ����
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
	
    // 01_01. ȸ�� �α���üũ
    @Override
    public boolean loginCheck(Login lo,HttpSession session) {
        String name = sqlSession.selectOne("manager.loginCheck", lo);
        session.setAttribute("userName", name );
        return (name == null) ? false : true;
    }
   
    
    // 02. ȸ�� �α׾ƿ�
    @Override
    public void logout(HttpSession session) {
    	session.invalidate();
    }
	
}
 

