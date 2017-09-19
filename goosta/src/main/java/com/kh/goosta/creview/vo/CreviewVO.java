package com.kh.goosta.creview.vo;

import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("serial")
public class CreviewVO implements Serializable{
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
	private String boardimage1;
	
	public CreviewVO(){}

	public CreviewVO(int boardno, int boardtypeno, String boardtitle, String boardcontent, String boardwriter,
			Date boarddate, int readcount, int boardreref, int boardrelev, int boardreseq, String boardstatus,
			String boardprefix, int boardimageid, String boardimage1) {
		super();
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
		this.boardimage1 = boardimage1;
	}
	
	public CreviewVO(int boardno, int boardtypeno, String boardtitle, String boardcontent, String boardwriter,
			Date boarddate, int readcount, int boardreref, int boardrelev, int boardreseq, String boardstatus,
			String boardprefix, int boardimageid) {
		super();
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

	public String getBoardimage1() {
		return boardimage1;
	}

	public void setBoardimage1(String boardimage1) {
		this.boardimage1 = boardimage1;
	}

	@Override
	public String toString() {
		return "CreviewVO [boardno=" + boardno + ", boardtypeno=" + boardtypeno + ", boardtitle=" + boardtitle
				+ ", boardcontent=" + boardcontent + ", boardwriter=" + boardwriter + ", boarddate=" + boarddate
				+ ", readcount=" + readcount + ", boardreref=" + boardreref + ", boardrelev=" + boardrelev
				+ ", boardreseq=" + boardreseq + ", boardstatus=" + boardstatus + ", boardprefix=" + boardprefix
				+ ", boardimageid=" + boardimageid + ", boardimage1=" + boardimage1 + "]";
	}

}
