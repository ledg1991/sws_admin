package kr.co.sist.sws.dao;

import java.util.List;

import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Product;

public interface ProductDAO {
	
	public List<Product> productlist();
	public Product info(String pNum);
    
    // 02. ȸ�� �α׾ƿ�

}
