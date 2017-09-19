package com.kh.goosta.question.vo;

import java.io.Serializable;
import java.sql.Date;

public class QuestionVo implements Serializable {
	
	private int questionno;
	private String questiontype;
	private String memberid;
	private String questiontitle;
	private String questioncontent;
	private String questionemail;
	private Date questiondate;
	private String questionstatus;
	
	public QuestionVo(){}

	public QuestionVo(int questionno, String questiontype, String memberid, String questiontitle,
			String questioncontent, String questionemail, Date questiondate, String questionstatus) {
		super();
		this.questionno = questionno;
		this.questiontype = questiontype;
		this.memberid = memberid;
		this.questiontitle = questiontitle;
		this.questioncontent = questioncontent;
		this.questionemail = questionemail;
		this.questiondate = questiondate;
		this.questionstatus = questionstatus;
	}
	

	public QuestionVo(String questiontype, String memberid, String questiontitle, String questioncontent,
			String questionemail) {
		super();
		this.questiontype = questiontype;
		this.memberid = memberid;
		this.questiontitle = questiontitle;
		this.questioncontent = questioncontent;
		this.questionemail = questionemail;
	}

	public int getQuestionno() {
		return questionno;
	}

	public void setQuestionno(int questionno) {
		this.questionno = questionno;
	}

	public String getQuestiontype() {
		return questiontype;
	}

	public void setQuestiontype(String questiontype) {
		this.questiontype = questiontype;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getQuestiontitle() {
		return questiontitle;
	}

	public void setQuestiontitle(String questiontitle) {
		this.questiontitle = questiontitle;
	}

	public String getQuestioncontent() {
		return questioncontent;
	}

	public void setQuestioncontent(String questioncontent) {
		this.questioncontent = questioncontent;
	}

	public String getQuestionemail() {
		return questionemail;
	}

	public void setQuestionemail(String questionemail) {
		this.questionemail = questionemail;
	}

	public Date getQuestiondate() {
		return questiondate;
	}

	public void setQuestiondate(Date questiondate) {
		this.questiondate = questiondate;
	}

	public String getQuestionstatus() {
		return questionstatus;
	}

	public void setQuestionstatus(String questionstatus) {
		this.questionstatus = questionstatus;
	}

	@Override
	public String toString() {
		return "QuestionVo [questionno=" + questionno + ", questiontype=" + questiontype + ", memberid=" + memberid
				+ ", questiontitle=" + questiontitle + ", questioncontent=" + questioncontent + ", questionemail="
				+ questionemail + ", questiondate=" + questiondate + ", questionstatus=" + questionstatus + "]";
	}
	
	

}
