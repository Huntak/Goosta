package com.kh.goosta.product.vo;

import java.sql.Date;

public class ProductVO implements java.io.Serializable{
	private int productid;
	private String productname;
	private int productsize;
	private int categoryid;
	private int providercode;
	private int productimageid;
	private int productprice;
	private int productquantity;
	private String productrecommend;
	private String categorybrand;
	private String categorysort;
	private String productimagemain;
	private Date productdate;
	private int cartquantity;
	
	public ProductVO(){}

	public ProductVO(int productid, String productname, int productsize, int categoryid, int providercode, int productimageid, int productprice, int productquantity, String productrecommend, String categorybrand, String categorysort, String productimagemain, Date productdate) {
		super();
		this.productid = productid;
		this.productname = productname;
		this.productsize = productsize;
		this.categoryid = categoryid;
		this.providercode = providercode;
		this.productimageid = productimageid;
		this.productprice = productprice;
		this.productquantity = productquantity;
		this.productrecommend = productrecommend;
		this.categorybrand = categorybrand;
		this.categorysort = categorysort;
		this.productimagemain = productimagemain;
		this.productdate = productdate;
	}

	public ProductVO(int productid, String productname, int productsize, int categoryid, int providercode, int productimageid, int productprice, int productquantity, String productrecommend) {
		super();
		this.productid = productid;
		this.productname = productname;
		this.productsize = productsize;
		this.categoryid = categoryid;
		this.providercode = providercode;
		this.productimageid = productimageid;
		this.productprice = productprice;
		this.productquantity = productquantity;
		this.productrecommend = productrecommend;
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

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public int getProvidercode() {
		return providercode;
	}

	public void setProvidercode(int providercode) {
		this.providercode = providercode;
	}

	public int getProductimageid() {
		return productimageid;
	}

	public void setProductimageid(int productimageid) {
		this.productimageid = productimageid;
	}

	public int getProductprice() {
		return productprice;
	}

	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}

	public int getProductquantity() {
		return productquantity;
	}

	public void setProductquantity(int productquantity) {
		this.productquantity = productquantity;
	}

	public String getProductrecommend() {
		return productrecommend;
	}

	public void setProductrecommend(String productrecommend) {
		this.productrecommend = productrecommend;
	}

	public String getCategorybrand() {
		return categorybrand;
	}

	public void setCategorybrand(String categorybrand) {
		this.categorybrand = categorybrand;
	}

	public String getCategorysort() {
		return categorysort;
	}

	public void setCategorysort(String categorysort) {
		this.categorysort = categorysort;
	}

	public String getProductimagemain() {
		return productimagemain;
	}

	public void setProductimagemain(String productimagemain) {
		this.productimagemain = productimagemain;
	}

	public Date getProductdate() {
		return productdate;
	}

	public void setProductdate(Date productdate) {
		this.productdate = productdate;
	}
	
	public int getCartquantity() {
		return cartquantity;
	}

	public void setCartquantity(int cartquantity) {
		this.cartquantity = cartquantity;
	}

	@Override
	public String toString() {
		return "ProductVO [productid=" + productid + ", productname=" + productname + ", productsize=" + productsize + ", categoryid=" + categoryid + ", providercode=" + providercode + ", productimageid=" + productimageid + ", productprice=" + productprice + ", productquantity=" + productquantity + ", productrecommend=" + productrecommend + ", categorybrand=" + categorybrand + ", categorysort=" + categorysort + ", productimagemain=" + productimagemain + ", productdate=" + productdate + "]";
	}

	
}
