package com.kh.goosta.board.vo;

import java.sql.Date;

public class FreeBoard implements java.io.Serializable{
	
	private int boardno;		//게시판 번호
	private int boardtypeno;	//게시판구분
	private String boardtitle;	//제목
	private String boardcontent;	//내용
	private String boardwriter;	//작성자
	private Date boarddate;	//등록날짜
	private int readcount;	//조회수
	private int boardreref;	//원글번호
	private int boardrelev;	//게시글레벨
	private int boardreseq;	//덧글순번
	private String boardstatus;	//게시글상태
	private String boardprefix;	//말머리
	private int boardimageid;	//이미지ID
	private int rn;

	public FreeBoard(){}
	
	public FreeBoard(int boardno, int boardtypeno, String boardtitle, String boardcontent, String boardwriter,
		Date boarddate, int readcount, int boardreref, int boardrelev, int boardreseq, String boardstatus, String boardprefix, int boardimageid, int rn) {
	super();
	this.boardno = boardno;
	this.boardtypeno = boardtypeno;
	this.boardtitle = boardtitle;
	this.boardcontent = boardcontent;
	this.boardwriter = boardwriter;
	this.boarddate = boarddate;
	this.readcount = readcount;
	this.boardreref = boardreref;
	this.boardreseq = boardreseq;
	this.boardstatus= boardstatus;
	this.boardprefix = boardprefix;
	this.boardimageid= boardimageid;
	this.rn= rn;
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

	@Override
	public String toString() {
		return this.boardno + ", " + this.boardtypeno + ", " + this.boardtitle + ", " + this.boardcontent + ", " + this.boardwriter + ", " + this.boarddate + ", " + this.readcount + ", " + this.boardreref + ", " + this.boardrelev + ", " + this.boardreseq + ", " + this.boardstatus + ", " + this.boardprefix + ", " + this.boardimageid;
	}

	public Object getSubject() {
		// TODO Auto-generated method stub
		return null;
	}

	
	}
	
	

	
	
	
	
	
	

