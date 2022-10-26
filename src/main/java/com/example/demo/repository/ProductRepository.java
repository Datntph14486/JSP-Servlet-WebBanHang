package com.example.demo.repository;

import com.example.demo.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface ProductRepository extends JpaRepository<Product, Integer> {
    @Query(value = "select * from products", nativeQuery = true)
    public List<Product> getAll();
    
    @Query(value ="select * from products where categoryId = ?1", nativeQuery = true)
    public List<Product> getAllByCategoryId(Integer id);
    
    @Query(value="select * from products where id = ?1 ", nativeQuery = true)
    public Product getById(Integer id);
}
