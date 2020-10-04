package com.devpro.java08blog.entites;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tblcategory")
public class Category extends BaseEntity {

	@Column(name = "name", length = 2083, nullable = false)
	private String name;

	public String getName() {
		return name;
	}

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "category", fetch = FetchType.LAZY)

	private List<Product> products = new ArrayList<>();

	public void addProduts(Product... ps) {
		for (Product product : ps) {
			product.setCategory(this);
			products.add(product);
		}
	}

	public void removeProdut(Product product) {
		products.remove(product);
		product.setCategory(null);
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public void setName(String name) {
		this.name = name;
	}

}
