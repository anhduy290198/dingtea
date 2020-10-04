package com.devpro.java08blog.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.java08blog.entites.Category;
import com.devpro.java08blog.entites.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	List<Product> findByStatus(boolean status);
	List<Product> findByCategory(Category category);
}
