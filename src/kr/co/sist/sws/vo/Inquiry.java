package kr.co.sist.sws.vo;



public class Inquiry {

	String iType, iTitle, iDate, iCheck, mNumber, mId, iNumber, iContent;

	public Inquiry() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Inquiry(String iType, String iTitle, String iDate, String iCheck, String mNumber, String mId, String iNumber,
			String iContent) {
		super();
		this.iType = iType;
		this.iTitle = iTitle;
		this.iDate = iDate;
		this.iCheck = iCheck;
		this.mNumber = mNumber;
		this.mId = mId;
		this.iNumber = iNumber;
		this.iContent = iContent;
	}

	public String getiType() {
		return iType;
	}

	public void setiType(String iType) {
		this.iType = iType;
	}

	public String getiTitle() {
		return iTitle;
	}

	public void setiTitle(String iTitle) {
		this.iTitle = iTitle;
	}

	public String getiDate() {
		return iDate;
	}

	public void setiDate(String iDate) {
		this.iDate = iDate;
	}

	public String getiCheck() {
		return iCheck;
	}

	public void setiCheck(String iCheck) {
		this.iCheck = iCheck;
	}

	public String getmNumber() {
		return mNumber;
	}

	public void setmNumber(String mNumber) {
		this.mNumber = mNumber;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getiNumber() {
		return iNumber;
	}

	public void setiNumber(String iNumber) {
		this.iNumber = iNumber;
	}

	public String getiContent() {
		return iContent;
	}

	public void setiContent(String iContent) {
		this.iContent = iContent;
	}

	@Override
	public String toString() {
		return "Inquiry [iType=" + iType + ", iTitle=" + iTitle + ", iDate=" + iDate + ", iCheck=" + iCheck
				+ ", mNumber=" + mNumber + ", mId=" + mId + ", iNumber=" + iNumber + ", iContent=" + iContent + "]";
	}
	

	
	
	

	
	
}
