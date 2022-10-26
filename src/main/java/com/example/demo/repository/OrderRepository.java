package com.example.demo.repository;

import com.example.demo.entities.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface OrderRepository extends JpaRepository<Order, Integer> {
    @Query(value = "select * from Orders where Username =?1", nativeQuery = true)
    public List<Order> getAll(String username);
    
    @Query(value = "select * from Orders where id =?1", nativeQuery = true)
    public Order getById(Integer id);
}
