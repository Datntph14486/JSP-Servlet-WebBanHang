package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entities.Category;
import com.example.demo.entities.Product;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.OrderRepository;
import com.example.demo.repository.ProductRepository;
import com.example.demo.services.ShoppingService;

@Controller
@RequestMapping("home")
public class HomeController {

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	ShoppingService cart;
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	OrderRepository orderRepository;
	
	@Autowired
	HttpSession session;

	@GetMapping("/listProduct")
	public String getDongSp(Model model) {
		List<Category> listCategory = categoryRepository.getAll();
		model.addAttribute("listCategory", listCategory);
		List<Product> list = productRepository.getAll();
		model.addAttribute("listProduct", list);
		model.addAttribute("sizeItem", cart.getCount());
		return "product/Home";

	}
	@GetMapping("/listProduct/page")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p ) {
		if(p.isPresent()) {
			org.springframework.data.domain.Pageable pageable = PageRequest.of(p.orElse(0)-1,6);		
			Page<Product> page = productRepository.findAll(pageable);
			List<Category> listCategory = categoryRepository.getAll();
			model.addAttribute("listCategory", listCategory);
			model.addAttribute("listProduct", page);
			model.addAttribute("sizeItem", cart.getCount());
			session.setAttribute("order", null);
			return "product/Home";
		}else {
			org.springframework.data.domain.Pageable pageable = PageRequest.of(p.orElse(0),6);		
			Page<Product> page = productRepository.findAll(pageable);
			List<Category> listCategory = categoryRepository.getAll();
			model.addAttribute("listCategory", listCategory);
			model.addAttribute("sizeItem", cart.getCount());
			model.addAttribute("listProduct", page);
			session.setAttribute("order", null);
			return "product/Home";
		}
	
	}
	

	@GetMapping("/category/{id}")
	public String getcategory(@PathVariable("id") Integer id,Model model) {
		List<Category> listCategory = categoryRepository.getAll();
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("sizeItem", cart.getCount());
		model.addAttribute("listProduct", productRepository.getAllByCategoryId(id));
		return "product/Category";
	}

	@PostMapping("/listProduct")
	public String getDongSp() {
		List<Product> list = productRepository.getAll();
		System.out.println(list);
		return "product/Home";
	}
	

	@GetMapping("/introduce")
	public String introduce() {
		return "layout/Introduce";
	}

	@GetMapping("/contact")
	public String contact() {
		return "layout/Contact";
	}

	@GetMapping("/feedback")
	public String Feedback() {
		return "layout/Feedback";
	}
	
	@GetMapping("/productDetail/{id}")
	public String productDetail(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("product", productRepository.getById(id));
		return "product/ProductDetail"
;		
	}

}
