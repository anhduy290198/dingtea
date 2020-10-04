package com.devpro.java08blog.entites;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tblcomment")
public class Comment extends BaseEntity {
	@Lob
	@Column(name = "content",columnDefinition = "text", nullable = false)
	private String content;

//	@Column(name = "id_user", nullable = false)
//	private Integer id_user;
//
//	@Column(name = "id_product", nullable = false)
//	private Integer id_product;

	@Column(name = "comment_time", nullable = false)
	private Date comment_time;
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_user")
	private User user;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_product")
	private Product product;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

//	public Integer getId_user() {
//		return id_user;
//	}
//
//	public void setId_user(Integer id_user) {
//		this.id_user = id_user;
//	}
//
//	public Integer getId_product() {
//		return id_product;
//	}
//
//	public void setId_product(Integer id_product) {
//		this.id_product = id_product;
//	}

	public Date getComment_time() {
		return comment_time;
	}

	public void setComment_time(Date comment_time) {
		this.comment_time = comment_time;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
	

}
