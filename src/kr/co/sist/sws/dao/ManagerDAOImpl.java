package kr.co.sist.sws.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.sist.sws.vo.Manager;

@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class ManagerDAOImpl implements ManagerDAO {
    // SqlSession ��ü�� �����ο��� �����Ͽ� ����
    // �������� ����(Dependency Injection), ������ ����
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
    // 01_01. ȸ�� �α���üũ
    @Override
    public boolean loginCheck(Manager mv) {
        String name = sqlSession.selectOne("manager.loginCheck", mv);
        return (name == null) ? false : true;
    }
    // 01_02. ȸ�� �α��� ����
    @Override
	public Manager viewManager(Manager mv) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("manager.viewManager", mv);
	}
    // 02. ȸ�� �α׾ƿ�
    @Override
    public void logout(HttpSession session) {
    	session.invalidate();
    }
	
}
 

