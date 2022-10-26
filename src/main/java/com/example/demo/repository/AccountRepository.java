package com.example.demo.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Account;

import java.util.List;

@Repository
public interface AccountRepository extends JpaRepository<Account, String> {
    @Query(value = "select * from Accounts", nativeQuery = true)
    public List<Account> getAll();
    
    @Query(value ="select * from Accounts where username = ?1", nativeQuery = true)
    public Account getByUsername(String username);
}
