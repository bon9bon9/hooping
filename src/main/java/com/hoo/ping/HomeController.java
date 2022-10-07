package com.hoo.ping;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoo.ping.domain.ProductVO;
import com.hoo.ping.domain.ReviewVO;
import com.hoo.ping.service.ProductService;
import com.hoo.ping.service.ReviewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

//	private ProductService productService;
//	private ReviewService reviewService;
//
//	@Autowired
//	public HomeController(ProductService productService,
//			  			  ReviewService reviewService ) {
//		this.productService = productService;
//		this.reviewService = reviewService;
//	}

	@RequestMapping(value = "main.do")
	public String main(Model model) {

//		List <ProductVO> pList = productService.getBestProductList();
//		
//		List <ReviewVO> rList = reviewService.getReviewList();
//		
//		model.addAttribute("product", pList);
//		model.addAttribute("review", rList);
//		
		return "/main/main";
	}
	
	@RequestMapping(value = "intro.do")
	public String intro(Model model) {

		return "/main/intro";
	}
	
	// 쇼케이스
	@RequestMapping(value = "consulting.do")
	public String consulting(Model model) {

		return "/main/consulting";
	}
	
}
