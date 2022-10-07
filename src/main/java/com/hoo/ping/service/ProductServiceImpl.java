package com.hoo.ping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hoo.ping.domain.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Override
	public List<ProductVO> getBestProductList() {
		return null;
	}

}
