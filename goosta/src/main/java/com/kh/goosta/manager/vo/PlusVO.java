package com.kh.goosta.manager.vo;

import java.io.Serializable;
import java.sql.Date;

public class PlusVO implements Serializable {
	private int plusno;
	private int productid;
	private int plusquantity;
	private int plustotal;
	private int plusprice;
	private Date plusdate;
	
	private PlusVO(){}

	public PlusVO(int plusno, int productid, int plusquantity, int plustotal, int plusprice, Date plusdate) {
		super();
		this.plusno = plusno;
		this.productid = productid;
		this.plusquantity = plusquantity;
		this.plustotal = plustotal;
		this.plusprice = plusprice;
		this.plusdate = plusdate;
	}

	public int getPlusno() {
		return plusno;
	}

	public void setPlusno(int plusno) {
		this.plusno = plusno;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public int getPlusquantity() {
		return plusquantity;
	}

	public void setPlusquantity(int plusquantity) {
		this.plusquantity = plusquantity;
	}

	public int getPlustotal() {
		return plustotal;
	}

	public void setPlustotal(int plustotal) {
		this.plustotal = plustotal;
	}

	public int getPlusprice() {
		return plusprice;
	}

	public void setPlusprice(int plusprice) {
		this.plusprice = plusprice;
	}

	public Date getPlusdate() {
		return plusdate;
	}

	public void setPlusdate(Date plusdate) {
		this.plusdate = plusdate;
	}

	@Override
	public String toString() {
		return "PlusVO [plusno=" + plusno + ", productid=" + productid + ", plusquantity=" + plusquantity
				+ ", plustotal=" + plustotal + ", plusprice=" + plusprice + ", plusdate=" + plusdate + "]";
	}
	
	
}
