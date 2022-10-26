package com.example.demo.services;

import java.util.Collection;

import com.example.demo.beans.ShoppingCardItem;

public interface ShoppingService {
	
	ShoppingCardItem add(Integer id);
	
	void remove (Integer id);
	
	ShoppingCardItem update(Integer id, int qty);
	
	void clear();
	
	Collection<ShoppingCardItem> getItems();
	
	int getCount();
	
	double getAmount();
	
	

}
