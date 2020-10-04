package com.devpro.java08blog.entites;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tblbill")
public class Bill extends BaseEntity {

	@Column(name = "id_product", nullable = true)
	private Integer id_product;


	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_user")
	private User user;

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "tbl_bill_product", joinColumns = @JoinColumn(name = "id_bill"),
	inverseJoinColumns = @JoinColumn(name = "id_product"))
	private List<Product> products = new ArrayList<Product>();

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public void addProduct(Product product) {
		products.add(product);
		product.getBills().add(this);
	}
	
	public void removeProduct(Product product) {
		products.remove(product);
		product.getBills().remove(this);
	}
	
	public Integer getId_product() {
		return id_product;
	}

	public void setId_product(Integer id_product) {
		this.id_product = id_product;
	}
	
	
	@Column(name = "nameCustomer", length = 45, nullable = false)
	private String nameCustomer;
	
	@Column(name = "address", length = 45, nullable = false)
	private String address;
	
	@Column(name = "phone", length = 45, nullable = false)
	private String phone;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getNameCustomer() {
		return nameCustomer;
	}

	public void setNameCustomer(String nameCustomer) {
		this.nameCustomer = nameCustomer;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	



}
