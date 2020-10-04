package com.devpro.java08blog.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.RollbackException;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.java08blog.entites.Attachment;
import com.devpro.java08blog.entites.Category;
import com.devpro.java08blog.entites.Comment;
import com.devpro.java08blog.entites.Product;
import com.devpro.java08blog.repositories.AttachmentRepository;
import com.devpro.java08blog.repositories.CommentRepository;
import com.devpro.java08blog.repositories.ProductRepository;

@Service
public class ProductService {

	@Autowired
	ProductRepository productRepo;
	@Autowired
	CommentRepository commentRepo;
	@Autowired
	AttachmentRepository attchmentRepo;
	@Value("${attachment.path}")
	private String attachmentPath;
	
	@PersistenceContext
	private EntityManager entityManager;

	@Transactional(rollbackOn = RollbackException.class)
	public void saveProductAttachment(Product product, MultipartFile images) throws Exception {

		
		File file = null;
		try {
			Product savedProduct = productRepo.save(product);

			if (images != null && images.getSize() > 0) {
				file = new File(attachmentPath + images.getOriginalFilename());
				images.transferTo(file);

				Attachment attachment = new Attachment();
				attachment.setName_attachment(images.getOriginalFilename());
				attachment.setTime_attachment(new Date());

				attachment.setProduct(savedProduct);
				attchmentRepo.save(attachment);
//				attachment.setFilePath(attachmentPath + attachments.getOriginalFilename());
			}

		} catch (Exception x) {
			if (file != null) {
				file.deleteOnExit();
			}
			throw x;
		}
	}
	
	
	
	@Transactional(rollbackOn = RollbackException.class)
	public void editProductAttachment(Product product, MultipartFile images) throws Exception {

		
		File file = null;
		try {
			productRepo.save(product);

			if (images != null && images.getSize() > 0) {
				file = new File(attachmentPath + images.getOriginalFilename());
				images.transferTo(file);

				Attachment attachment = attchmentRepo.findByProduct(product);
				attachment.setName_attachment(images.getOriginalFilename());
				attachment.setTime_attachment(new Date());

				attachment.setProduct(product);
				attchmentRepo.save(attachment);
//				attachment.setFilePath(attachmentPath + attachments.getOriginalFilename());
			}

		} catch (Exception x) {
			if (file != null) {
				file.deleteOnExit();
			}
			throw x;
		}
	}
	
	public List<Category> findAllCategories() {
		String jpql = "FROM Category c ORDER BY c.id";
		Query query = entityManager.createQuery(jpql, Category.class);
		
		
		List<Category> categories = query.getResultList();
		return categories;
	}

}
