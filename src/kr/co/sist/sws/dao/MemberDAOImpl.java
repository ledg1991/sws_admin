package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Member;

@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class MemberDAOImpl implements MemberDAO {
    // SqlSession ��ü�� �����ο��� �����Ͽ� ����
    // �������� ����(Dependency Injection), ������ ����
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
	
    // 01_01. ȸ�� �α���üũ
    @Override
    public List<Member> memberlist(){
    	List<Member> list=sqlSession.selectList("member.memberlist");
    	return list;
    }
   
    
   
}
 

