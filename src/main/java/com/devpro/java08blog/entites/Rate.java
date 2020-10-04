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
import javax.persistence.Table;

@Entity
@Table(name = "tblrate")
public class Rate extends BaseEntity {

	@Column(name = "rate", nullable = false)
	private Float rate;

//	@Column(name = "id_user", nullable = false)
//	private Integer id_user;
//
//	@Column(name = "id_product", nullable = false)
//	private Integer id_product;

	@Column(name = "rate_time", nullable = false)
	private Date rate_time;
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_user")
	private User user;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_product")
	private Product product;

	public Float getRate() {
		return rate;
	}

	public void setRate(Float rate) {
		this.rate = rate;
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

	public Date getRate_time() {
		return rate_time;
	}

	public void setRate_time(Date rate_time) {
		this.rate_time = rate_time;
	}

}
