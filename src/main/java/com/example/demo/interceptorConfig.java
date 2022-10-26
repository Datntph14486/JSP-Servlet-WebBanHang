package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.example.demo.interceptor.AuthInterceptor;
@Configuration
public class interceptorConfig implements WebMvcConfigurer {

	@Autowired
	AuthInterceptor authInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		System.out.println(1);
		registry.addInterceptor(authInterceptor)
		.addPathPatterns("/admin/product", "/account/**","/order/orderdetail/**")
		.excludePathPatterns("/home/**", "/Auth/**");

	}

}
