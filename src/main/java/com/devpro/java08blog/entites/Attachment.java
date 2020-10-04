package com.devpro.java08blog.entites;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tblattachment")
public class Attachment extends BaseEntity {

	@Column(name = "name_attachment", length = 2083, nullable = false)
	private String name_attachment;

	@Column(name = "id_user", nullable = true)
	private Integer id_user;

	@Column(name = "time_attachment", nullable = false)
	private Date time_attachment;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_product")
	private Product product;
	
	
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getName_attachment() {
		return name_attachment;
	}

	public void setName_attachment(String name_attachment) {
		this.name_attachment = name_attachment;
	}

//	public Integer getId_product() {
//		return id_product;
//	}
//
//	public void setId_product(Integer id_product) {
//		this.id_product = id_product;
//	}

	public Integer getId_user() {
		return id_user;
	}

	public void setId_user(Integer id_user) {
		this.id_user = id_user;
	}

	public Date getTime_attachment() {
		return time_attachment;
	}

	public void setTime_attachment(Date time_attachment) {
		this.time_attachment = time_attachment;
	}

}
