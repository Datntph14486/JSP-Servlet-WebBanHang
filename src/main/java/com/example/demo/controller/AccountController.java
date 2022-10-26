package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.entities.Account;
import com.example.demo.entities.Product;
import com.example.demo.repository.AccountRepository;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ProductRepository;
@Controller
@RequestMapping("account")
public class AccountController {
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	AccountRepository accountRepository;
	
	@Autowired
	HttpSession session;
	
	@GetMapping("/list")
	public String getList(Model model) {
		
		model.addAttribute("ListProduct", accountRepository.getAll());
		return "account/ListAccount";
	}
	@GetMapping("/edit/{id}")
	public String accountEdit(Model model, @PathVariable("id") String username) {
		model.addAttribute("accountEdit", accountRepository.getByUsername(username));
		return "account/AccountEdit";
	}
	
	@PostMapping("/edit")
	public String edit(Model model, @ModelAttribute("accountEdit") Account account) {
		if(account.getActivated()==null || account.getRole()==null || account.getEmail().trim().equals("") || account.getFullname().trim().equals("") || account.getPassword().trim().equals("") || account.getUsername().trim().equals("")) {
			session.setAttribute("errorEdit", "LOI EDIT ACCOUNT");
			return "redirect:/account/edit/"+account.getUsername();
		}
		Account account2 = new Account();
		account2.setActivated(account.getActivated());
		account2.setEmail(account.getEmail());
		account2.setFullname(account.getFullname());
		account2.setPassword(account.getPassword());
		account2.setRole(account.getRole());
		account2.setUsername(account.getUsername());
		accountRepository.save(account2);
		return "redirect:/account/list";
	}
	

}
