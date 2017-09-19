package com.kh.goosta.orderandpay.vo;

import java.sql.Date;

public class OrderAndPayVo implements java.io.Serializable{
	
	public OrderAndPayVo(){}
	
	private int orderlistid;
	private String memberid;
	private int productid;
	private String productname;
	private int productsize;
	private String orderlistname;
	private String productimagemain;
	private int orderstatusnumber;
	private String orderstatusstatus;
	private Date orderlistdate;
	private int orderlistquantity;
	private int orderlistnumber;
	private String orderlistzipcode1;
	private String orderlistzipcode2;
	private String orderlistaddress1;
	private String orderlistaddress2;
	private String orderlistphone1;
	private String orderlistphone2;
	private int orderlisttotalprice;
	private String orderguest;
	private String orderemail;
	private String ordermessage;
	
	
	
	public OrderAndPayVo(int orderlistid, String memberid, int productid, String productname,String orderlistname,
			int orderstatusnumber, Date orderlistdate, int orderlistquantity, int orderlistnumber,
			String orderlistzipcode1, String orderlistzipcode2, String orderlistaddress1, String orderlistaddress2,
			String orderlistphone1, String orderlistphone2, int orderlisttotalprice, String orderemail,
			String orderguest, String ordermessage) {
		super();
		this.orderlistid = orderlistid;
		this.memberid = memberid;
		this.productid = productid;
		this.productname = productname;
		this.orderlistname = orderlistname;
		this.orderstatusnumber = orderstatusnumber;
		this.orderlistdate = orderlistdate;
		this.orderlistquantity = orderlistquantity;
		this.orderlistnumber = orderlistnumber;
		this.orderlistzipcode1 = orderlistzipcode1;
		this.orderlistzipcode2 = orderlistzipcode2;
		this.orderlistaddress1 = orderlistaddress1;
		this.orderlistaddress2 = orderlistaddress2;
		this.orderlistphone1 = orderlistphone1;
		this.orderlistphone2 = orderlistphone2;
		this.orderlisttotalprice = orderlisttotalprice;
		this.orderguest = orderguest;
		this.orderemail = orderemail;
		this.ordermessage = ordermessage;
	}
	
	
	public String getOrderlistname() {
		return orderlistname;
	}


	public void setOrderlistname(String orderlistname) {
		this.orderlistname = orderlistname;
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
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public OrderAndPayVo(String memberid, int orderlistnumber, String orderlistzipcode1,
			String orderlistzipcode2, String orderlistaddress1, String orderlistaddress2, String orderlistphone1,
			String orderlistphone2,String orderemail,String ordermessage) {
		super();
		this.memberid = memberid;
		this.orderlistnumber = orderlistnumber;
		this.orderlistzipcode1 = orderlistzipcode1;
		this.orderlistzipcode2 = orderlistzipcode2;
		this.orderlistaddress1 = orderlistaddress1;
		this.orderlistaddress2 = orderlistaddress2;
		this.orderlistphone1 = orderlistphone1;
		this.orderlistphone2 = orderlistphone2;
		this.orderemail = orderemail;
		this.ordermessage = ordermessage;
	}





	public OrderAndPayVo(int orderlistid, String memberid, int productid, String productname, int productsize,
			String productimagemain, int orderstatusnumber, String orderstatusstatus, Date orderlistdate, int orderlistquantity,
			int orderlistnumber, String orderlistzipcode1, String orderlistzipcode2, String orderlistaddress1,
			String orderlistaddress2, String orderlistphone1, String orderlistphone2, int orderlisttotalprice,
			String orderguest, String orderemail, String ordermessage) {
		super();
		this.orderlistid = orderlistid;
		this.memberid = memberid;
		this.productid = productid;
		this.productname = productname;
		this.productsize = productsize;
		this.productimagemain = productimagemain;
		this.orderstatusnumber = orderstatusnumber;
		this.orderstatusstatus = orderstatusstatus;
		this.orderlistdate = orderlistdate;
		this.orderlistquantity = orderlistquantity;
		this.orderlistnumber = orderlistnumber;
		this.orderlistzipcode1 = orderlistzipcode1;
		this.orderlistzipcode2 = orderlistzipcode2;
		this.orderlistaddress1 = orderlistaddress1;
		this.orderlistaddress2 = orderlistaddress2;
		this.orderlistphone1 = orderlistphone1;
		this.orderlistphone2 = orderlistphone2;
		this.orderlisttotalprice = orderlisttotalprice;
		this.orderguest = orderguest;
		this.orderemail = orderemail;
		this.ordermessage = ordermessage;
	}


	public int getOrderlistid() {
		return orderlistid;
	}





	public String getOrderstatusstatus() {
		return orderstatusstatus;
	}


	public void setOrderstatusstatus(String orderstatusstatus) {
		this.orderstatusstatus = orderstatusstatus;
	}


	public void setOrderlistid(int orderlistid) {
		this.orderlistid = orderlistid;
	}


	public String getMemberid() {
		return memberid;
	}





	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}





