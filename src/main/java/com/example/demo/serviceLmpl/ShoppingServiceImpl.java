package com.example.demo.serviceLmpl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.example.demo.beans.ShoppingCardItem;
import com.example.demo.entities.Product;
import com.example.demo.repository.ProductRepository;
import com.example.demo.services.ShoppingService;

@SessionScope
@Service
public class ShoppingServiceImpl implements ShoppingService {
	@Autowired
	ProductRepository productRepository;
	Map<Integer, ShoppingCardItem> listOrdering = new HashMap<>();
//	List<Product> listProduct = productRepository.getAll();

	@Override
	public ShoppingCardItem add(Integer id) {
		ShoppingCardItem item = listOrdering.get(id);
		if (item == null) {
			Optional<Product> product = productRepository.findById(id);
			if (product.isEmpty()) {
				return null;
			}
			item = new ShoppingCardItem(product.get().getId(), product.get().getName(), product.get().getPrice(),
					product.get().getImage(), 1);

			listOrdering.put(id, item);

		} else {
			item.setQty(item.getQty() + 1);
		}
		return item;
	}

	@Override
	public void remove(Integer id) {

	
			listOrdering.remove(id);
		

	}

	@Override
	public ShoppingCardItem update(Integer id, int qty) {
		ShoppingCardItem item = listOrdering.get(id);
		if (item == null) {
			return null;
		}
		item.setQty(qty);
		return item;

	}

	@Override
	public void clear() {
		listOrdering.clear();

	}

	@Override
	public Collection<ShoppingCardItem> getItems() {
//		List<ShoppingCardItem> list = new ArrayList<>(listOrdering.values());
		return listOrdering.values();
	}

	@Override
	public int getCount() {
		return listOrdering.values().stream().mapToInt(item -> item.getQty()).sum();
	}

	@Override
	public double getAmount() {
		return listOrdering.values().stream().mapToDouble(item -> item.getPrice() * item.getQty()).sum();
	}

}
