package kr.co.sist.sws.vo;



public class Product {

	String pNum,pCat,pBrand,pImg,pImg2,pImg3,pImg4,pName,pDate;
	int pCount, pPrice, pRfee;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String pNum, String pCat, String pBrand, String pImg, String pImg2, String pImg3, String pImg4,
			String pName, String pDate, int pCount, int pPrice, int pRfee) {
		super();
		this.pNum = pNum;
		this.pCat = pCat;
		this.pBrand = pBrand;
		this.pImg = pImg;
		this.pImg2 = pImg2;
		this.pImg3 = pImg3;
		this.pImg4 = pImg4;
		this.pName = pName;
		this.pDate = pDate;
		this.pCount = pCount;
		this.pPrice = pPrice;
		this.pRfee = pRfee;
	}
	public String getpNum() {
		return pNum;
	}
	public void setpNum(String pNum) {
		this.pNum = pNum;
	}
	public String getpCat() {
		return pCat;
	}
	public void setpCat(String pCat) {
		this.pCat = pCat;
	}
	public String getpBrand() {
		return pBrand;
	}
	public void setpBrand(String pBrand) {
		this.pBrand = pBrand;
	}
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	public String getpImg2() {
		return pImg2;
	}
	public void setpImg2(String pImg2) {
		this.pImg2 = pImg2;
	}
	public String getpImg3() {
		return pImg3;
	}
	public void setpImg3(String pImg3) {
		this.pImg3 = pImg3;
	}
	public String getpImg4() {
		return pImg4;
	}
	public void setpImg4(String pImg4) {
		this.pImg4 = pImg4;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpDate() {
		return pDate;
	}
	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
	public int getpCount() {
		return pCount;
	}
	public void setpCount(int pCount) {
		this.pCount = pCount;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public int getpRfee() {
		return pRfee;
	}
	public void setpRfee(int pRfee) {
		this.pRfee = pRfee;
	}
	@Override
	public String toString() {
		return "Product [pNum=" + pNum + ", pCat=" + pCat + ", pBrand=" + pBrand + ", pImg=" + pImg + ", pImg2=" + pImg2
				+ ", pImg3=" + pImg3 + ", pImg4=" + pImg4 + ", pName=" + pName + ", pDate=" + pDate + ", pCount="
				+ pCount + ", pPrice=" + pPrice + ", pRfee=" + pRfee + "]";
	}
	
	
	
	
	
	
	
	

	
	
}
