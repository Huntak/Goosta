package com.kh.goosta.board.vo;

import java.io.Serializable;
import java.sql.Date;

public class ShandVo implements Serializable {
	
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
	private String shandsalestatus;
	private String shandbrand;
	private int shandprice;
	private int boardimageid;
	private String boardimage1;
	private String boardimage2;
	private String boardimage3;
	private String boardimage4;
	private String boardimage5;
	
	public ShandVo(){}

	public ShandVo(int boardno, int boardtypeno, String boardtitle, String boardcontent, String boardwriter,
			Date boarddate, int readcount, int boardreref, int boardrelev, int boardreseq, String boardstatus,
			String boardprefix, String shandsalestatus, String shandbrand, int shandprice,
			int boardimageid, String boardimage1, String boardimage2, String boardimage3, String boardimage4,
			String boardimage5) {
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
		this.shandsalestatus = shandsalestatus;
		this.shandbrand = shandbrand;
		this.shandprice = shandprice;
		this.boardimageid = boardimageid;
		this.boardimage1 = boardimage1;
		this.boardimage2 = boardimage2;
		this.boardimage3 = boardimage3;
		this.boardimage4 = boardimage4;
		this.boardimage5 = boardimage5;
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

	public String getShandsalestatus() {
		return shandsalestatus;
	}

	public void setShandsalestatus(String shandsalestatus) {
		this.shandsalestatus = shandsalestatus;
	}

	public String getShandbrand() {
		return shandbrand;
	}

	public void setShandbrand(String shandbrand) {
		this.shandbrand = shandbrand;
	}

	public int getShandprice() {
		return shandprice;
	}

	public void setShandprice(int shandprice) {
		this.shandprice = shandprice;
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

	public String getBoardimage2() {
		return boardimage2;
	}

	public void setBoardimage2(String boardimage2) {
		this.boardimage2 = boardimage2;
	}

	public String getBoardimage3() {
		return boardimage3;
	}

	public void setBoardimage3(String boardimage3) {
		this.boardimage3 = boardimage3;
	}

	public String getBoardimage4() {
		return boardimage4;
	}

	public void setBoardimage4(String boardimage4) {
		this.boardimage4 = boardimage4;
	}

	public String getBoardimage5() {
		return boardimage5;
	}

	public void setBoardimage5(String boardimage5) {
		this.boardimage5 = boardimage5;
	}

	@Override
	public String toString() {
		return "ShandVo [boardno=" + boardno + ", boardtypeno=" + boardtypeno + ", boardtitle=" + boardtitle
				+ ", boardcontent=" + boardcontent + ", boardwriter=" + boardwriter + ", boarddate=" + boarddate
				+ ", readcount=" + readcount + ", boardreref=" + boardreref + ", boardrelev=" + boardrelev
				+ ", boardreseq=" + boardreseq + ", boardstatus=" + boardstatus + ", boardprefix=" + boardprefix
				+", shandsalestatus=" + shandsalestatus + ", shandbrand=" + shandbrand
				+ ", shandprice=" + shandprice + ", boardimageid=" + boardimageid + ", boardimage1=" + boardimage1
				+ ", boardimage2=" + boardimage2 + ", boardimage3=" + boardimage3 + ", boardimage4=" + boardimage4
				+ ", boardimage5=" + boardimage5 + "]";
	}
	
	


	

}
