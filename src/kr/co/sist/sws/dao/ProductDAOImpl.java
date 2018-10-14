package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Product;


@Component// 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class ProductDAOImpl implements ProductDAO {
    // SqlSession 객체를 스프핑에서 생성하여 주입
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis 실행 객체
	
    @Override
    public List<Product> productlist(){
    	List<Product> list=sqlSession.selectList("product.productlist");
    	return list;
    }

	@Override
	public Product info(String pNum) {
		return sqlSession.selectOne("product.product",pNum);
	}

	@Override
	public void regist(Product pv) {
		sqlSession.insert("product.registProduct", pv);
		
	}

	@Override
	public void update(Product pv) {
		sqlSession.insert("product.insert", pv);
		
	}

	@Override
	public void delete(String pNum) {
		sqlSession.delete("product.delete", pNum);
		
	}
   
    
   
}
 

