package kr.co.sist.sws.dao;

import java.util.List;

import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Product;

public interface ProductDAO {
	
	public List<Product> productlist();
	public Product info(String pNum);
	// 03. 상품추가
    public void regist(Product pv) ;
    // 04. 상품수정
    public void update(Product pv);
    // 05. 상품삭제
    public void delete(String pNum);
    
    // 02. 회원 로그아웃

}
