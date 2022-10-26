package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.entities.Category;
import com.example.demo.entities.Product;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ProductRepository;

@Controller
@RequestMapping("admin")
public class ProductController {
	@Autowired
	ProductRepository repository;
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	@GetMapping("product")
	public String product(Model model, Optional<Integer> p) {
		if(p.isPresent()) {
			org.springframework.data.domain.Pageable pageable = PageRequest.of(p.orElse(0)-1,6);		
			Page<Product> page = repository.findAll(pageable);
			model.addAttribute("products", page);
			return "product/CRUDProduct";
		}else {
			org.springframework.data.domain.Pageable pageable = PageRequest.of(p.orElse(0),6);		
			Page<Product> page = repository.findAll(pageable);
			model.addAttribute("products", page);
			return "product/CRUDProduct";
		}

	}
	
	@GetMapping("product/add")
	public String prodcutAdd(Model model) {
		model.addAttribute("listCategory", categoryRepository.getAll());
		Product product = new Product();
		model.addAttribute("product", product);
		return "product/ProductAdd";
	}
	@GetMapping("product/edit/{id}")
	public String prodcutEdit(Model model,@PathVariable("id") Integer id) {
		model.addAttribute("listCategory", categoryRepository.getAll());
//		model.addAttribute("listCategory", categoryRepository.getAll());
		System.out.println("1");
		System.out.println(id);
	
		Optional<Product> product= repository.findById(id);
		model.addAttribute("img", product.get().getImage());
		model.addAttribute("product", product.get());
		return "product/ProductEdit";
	}
	
	@PostMapping("product/edit")
	public String productEdit(Model model,@ModelAttribute("product") Product product) {

		if(product.getAvailable()== null || product.getCategory()== null || product.getName()== null||product.getPrice()== null || product.getPrice()<=0 ) {

			session.setAttribute("productEditValidate", "LOI THEM SAN PHAM");
			
			return "redirect:/admin/product/edit/"+product.getId();
		}
		if(product.getImage().equals("") || product.getImage()==null) {
			String img = request.getParameter("img");	
			System.out.println("img"+img);
			Product product1= repository.getById(product.getId());
			product1.setAvailable(product.getAvailable());
			product1.setCategory(product.getCategory());
			product1.setCreateDate(product.getCreateDate());
			product1.setImage(product.getImage());
			product1.setName(product.getImage());
			product1.setPrice(product.getPrice());
			product1.setImage(img);
			repository.save(product1);
			session.setAttribute("productEditValidate", null);
			return "redirect:/admin/product";
		}else {
			
			Product product1= repository.getById(product.getId());
			product1.setAvailable(product.getAvailable());
			product1.setCategory(product.getCategory());
			product1.setCreateDate(product.getCreateDate());
			product1.setImage(product.getImage());
			product1.setName(product.getImage());
			product1.setPrice(product.getPrice());
			product1.setImage(product.getImage());
			repository.save(product1);
			session.setAttribute("productEditValidate", null);
			return "redirect:/admin/product";
		}
	
		
	}
	
	@PostMapping("product/add")
	public String productAdd(Model model,  Optional<Integer> p, @ModelAttribute("product") Product product) {
		if(product.getAvailable()== null || product.getCategory()== null|| product.getImage().equals("") || product.getName()== null||product.getPrice()== null || product.getPrice()<=0 ) {
			model.addAttribute("product",product);
			session.setAttribute("productValidate", "LOI THEM SAN PHAM");
			
			return "redirect:/admin/product/add";
		}
		repository.save(product);
		if(p.isPresent()) {
			org.springframework.data.domain.Pageable pageable = PageRequest.of(p.orElse(0)-1,6);		
			Page<Product> page = repository.findAll(pageable);
			model.addAttribute("products", page);
			model.addAttribute("productValidate",null);
			return "product/CRUDProduct";
		}else {
			org.springframework.data.domain.Pageable pageable = PageRequest.of(p.orElse(0),6);		
			Page<Product> page = repository.findAll(pageable);
			model.addAttribute("products", page);
			model.addAttribute("productValidate",null);
			return "product/CRUDProduct";
		}
	}
	
	@GetMapping("/delete/{id}")
	public String delete(Model model, @PathVariable("id") Integer id) {
		Product product= repository.getById(id);
		if(product.getAvailable()==true) {
			product.setAvailable(false);
			repository.save(product);
		}else {
			product.setAvailable(true);
			repository.save(product);
		}
		return "redirect:/admin/product";
	}
}
