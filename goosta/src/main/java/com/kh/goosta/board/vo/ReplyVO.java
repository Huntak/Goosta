package com.kh.goosta.board.vo;

import java.sql.Date;

public class ReplyVO implements java.io.Serializable{
	
	private int replyno;
	private String replycontent;
	private String replywriter;
	private Date replydate;
	private int boardno;
	private int replyreref;
	private int replylev;
	private int replyreseq;
	
	public ReplyVO(){}

	public ReplyVO(int replyno, String replycontent, String replywriter, Date replydate, int boardno, int replyreref,
			int replylev, int replyreseq) {
		super();
		this.replyno = replyno;
		this.replycontent = replycontent;
		this.replywriter = replywriter;
		this.replydate = replydate;
		this.boardno = boardno;
		this.replyreref = replyreref;
		this.replylev = replylev;
		this.replyreseq = replyreseq;
	}

	public int getReplyno() {
		return replyno;
	}

	public void setReplyno(int replyno) {
		this.replyno = replyno;
	}

	public String getReplycontent() {
		return replycontent;
	}

	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}

	public String getReplywriter() {
		return replywriter;
	}

	public void setReplywriter(String replywriter) {
		this.replywriter = replywriter;
	}

	public Date getReplydate() {
		return replydate;
	}

	public void setReplydate(Date replydate) {
		this.replydate = replydate;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public int getReplyreref() {
		return replyreref;
	}

	public void setReplyreref(int replyreref) {
		this.replyreref = replyreref;
	}

	public int getReplylev() {
		return replylev;
	}

	public void setReplylev(int replylev) {
		this.replylev = replylev;
	}

	public int getReplyreseq() {
		return replyreseq;
	}

	public void setReplyreseq(int replyreseq) {
		this.replyreseq = replyreseq;
	}

	@Override
	public String toString() {
		return "ReplyVO [replyno=" + replyno + ", replycontent=" + replycontent + ", replywriter=" + replywriter
				+ ", replydate=" + replydate + ", boardno=" + boardno + ", replyreref=" + replyreref + ", replylev="
				+ replylev + ", replyreseq=" + replyreseq + "]";
	}
	
	
}
