package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.entities.Account;
import com.example.demo.entities.status;
import com.example.demo.entities.Order;
import com.example.demo.repository.OrderDetailRepository;
import com.example.demo.repository.OrderRepository;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@Autowired
	OrderRepository orderRepository;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	OrderDetailRepository orderDetailRepository;
	
	@GetMapping("")
	public String listOrder(Model model) {
	Account account =	(Account) session.getAttribute("account");
	if(account.getRole()==true) {
		model.addAttribute("listOrder",orderRepository.findAll());
		return "/order/OrderAdmin";
	}
		System.out.println("naem"+ orderRepository.getAll(account.getUsername()));

		model.addAttribute("listOrder",orderRepository.getAll(account.getUsername()));
		return "/order/Order";
		
	}
	
	@GetMapping("orderdetail/{id}")
	public String oderdetail(Model model, @PathVariable("id") Integer id) {
		System.out.println(1);
		System.out.println(id);
		model.addAttribute("listorderdetail",orderDetailRepository.getAll(id));
		return "order/OrderDetail";
	}
	
	@PostMapping("status/{id}")
	public String status(Model model, @PathVariable("id") Integer id) {
	 Order order= orderRepository.getById(id);
	if(order.getStatus()==status.PENDINH) {
		order.setStatus(status.CONFIRMED);
	}else if(order.getStatus()==status.CONFIRMED) {
		order.setStatus(status.DELIVERING);
	}else if(order.getStatus()==status.DELIVERING) {
		order.setStatus(status.SUCCESSFUL);
	}
	orderRepository.save(order);
	System.out.println(id);
	return "redirect:/order";	 
	}

}
