package com.kh.goosta.board.vo;

import java.sql.Date;

public class ReportVO implements java.io.Serializable{

	private int rn;
	private int boardno;
	private int boardtypeno;
	private String boardtitle;
	private String boardcontent;
	private String boardwriter;
	private Date boarddate;
	private int readcount;
	private int replyno;
	private String replycontent;
	private String replywrite;
	private Date replydate;
	private int replyreref;
	private int replyrelev;
	private int replyreseq;
	private String reportreason;
	private int replycount;
	
	public ReportVO(){}

	public ReportVO(int rn, int boardno, int boardtypeno, String boardtitle, String boardcontent, String boardwriter,
			Date boarddate, int readcount, int replyno, String replycontent, String replywrite, Date replydate,
			int replyreref, int replyrelev, int replyreseq, String reportreason, int replycount) {
		super();
		this.rn = rn;
		this.boardno = boardno;
		this.boardtypeno = boardtypeno;
		this.boardtitle = boardtitle;
		this.boardcontent = boardcontent;
		this.boardwriter = boardwriter;
		this.boarddate = boarddate;
		this.readcount = readcount;
		this.replyno = replyno;
		this.replycontent = replycontent;
		this.replywrite = replywrite;
		this.replydate = replydate;
		this.replyreref = replyreref;
		this.replyrelev = replyrelev;
		this.replyreseq = replyreseq;
		this.reportreason = reportreason;
		this.replycount = replycount;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public int getBoardtypeno() {
		return boardtypeno;
	}

	public void setBoardtypeno(int boardtypeno) {
		this.boardtypeno = boardtypeno;
	}

	public String getBoardtitle() {
		return boardtitle;
	}

	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}

	public String getBoardcontent() {
		return boardcontent;
	}

	public void setBoardcontent(String boardcontent) {
		this.boardcontent = boardcontent;
	}

	public String getBoardwriter() {
		return boardwriter;
	}

	public void setBoardwriter(String boardwriter) {
		this.boardwriter = boardwriter;
	}

	public Date getBoarddate() {
		return boarddate;
	}

	public void setBoarddate(Date boarddate) {
		this.boarddate = boarddate;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
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

	public String getReplywrite() {
		return replywrite;
	}

	public void setReplywrite(String replywrite) {
		this.replywrite = replywrite;
	}

	public Date getReplydate() {
		return replydate;
	}

	public void setReplydate(Date replydate) {
		this.replydate = replydate;
	}

	public int getReplyreref() {
		return replyreref;
	}

	public void setReplyreref(int replyreref) {
		this.replyreref = replyreref;
	}

	public int getReplyrelev() {
		return replyrelev;
	}

	public void setReplyrelev(int replyrelev) {
		this.replyrelev = replyrelev;
	}

	public int getReplyreseq() {
		return replyreseq;
	}

	public void setReplyreseq(int replyreseq) {
		this.replyreseq = replyreseq;
	}

	public String getReportreason() {
		return reportreason;
	}

	public void setReportreason(String reportreason) {
		this.reportreason = reportreason;
	}

	public int getReplycount() {
		return replycount;
	}

	public void setReplycount(int replycount) {
		this.replycount = replycount;
	}

	@Override
	public String toString() {
		return "ReportVO [rn=" + rn + ", boardno=" + boardno + ", boardtypeno=" + boardtypeno + ", boardtitle="
				+ boardtitle + ", boardcontent=" + boardcontent + ", boardwriter=" + boardwriter + ", boarddate="
				+ boarddate + ", readcount=" + readcount + ", replyno=" + replyno + ", replycontent=" + replycontent
				+ ", replywrite=" + replywrite + ", replydate=" + replydate + ", replyreref=" + replyreref
				+ ", replyrelev=" + replyrelev + ", replyreseq=" + replyreseq + ", reportreason=" + reportreason
				+ ", replycount=" + replycount + "]";
	}
	
	
	
	
	
	
}
