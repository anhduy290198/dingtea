package com.devpro.java08blog.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.java08blog.entites.Attachment;
import com.devpro.java08blog.entites.Product;

@Repository
public interface AttachmentRepository extends JpaRepository<Attachment, Integer> {
	Attachment findByProduct(Product product);
}
