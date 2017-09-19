package com.kh.goosta.boardimage.vo;

public class ShandImageVo {
	
	private int boardimageid;
	private String boardimage1;
	private String boardimage2;
	private String boardimage3;
	private String boardimage4;
	private String boardimage5;
	
	public ShandImageVo(){}

	public ShandImageVo(int boardimageid, String boardimage1, String boardimage2, String boardimage3,
			String boardimage4, String boardimage5) {
		super();
		this.boardimageid = boardimageid;
		this.boardimage1 = boardimage1;
		this.boardimage2 = boardimage2;
		this.boardimage3 = boardimage3;
		this.boardimage4 = boardimage4;
		this.boardimage5 = boardimage5;
	}

	public ShandImageVo(String boardimage1) {
		this.boardimage1 = boardimage1;
	}

	public ShandImageVo(String string, String string2) {
		// TODO Auto-generated constructor stub
	}

	public ShandImageVo(String string, String string2, String string3, String string4, String string5) {
		// TODO Auto-generated constructor stub
	}

	public ShandImageVo(String string, String string2, String string3, String string4) {
		// TODO Auto-generated constructor stub
	}

	public ShandImageVo(String string, String string2, String string3) {
		// TODO Auto-generated constructor stub
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
		return "BoardImageVo [boardimageid=" + boardimageid + ", boardimage1=" + boardimage1 + ", boardimage2="
				+ boardimage2 + ", boardimage3=" + boardimage3 + ", boardimage4=" + boardimage4 + ", boardimage5="
				+ boardimage5 + "]";
	}
	
	

}