	public int getProductid() {
		return productid;
	}





	public void setProductid(int productid) {
		this.productid = productid;
	}





	public int getOrderstatusnumber() {
		return orderstatusnumber;
	}





	public void setOrderstatusnumber(int orderstatusnumber) {
		this.orderstatusnumber = orderstatusnumber;
	}





	public Date getOrderlistdate() {
		return orderlistdate;
	}





	public void setOrderlistdate(Date orderlistdate) {
		this.orderlistdate = orderlistdate;
	}





	public int getOrderlistquantity() {
		return orderlistquantity;
	}





	public void setOrderlistquantity(int orderlistquantity) {
		this.orderlistquantity = orderlistquantity;
	}





	public int getOrderlistnumber() {
		return orderlistnumber;
	}





	public void setOrderlistnumber(int orderlistnumber) {
		this.orderlistnumber = orderlistnumber;
	}





	public String getOrderlistzipcode1() {
		return orderlistzipcode1;
	}





	public void setOrderlistzipcode1(String orderlistzipcode1) {
		this.orderlistzipcode1 = orderlistzipcode1;
	}





	public String getOrderlistzipcode2() {
		return orderlistzipcode2;
	}





	public void setOrderlistzipcode2(String orderlistzipcode2) {
		this.orderlistzipcode2 = orderlistzipcode2;
	}





	public String getOrderlistaddress1() {
		return orderlistaddress1;
	}





	public void setOrderlistaddress1(String orderlistaddress1) {
		this.orderlistaddress1 = orderlistaddress1;
	}





	public String getOrderlistaddress2() {
		return orderlistaddress2;
	}





	public void setOrderlistaddress2(String orderlistaddress2) {
		this.orderlistaddress2 = orderlistaddress2;
	}





	public String getOrderlistphone1() {
		return orderlistphone1;
	}





	public void setOrderlistphone1(String orderlistphone1) {
		this.orderlistphone1 = orderlistphone1;
	}





	public String getOrderlistphone2() {
		return orderlistphone2;
	}





	public void setOrderlistphone2(String orderlistphone2) {
		this.orderlistphone2 = orderlistphone2;
	}





	public int getOrderlisttotalprice() {
		return orderlisttotalprice;
	}





	public void setOrderlisttotalprice(int orderlisttotalprice) {
		this.orderlisttotalprice = orderlisttotalprice;
	}





	public String getOrderguest() {
		return orderguest;
	}





	public void setOrderguest(String orderguest) {
		this.orderguest = orderguest;
	}





	public String getOrderemail() {
		return orderemail;
	}





	public void setOrderemail(String orderemail) {
		this.orderemail = orderemail;
	}





	public String getOrdermessage() {
		return ordermessage;
	}





	public void setOrdermessage(String ordermessage) {
		this.ordermessage = ordermessage;
	}





	@Override
	public String toString() {
		return "OrderAndPayVo [orderlistid=" + orderlistid + ", memberid=" + memberid + ", productid=" + productid
				+ ", orderstatusnumber=" + orderstatusnumber + ", orderlistdate=" + orderlistdate
				+ ", orderlistquantity=" + orderlistquantity + ", orderlistnumber=" + orderlistnumber
				+ ", orderlistzipcode1=" + orderlistzipcode1 + ", orderlistzipcode2=" + orderlistzipcode2
				+ ", orderlistaddress1=" + orderlistaddress1 + ", orderlistaddress2=" + orderlistaddress2
				+ ", orderlistphone1=" + orderlistphone1 + ", orderlistphone2=" + orderlistphone2
				+ ", orderlisttotalprice=" + orderlisttotalprice + ", orderguest=" + orderguest + ", orderemail="
				+ orderemail + ", ordermessage=" + ordermessage + "]";
	}



}
