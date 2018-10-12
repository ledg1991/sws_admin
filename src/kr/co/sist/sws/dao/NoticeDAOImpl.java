package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Notice;
import kr.co.sist.sws.vo.Rental;


@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class NoticeDAOImpl implements NoticeDAO {
    // SqlSession ��ü�� �����ο��� �����Ͽ� ����
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
	
    @Override
    public List<Notice> noticelist(){
    	List<Notice> list=sqlSession.selectList("notice.noticelist");
    	return list;
    }
   
    
   
}
 

