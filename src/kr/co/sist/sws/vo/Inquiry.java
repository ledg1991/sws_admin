package kr.co.sist.sws.vo;



public class Inquiry {

	String iType, iTitle, iDate, iCheck, mNumber,mId;

	public Inquiry(String iType, String iTitle, String iDate, String iCheck, String mNumber, String mId) {
		super();
		this.iType = iType;
		this.iTitle = iTitle;
		this.iDate = iDate;
		this.iCheck = iCheck;
		this.mNumber = mNumber;
		this.mId = mId;
	}

	public String getiType() {
		return iType;
	}

	public String getiTitle() {
		return iTitle;
	}

	public String getiDate() {
		return iDate;
	}

	public String getiCheck() {
		return iCheck;
	}

	public String getmNumber() {
		return mNumber;
	}

	public String getmId() {
		return mId;
	}

	@Override
	public String toString() {
		return "Inquiry [iType=" + iType + ", iTitle=" + iTitle + ", iDate=" + iDate + ", iCheck=" + iCheck
				+ ", mNumber=" + mNumber + ", mId=" + mId + "]";
	}

	
	
	
	
	

	
	
}
