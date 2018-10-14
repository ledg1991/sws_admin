package kr.co.sist.sws.vo;



public class Member {

	String mNumber, mId, mName, mEmail, mDate, mStatus,mBirth,mMarriage,mGender,mPhone,mZipcode,mAddress;

	public Member(String mNumber, String mId, String mName, String mEmail, String mDate, String mStatus, String mBirth,
			String mMarriage, String mGender, String mPhone, String mZipcode, String mAddress) {
		super();
		this.mNumber = mNumber;
		this.mId = mId;
		this.mName = mName;
		this.mEmail = mEmail;
		this.mDate = mDate;
		this.mStatus = mStatus;
		this.mBirth = mBirth;
		this.mMarriage = mMarriage;
		this.mGender = mGender;
		this.mPhone = mPhone;
		this.mZipcode = mZipcode;
		this.mAddress = mAddress;
	}

	public Member() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getmBirth() {
		return mBirth;
	}

	public String getmMarriage() {
		return mMarriage;
	}

	public String getmGender() {
		return mGender;
	}

	public String getmPhone() {
		return mPhone;
	}

	public String getmZipcode() {
		return mZipcode;
	}

	public String getmAddress() {
		return mAddress;
	}

	@Override
	public String toString() {
		return "Member [mNumber=" + mNumber + ", mId=" + mId + ", mName=" + mName + ", mEmail=" + mEmail + ", mDate="
				+ mDate + ", mStatus=" + mStatus + ", mBirth=" + mBirth + ", mMarriage=" + mMarriage + ", mGender="
				+ mGender + ", mPhone=" + mPhone + ", mZipcode=" + mZipcode + ", mAddress=" + mAddress + "]";
	}
	

	
	
	
	
}
