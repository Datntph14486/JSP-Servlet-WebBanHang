package com.example.demo.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.beans.LoginBean;
import com.example.demo.entities.Account;
import com.example.demo.repository.AccountRepository;
import com.example.demo.serviceLmpl.ShoppingServiceImpl;
import com.example.demo.services.SessionService;

@Controller
@RequestMapping("Auth")
public class LoginController {
	@Autowired
	AccountRepository accountRepository;
	
	

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ShoppingServiceImpl serviceImpl;
	
	@Autowired
	HttpSession session;
	


	@GetMapping("Login")
	public String login(Model model) {
		return "auth/Login";
	}

	@PostMapping("Login")
	public String home(Model model) {
		HttpSession session = request.getSession();
		List<Account> listAcc = accountRepository.getAll();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Account accounts = accountRepository.getByUsername(username);
		String error ="";
		if (accounts == null) {
			System.out.println("sai user name");
			error ="sai thông Username";
			model.addAttribute("error",error);
			return "auth/Login";
			

		}
		if (!accounts.getPassword().equals(password)) {
			error ="sai thông tin Pasword";
			model.addAttribute("error",error);
			return "auth/Login";
	
		}
		if(error.length()>0) {
			model.addAttribute("error",error);
			return "auth/Login";
		}
		System.out.println(accounts);
		session.setAttribute("account", accounts);
		session.setAttribute("name", accounts.getFullname());
		session.setAttribute("role",accounts.getRole());
		session.setAttribute("username",accounts.getUsername());
		model.addAttribute("name",accounts.getRole());
			System.out.println("login thafnh coong");
		return "redirect:/home/listProduct/page";
	}
	
	@GetMapping("register")
	public String Showregister(Model model) {
		return "auth/register";
	}
	
	@PostMapping("register")
	public String register(Model model) {
		Account account= new Account();
		String username = request.getParameter("userName");
		String password = request.getParameter("password");
		String repeatPassword =  request.getParameter("repeatPassword");
		String email =  request.getParameter("email");
		String name =  request.getParameter("name");
		
		if(username.trim().equals("") || password.trim().equals("") || repeatPassword.trim().equals("") || email.trim().equals("")|| name.trim().equals("")) {
			session.setAttribute("registerValidate", "LOI DANG KY TAI KHOAN");
			return "redirect:/Auth/register";
		}
		account.setActivated(true);
		account.setUsername(username);
		account.setRole(false);
		account.setEmail(email);
		account.setFullname(name);
		account.setPassword(repeatPassword);
		session.setAttribute("registerValidate", null);
		accountRepository.save(account);
		
		
		return "redirect:/Auth/Login";
	}
	
	@GetMapping("logout")
	public String logut() 
		{
			HttpSession session = request.getSession();
			session.setAttribute("name", null);
			session.setAttribute("role",null);
			session.setAttribute("account", null);
			serviceImpl.clear();
		 	return "redirect:/home/listProduct/page";
		}
	
	

}
