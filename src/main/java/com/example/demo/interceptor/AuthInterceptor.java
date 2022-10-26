package com.example.demo.interceptor;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.example.demo.entities.Account;
import com.example.demo.services.SessionService;
@Service
public class AuthInterceptor implements HandlerInterceptor{
	@Autowired
	HttpSession session;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Account role =  (Account) session.getAttribute("account");
	if(role==null ) {
		return false;
	}
	
		return true;
	}
}