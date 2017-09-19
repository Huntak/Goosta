package com.kh.goosta.board.vo;

import java.io.Serializable;
import java.sql.Date;

public class ShopNoticeVo implements Serializable {
	
	private int boardno;
	private int boardtypeno;
	private String boardtitle;
	private String boardcontent;
	private String boardwriter;
	private Date boarddate;
	private int readcount;
	private String boardstatus;
	private String boardimage1;
	
	public ShopNoticeVo(){}

	

	public ShopNoticeVo(int boardno, int boardtypeno, String boardtitle, String boardcontent, String boardwriter,
			Date boarddate, int readcount, String boardstatus, String boardimage1) {
		super();
		this.boardno = boardno;
		this.boardtypeno = boardtypeno;
		this.boardtitle = boardtitle;
		this.boardcontent = boardcontent;
		this.boardwriter = boardwriter;
		this.boarddate = boarddate;
		this.readcount = readcount;
		this.boardstatus = boardstatus;
		this.boardimage1 = boardimage1;
	}

	


	public String getBoardimage1() {
		return boardimage1;
	}



	public void setBoardimage1(String boardimage1) {
		this.boardimage1 = boardimage1;
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
		return "ShopNoticeVo [boardno=" + boardno + ", boardtypeno=" + boardtypeno + ", boardtitle=" + boardtitle
				+ ", boardcontent=" + boardcontent + ", boardwriter=" + boardwriter + ", boarddate=" + boarddate
				+ ", readcount=" + readcount + ", boardstatus=" + boardstatus + ", boardimage1=" + boardimage1 + "]";
	}

	
}
