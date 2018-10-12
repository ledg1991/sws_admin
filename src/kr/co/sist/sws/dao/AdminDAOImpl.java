package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Admin;


@Component// 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class AdminDAOImpl implements AdminDAO {
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis 실행 객체
	
    @Override
    public List<Admin> adminlist(){
    	List<Admin> list=sqlSession.selectList("admin.adminlist");
    	return list;
    }
   
    
   
}
 

