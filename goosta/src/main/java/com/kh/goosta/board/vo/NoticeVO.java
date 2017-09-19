package com.kh.goosta.board.vo;

import java.sql.Date;

public class NoticeVO implements java.io.Serializable{
	
	private int rn;
	private int boardno;
	private int boardtypeno;
	private String boardtitle;
	private String boardcontent;
	private String boardwriter;
	private Date boarddate;
	private int readcount;
	private String boardstatus;
	
	public NoticeVO(){}

	public NoticeVO(int rn, int boardno, int boardtypeno, String boardtitle, String boardcontent, String boardwriter,
			Date boarddate, int readcount, String boardstatus) {
		super();
		this.rn = rn;
		this.boardno = boardno;
		this.boardtypeno = boardtypeno;
		this.boardtitle = boardtitle;
		this.boardcontent = boardcontent;
		this.boardwriter = boardwriter;
		this.boarddate = boarddate;
		this.readcount = readcount;
		this.boardstatus = boardstatus;
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

	public String getBoardstatus() {
		return boardstatus;
	}

	public void setBoardstatus(String boardstatus) {
		this.boardstatus = boardstatus;
	}

	@Override
	public String toString() {
		return "NoticeVO [rn=" + rn + ", boardno=" + boardno + ", boardtypeno=" + boardtypeno + ", boardtitle="
				+ boardtitle + ", boardcontent=" + boardcontent + ", boardwriter=" + boardwriter + ", boarddate="
				+ boarddate + ", readcount=" + readcount + ", boardstatus=" + boardstatus + "]";
	};
	
	

}
