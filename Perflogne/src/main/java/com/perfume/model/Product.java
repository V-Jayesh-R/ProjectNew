package com.perfume.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
public class Product {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int productId;
	@Expose
	@NotEmpty(message="Add Product Name") 
	private String productName;
	@Expose
	@NotEmpty(message="Add Product Description")
	private String productDescription;
	
	@Expose
	@Transient
	private MultipartFile productImage;
	
	
	
	public int getProductId() {
		return productId;	
	}
	public MultipartFile getProductImage() {
		return productImage;
	}
	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	@Expose
	private int categoryId;
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public SubCategory getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	@Expose
	private int subCategoryId;
	@Expose
	private int supplierId;
	@Expose
	private int brandId;
	
	@Expose
	private double productActualPrice;
	@Expose
    private double productDiscount;
	@Expose
	private double productQuantity;
	@Expose
	@NotEmpty(message="Product Made Country can not be empty")
    private String productMadeCountry;
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	
	
    public double getProductActualPrice() {
		return productActualPrice;
	}
	public void setProductActualPrice(double productActualPrice) {
		this.productActualPrice = productActualPrice;
	}
	public double getProductDiscount() {
		return productDiscount;
	}
	public void setProductDiscount(double productDiscount) {
		this.productDiscount = productDiscount;
	}
	public String getProductMadeCountry() {
		return productMadeCountry;
	}
	public void setProductMadeCountry(String productMadeCountry) {
		this.productMadeCountry = productMadeCountry;
	}
	public double getProductQuantity() {
		return productQuantity;
	}
	public void setProductStock(double productQuantity) {
		this.productQuantity = productQuantity;
	}

	@Expose
	@ManyToOne
	@JoinColumn(name="categoryId",updatable=false,insertable=false,nullable=false)
	private Category category;

	@Expose
	@ManyToOne
	@JoinColumn(name="subCategoryId",updatable=false,insertable=false,nullable=false)
	private SubCategory subCategory;

	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	
	@Expose
	@ManyToOne
	@JoinColumn(name="supplierId",updatable=false,insertable=false,nullable=false)
	private Supplier supplier;
	
	@Expose
	@ManyToOne
	@JoinColumn(name="brandId",updatable=false,insertable=false,nullable=false)
	private Brand brand;
}
