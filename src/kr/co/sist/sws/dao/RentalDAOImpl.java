package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Rental;


@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class RentalDAOImpl implements RentalDAO {
    // SqlSession ��ü�� �����ο��� �����Ͽ� ����
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
	
    @Override
    public List<Rental> rentallist(){
    	List<Rental> list=sqlSession.selectList("rental.rentallist");
    	return list;
    }
   
    
   
}
 

