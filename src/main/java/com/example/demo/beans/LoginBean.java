package com.example.demo.beans;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Component
public class LoginBean {
	
	private String username;
	private String password;

}
