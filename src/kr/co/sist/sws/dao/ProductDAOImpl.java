package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Product;


@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class ProductDAOImpl implements ProductDAO {
    // SqlSession ��ü�� �����ο��� �����Ͽ� ����
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
	
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
 

