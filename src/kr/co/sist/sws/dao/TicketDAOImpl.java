package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Rental;
import kr.co.sist.sws.vo.Ticket;


@Component// 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class TicketDAOImpl implements TicketDAO {
    // SqlSession 객체를 스프핑에서 생성하여 주입
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis 실행 객체
	
    @Override
    public List<Ticket> ticketlist(){
    	List<Ticket> list=sqlSession.selectList("ticket.ticketlist");
    	return list;
    }
   
    
   
}
 

