package com.example.demo.controller;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.beans.ShoppingCardItem;
import com.example.demo.entities.Account;
import com.example.demo.entities.Order;
import com.example.demo.entities.OrderDetail;
import com.example.demo.entities.Product;
import com.example.demo.entities.status;
import com.example.demo.repository.OrderDetailRepository;
import com.example.demo.repository.OrderRepository;
import com.example.demo.repository.ProductRepository;
import com.example.demo.services.ShoppingService;

@Controller
@RequestMapping("cart")
public class CartController {

	@Autowired
	ShoppingService cart;

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	OrderDetailRepository orderDetailRepository;

	@Autowired
	HttpSession session;

	@Autowired
	OrderRepository orderRepository;

	@Autowired
	OrderDetailRepository detailRepository;

	@Autowired
	ProductRepository productRepository;

	@GetMapping("/add/{id}")
	public String addCart(@PathVariable("id") Integer id, Model model) {
		cart.add(id);
		model.addAttribute("listCart", cart.getItems());
		model.addAttribute("sizeItem", cart.getCount());
		return "redirect:/home/listProduct/page";
	}

//	@PostMapping("/update/{id}")
//	public String updateQty(@PathVariable("id") Integer id) {
//		ShoppingCardItem item;
////		
////		String qty = request.getParameter("qty");	
////		cart.update(Integer.parseInt(id),Integer.parseInt(qty));
////		
////		System.out.println(id);
////		System.out.println(qty);
////		
//		return "redirect:/cart";
//
//	}

	@GetMapping("/clear")
	public String clearCard() {

		cart.clear();

		return "redirect:/cart";
		// return "cart/index";
	}

	@GetMapping("/remove/{id}")
	public String removeByID(@PathVariable("id") Integer id, Model model) {

		cart.remove(id);
		model.addAttribute("listCart", cart.getItems());
		return "redirect:/cart";
	}
	


	@PostMapping("/checkout")
	public String checkout() {
		if (session.getAttribute("account") == null) {
			return "redirect:/Auth/Login";
		} else {
			
			String address = request.getParameter("address");
			Account account = (Account) session.getAttribute("account");
			String username = account.getUsername();
			
			Order order = new Order();
			order.setAccount(account);
			order.setAddress(address);
			order.setStatus(status.PENDINH);
			orderRepository.save(order);
			Collection<ShoppingCardItem> items = cart.getItems();
			List<Order> listorder = orderRepository.findAll();
			List<Product> products = productRepository.findAll();
			  Order orderId = listorder.get(listorder.size() - 1);
			  List<OrderDetail> listOrderDetail = new ArrayList<>();
			  
			System.out.println("p size"+items.size());
			
			System.out.println("p order"+listorder.get(0).getId());
			System.out.println("p id " +products.get(0).getId());
			for (ShoppingCardItem item : items) {
				
				OrderDetail orderDetail = new OrderDetail();
	            orderDetail.setOrder(orderId); 
				orderDetail.setPrice(item.getPrice());
				
				orderDetail.setQuantity(item.getQty());
				for (Product p : products) {
					if(p.getId().equals(item.getId())) {
						orderDetail.setProduct(p);
					} 
					
				}

				listOrderDetail.add(orderDetail);

			}
			detailRepository.saveAll(listOrderDetail);
		cart.clear();
		session.setAttribute("order", "Cảm ơn đã đặt hàng!");
			return "redirect:/cart";

		}
	}

	@GetMapping("")
	public String show(Model model) {
		model.addAttribute("amount", cart.getAmount());
		model.addAttribute("listCart", cart.getItems());
		model.addAttribute("count", cart.getCount());
		return "cart/Cart";
	}
	
	@PostMapping("/update")
	public String update(Model model) {
		String qty = request.getParameter("qty");
		String id = request.getParameter("id");
		cart.update(Integer.parseInt(id), Integer.parseInt(qty));
		
		return "redirect:/cart";
	}
}
