package com.kh.goosta.faq.vo;

import java.io.Serializable;
import java.sql.Date;

public class FaqVo implements Serializable {
	
	private int fid;
	private String ftitle;
	private String fcontent;
	private String answertype;
	private Date fdate;
	private int fcount;
	
	public FaqVo(){}

	public FaqVo(int fid, String ftitle, String fcontent, String answertype, Date fdate, int fcount) {
		super();
		this.fid = fid;
		this.ftitle = ftitle;
		this.fcontent = fcontent;
		this.answertype = answertype;
		this.fdate = fdate;
		this.fcount = fcount;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getFtitle() {
		return ftitle;
	}

	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}

	public String getFcontent() {
		return fcontent;
	}

	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}

	public String getAnswertype() {
		return answertype;
	}

	public void setAnswertype(String answertype) {
		this.answertype = answertype;
	}

	public Date getFdate() {
		return fdate;
	}

	public void setFdate(Date fdate) {
		this.fdate = fdate;
	}

	public int getFcount() {
		return fcount;
	}

	public void setFcount(int fcount) {
		this.fcount = fcount;
	}

	@Override
	public String toString() {
		return "FaqVo [fid=" + fid + ", ftitle=" + ftitle + ", fcontent=" + fcontent + ", answertype=" + answertype
				+ ", fdate=" + fdate + ", fcount=" + fcount + "]";
	}

	
	
	
}
