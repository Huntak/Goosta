package com.kh.goosta.mileage.vo;

import java.sql.Date;

public class MileageVo {

	private int mileageid;
	private String memberid;
	private int mileageplus;
	private int mileageminus;
	private Date mileagedate;
	
	public MileageVo(){}

	public MileageVo(int mileageid,String memberid, int mileageplus, int mileageminus, Date mileagedate) {
		super();
		this.mileageid = mileageid;
		this.memberid = memberid;
		this.mileageplus = mileageplus;
		this.mileageminus = mileageminus;
		this.mileagedate = mileagedate;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getMileageid() {
		return mileageid;
	}

	public void setMileageid(int mileageid) {
		this.mileageid = mileageid;
	}

	public int getMileageplus() {
		return mileageplus;
	}

	public void setMileageplus(int mileageplus) {
		this.mileageplus = mileageplus;
	}

	public int getMileageminus() {
		return mileageminus;
	}

	public void setMileageminus(int mileageminus) {
		this.mileageminus = mileageminus;
	}

	public Date getMileagedate() {
		return mileagedate;
	}

	public void setMileagedate(Date mileagedate) {
		this.mileagedate = mileagedate;
	}

	@Override
	public String toString() {
		return "MileageVo [mileageid=" + mileageid + ", memberid= " +memberid + ", mileageplus=" + mileageplus + ", mileageminus=" + mileageminus
				+ ", mileagedate=" + mileagedate + "]";
	}
	
	
}
