package com.kh.goosta.board.vo;

import java.sql.Date;

public class SReviewVO {
	
	private int rn;
	private int boardno;
	private int boardtypeno;
	private String boardtitle;
	private String boardcontent;
	private String boardwriter;
	private Date boarddate;
	private int readcount;
	private int boardreref;
	private int boardrelev;
	private int boardreseq;
	private String boardstatus;
	private String boardprefix;
	private int boardimageid;
	private double starquantity;
	private double reviewsize;
	private double reviewfoot;
	private double reviewcolor;
	private double reviewdeliver;
	private int replyno;
	private String replycontent;
	private String replywrite;
	private Date replydate;
	private int replyreref;
	private int replyrelev;
	private int replyreseq;
	private String reportreason;
	private int replycount;
	private int productid;
	private String productname;
	private int productsize;
	private String productimagemain;
	
	public SReviewVO(){}

	public SReviewVO(int rn, int boardno, int boardtypeno, String boardtitle, String boardcontent, String boardwriter, Date boarddate, int readcount, int boardreref, int boardrelev, int boardreseq, String boardstatus, String boardprefix, int boardimageid, double starquantity, double reviewsize, double reviewfoot, double reviewcolor, double reviewdeliver, int replyno, String replycontent, String replywrite, Date replydate, int replyreref, int replyrelev, int replyreseq, String reportreason, int replycount, int productid, String productname, int productsize, String productimagemain) {
		super();
		this.rn = rn;
		this.boardno = boardno;
		this.boardtypeno = boardtypeno;
		this.boardtitle = boardtitle;
		this.boardcontent = boardcontent;
		this.boardwriter = boardwriter;
		this.boarddate = boarddate;
		this.readcount = readcount;
		this.boardreref = boardreref;
		this.boardrelev = boardrelev;
		this.boardreseq = boardreseq;
		this.boardstatus = boardstatus;
		this.boardprefix = boardprefix;
		this.boardimageid = boardimageid;
		this.starquantity = starquantity;
		this.reviewsize = reviewsize;
		this.reviewfoot = reviewfoot;
		this.reviewcolor = reviewcolor;
		this.reviewdeliver = reviewdeliver;
		this.replyno = replyno;
		this.replycontent = replycontent;
		this.replywrite = replywrite;
		this.replydate = replydate;
		this.replyreref = replyreref;
		this.replyrelev = replyrelev;
		this.replyreseq = replyreseq;
		this.reportreason = reportreason;
		this.replycount = replycount;
		this.productid = productid;
		this.productname = productname;
		this.productsize = productsize;
		this.productimagemain = productimagemain;
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

	public int getBoardreref() {
		return boardreref;
	}

	public void setBoardreref(int boardreref) {
		this.boardreref = boardreref;
	}

	public int getBoardrelev() {
		return boardrelev;
	}

	public void setBoardrelev(int boardrelev) {
		this.boardrelev = boardrelev;
	}

	public int getBoardreseq() {
		return boardreseq;
	}

	public void setBoardreseq(int boardreseq) {
		this.boardreseq = boardreseq;
	}

	public String getBoardstatus() {
		return boardstatus;
	}

	public void setBoardstatus(String boardstatus) {
		this.boardstatus = boardstatus;
	}

	public String getBoardprefix() {
		return boardprefix;
	}

	public void setBoardprefix(String boardprefix) {
		this.boardprefix = boardprefix;
	}

	public int getBoardimageid() {
		return boardimageid;
	}

	public void setBoardimageid(int boardimageid) {
		this.boardimageid = boardimageid;
	}

	public double getStarquantity() {
		return starquantity;
	}

	public void setStarquantity(double starquantity) {
		this.starquantity = starquantity;
	}

	public double getReviewsize() {
		return reviewsize;
	}

	public void setReviewsize(double reviewsize) {
		this.reviewsize = reviewsize;
	}

	public double getReviewfoot() {
		return reviewfoot;
	}

	public void setReviewfoot(double reviewfoot) {
		this.reviewfoot = reviewfoot;
	}

	public double getReviewcolor() {
		return reviewcolor;
	}

	public void setReviewcolor(double reviewcolor) {
		this.reviewcolor = reviewcolor;
	}

	public double getReviewdeliver() {
		return reviewdeliver;
	}

	public void setReviewdeliver(double reviewdeliver) {
		this.reviewdeliver = reviewdeliver;
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

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getProductsize() {
		return productsize;
	}

	public void setProductsize(int productsize) {
		this.productsize = productsize;
	}

	public String getProductimagemain() {
		return productimagemain;
	}

	public void setProductimagemain(String productimagemain) {
		this.productimagemain = productimagemain;
	}

	@Override
	public String toString() {
		return "SReviewVO [rn=" + rn + ", boardno=" + boardno + ", boardtypeno=" + boardtypeno + ", boardtitle=" + boardtitle + ", boardcontent=" + boardcontent + ", boardwriter=" + boardwriter + ", boarddate=" + boarddate + ", readcount=" + readcount + ", boardreref=" + boardreref + ", boardrelev=" + boardrelev + ", boardreseq=" + boardreseq + ", boardstatus=" + boardstatus + ", boardprefix=" + boardprefix + ", boardimageid=" + boardimageid + ", starquantity=" + starquantity + ", reviewsize=" + reviewsize + ", reviewfoot=" + reviewfoot + ", reviewcolor=" + reviewcolor + ", reviewdeliver=" + reviewdeliver + ", replyno=" + replyno + ", replycontent=" + replycontent + ", replywrite=" + replywrite + ", replydate=" + replydate + ", replyreref=" + replyreref + ", replyrelev=" + replyrelev + ", replyreseq=" + replyreseq + ", reportreason=" + reportreason + ", replycount=" + replycount + ", productid=" + productid + ", productname=" + productname + ", productsize=" + productsize
				+ ", productimagemain=" + productimagemain + "]";
	}

	
}
