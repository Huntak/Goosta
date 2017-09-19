package com.kh.goosta.product.vo;

public class ProductImageVO implements java.io.Serializable {

	private int productimageid;
	private String productimagemain;
	private String productimage1;
	private String productimage2;
	private String productimage3;
	private String productimage4;
	private String productimage5;
	private String productimage6;
	private String productimage7;
	private String productimage8;
	private String productimage9;
	private String productimage10;
	
	public ProductImageVO(){}

	public ProductImageVO(int productimageid, String productimagemain, String productimage1, String productimage2, String productimage3, String productimage4, String productimage5, String productimage6, String productimage7, String productimage8, String productimage9, String productimage10) {
		super();
		this.productimageid = productimageid;
		this.productimagemain = productimagemain;
		this.productimage1 = productimage1;
		this.productimage2 = productimage2;
		this.productimage3 = productimage3;
		this.productimage4 = productimage4;
		this.productimage5 = productimage5;
		this.productimage6 = productimage6;
		this.productimage7 = productimage7;
		this.productimage8 = productimage8;
		this.productimage9 = productimage9;
		this.productimage10 = productimage10;
	}

	public int getProductimageid() {
		return productimageid;
	}

	public void setProductimageid(int productimageid) {
		this.productimageid = productimageid;
	}

	public String getProductimagemain() {
		return productimagemain;
	}

	public void setProductimagemain(String productimagemain) {
		this.productimagemain = productimagemain;
	}

	public String getProductimage1() {
		return productimage1;
	}

	public void setProductimage1(String productimage1) {
		this.productimage1 = productimage1;
	}

	public String getProductimage2() {
		return productimage2;
	}

	public void setProductimage2(String productimage2) {
		this.productimage2 = productimage2;
	}

	public String getProductimage3() {
		return productimage3;
	}

	public void setProductimage3(String productimage3) {
		this.productimage3 = productimage3;
	}

	public String getProductimage4() {
		return productimage4;
	}

	public void setProductimage4(String productimage4) {
		this.productimage4 = productimage4;
	}

	public String getProductimage5() {
		return productimage5;
	}

	public void setProductimage5(String productimage5) {
		this.productimage5 = productimage5;
	}

	public String getProductimage6() {
		return productimage6;
	}

	public void setProductimage6(String productimage6) {
		this.productimage6 = productimage6;
	}

	public String getProductimage7() {
		return productimage7;
	}

	public void setProductimage7(String productimage7) {
		this.productimage7 = productimage7;
	}

	public String getProductimage8() {
		return productimage8;
	}

	public void setProductimage8(String productimage8) {
		this.productimage8 = productimage8;
	}

	public String getProductimage9() {
		return productimage9;
	}

	public void setProductimage9(String productimage9) {
		this.productimage9 = productimage9;
	}

	public String getProductimage10() {
		return productimage10;
	}

	public void setProductimage10(String productimage10) {
		this.productimage10 = productimage10;
	}
	
	@Override
	public String toString(){
		return productimageid + ", " + productimagemain + ", " + productimage1 + ", " + productimage2 + ", " + productimage3 + ", " + productimage4 + ", " + productimage5 + ", " + productimage6 + ", " + productimage7 + ", " + productimage8 + ", " + productimage9 + ", " + productimage10;
	}
}
