package kr.co.sist.sws.service;


import java.util.List;

import kr.co.sist.sws.vo.Product;

   

	public interface Productservice {
	    // 01_01. ȸ�� ��� �������� ȸ����ȣ, ȸ�� id, ȸ�� �̸�, ȸ�� �̸���, ���Գ�¥, ����
	    public List<Product> productlist();
	    public Product info(String pNum);
	 // 03. ��ǰ�߰�
	    public void regist(Product pv) ;
	    // 04. ��ǰ����
	    public void update(Product pv);
	    // 05. ��ǰ����
	    public void delete(String pNum);
	    
	    
	    
	}


