package kr.co.sist.sws.vo;



public class Inquiry {

	String lType, lTitle, lDate, lCheck,mNumber,mId;

	public Inquiry(String lType, String lTitle, String lDate, String lCheck, String mNumber, String mId) {
		super();
		this.lType = lType;
		this.lTitle = lTitle;
		this.lDate = lDate;
		this.lCheck = lCheck;
		this.mNumber = mNumber;
		this.mId = mId;
	}

	public String getlType() {
		return lType;
	}

	public String getlTitle() {
		return lTitle;
	}

	public String getlDate() {
		return lDate;
	}

	public String getlCheck() {
		return lCheck;
	}

	public String getmNumber() {
		return mNumber;
	}

	public String getmId() {
		return mId;
	}

	@Override
	public String toString() {
		return "Inquiry [lType=" + lType + ", lTitle=" + lTitle + ", lDate=" + lDate + ", lCheck=" + lCheck
				+ ", mNumber=" + mNumber + ", mId=" + mId + "]";
	}
	
	
	

	
	
}
