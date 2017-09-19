package com.kh.goosta.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.product.dao.ProductDao;
import com.kh.goosta.product.vo.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao pd;
	
	public ProductServiceImpl(){}

	@Override
	public String selectCategory(String productname) {
		return pd.selectCategory(productname);
	}

	/*@Override
	public String selectProductColor(String productnameShort) {
		return pd.selectProductColor(productnameShort);
	}*/

	@Override
	public List<ProductVO> selectProductSize(String productname) {
		return pd.selectProductSize(productname);
	}

	@Override
	public List<ProductVO> selectProductList(String productMainImage) {
		return pd.selectProductList(productMainImage);
	}

	@Override
	public int selectProductQuantity(String productname, int productsize) {
		return pd.selectProductQuantity(productname, productsize);
	}

	@Override
	public ProductVO selectProduct(int productid) {
		return pd.selectProduct(productid);
	}
	
}
