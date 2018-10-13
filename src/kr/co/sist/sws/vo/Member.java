package kr.co.sist.sws.vo;



public class Member {

	String mNumber, mId, mName, mEmail, mDate, mStatus;

	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Member(String mNumber, String mId, String mName, String mEmail, String mDate, String mStatus) {
		super();
		this.mNumber = mNumber;
		this.mId = mId;
		this.mName = mName;
		this.mEmail = mEmail;
		this.mDate = mDate;
		this.mStatus = mStatus;
	}

	public String getmNumber() {
		return mNumber;
	}

	public String getmId() {
		return mId;
	}

	public String getmName() {
		return mName;
	}

	public String getmEmail() {
		return mEmail;
	}

	public String getmDate() {
		return mDate;
	}

	public String getmStatus() {
		return mStatus;
	}

	@Override
	public String toString() {
		return "Member [mNumber=" + mNumber + ", mId=" + mId + ", mName=" + mName + ", mEmail=" + mEmail + ", mDate="
				+ mDate + ", mStatus=" + mStatus + "]";
	}
	
	
	
	
	
}
