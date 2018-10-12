package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Rental;
import kr.co.sist.sws.vo.Ticket;


@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class TicketDAOImpl implements TicketDAO {
    // SqlSession ��ü�� �����ο��� �����Ͽ� ����
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
	
    @Override
    public List<Ticket> ticketlist(){
    	List<Ticket> list=sqlSession.selectList("ticket.ticketlist");
    	return list;
    }
   
    
   
}
 

