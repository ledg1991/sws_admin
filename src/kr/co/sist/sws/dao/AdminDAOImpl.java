package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Admin;


@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class AdminDAOImpl implements AdminDAO {
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
	
    @Override
    public List<Admin> adminlist(){
    	List<Admin> list=sqlSession.selectList("admin.adminlist");
    	return list;
    }
   
    
   
}
 

