package com.example.demo.repository;
import com.example.demo.entities.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
    @Query(value = "select * from OrderDetails where orderid =?1", nativeQuery = true)
    public List<OrderDetail> getAll(Integer orderid);
    
    
}