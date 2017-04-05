package com.perfume.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class SubCategory {
	
	@Id
	@Expose
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int  subCategoryId;
	@Expose
	private int categoryId;
	@Expose
	@NotEmpty(message="Add SubCategory Name") 
	private String subCategoryName;
	@Expose
	@NotEmpty(message="Add SubCategory Description") 
	private String subCategoryDescription;
	
	@Expose
	@ManyToOne
	@JoinColumn(name="categoryId",updatable=false,insertable=false,nullable=false)
	private Category category;
	
	
	@OneToMany(mappedBy="subCategory", fetch=FetchType.EAGER)
	private Set<Brand> brand;

	public Set<Brand> getBrand() {
		return brand;
	}

	public void setBrand(Set<Brand> brand) {
		this.brand = brand;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getSubCategoryName() {
		return subCategoryName;
	}

	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}

	public String getSubCategoryDescription() {
		return subCategoryDescription;
	}

	public void setSubCategoryDescription(String subCategoryDescription) {
		this.subCategoryDescription = subCategoryDescription;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}



	

}
