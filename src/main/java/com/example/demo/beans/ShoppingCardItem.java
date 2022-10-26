package com.example.demo.beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ShoppingCardItem {
	Integer id;
	String name;
	double price;
	String image;
	int qty = 1;
}
