package kr.co.sist.sws.vo;



public class Product {

	String pImg,pName;
	int pCount,pPrice;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String pImg, String pName, int pCount, int pPrice) {
		super();
		this.pImg = pImg;
		this.pName = pName;
		this.pCount = pCount;
		this.pPrice = pPrice;
	}
	public String getpImg() {
		return pImg;
	}
	public String getpName() {
		return pName;
	}
	public int getpCount() {
		return pCount;
	}
	public int getpPrice() {
		return pPrice;
	}
	@Override
	public String toString() {
		return "Product [pImg=" + pImg + ", pName=" + pName + ", pCount=" + pCount + ", pPrice=" + pPrice + "]";
	}
	
	
	
	
	
	
	

	
	
}
