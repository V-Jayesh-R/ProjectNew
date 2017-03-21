package com.perfume.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.perfume.model.Product;
import com.perfume.serviceimpl.BrandServiceImpl;
import com.perfume.serviceimpl.CategoryServiceImpl;
import com.perfume.serviceimpl.ProductServiceImpl;
import com.perfume.serviceimpl.SubCategoryServiceImpl;
import com.perfume.serviceimpl.SupplierServiceImpl;

@Controller
public class ProductController {
	
	@Autowired
	ProductServiceImpl productServiceImpl;
	@Autowired 
	CategoryServiceImpl categoryServiceImpl;
	@Autowired
	SupplierServiceImpl supplierServiceImpl;
	@Autowired
	SubCategoryServiceImpl subCategoryServiceImpl;
	@Autowired
	BrandServiceImpl brandServiceImpl;
	
	@RequestMapping("/product")
	public String getProduct(Model model)
	{
		model.addAttribute("product", new Product());
		model.addAttribute("productlist",productServiceImpl.listProducts());
		model.addAttribute("productlistjson", productServiceImpl.listProductsByJson());
		
		model.addAttribute("categorylist", categoryServiceImpl.listCategorys());
		model.addAttribute("categorylistjson", categoryServiceImpl.listCategorysByJson());
		
		model.addAttribute("supplierlist",supplierServiceImpl.listSuppliers());
		model.addAttribute("supplierlistjson", supplierServiceImpl.listSuppliersByJson());
		
		model.addAttribute("subcategorylist",subCategoryServiceImpl.listSubCategorys());
		model.addAttribute("subcategorylistjson", subCategoryServiceImpl.listSubCategorysByJson());
		
		model.addAttribute("brandlist", brandServiceImpl.listBrands());
		model.addAttribute("brandlistjson", brandServiceImpl.listBrandsByJson());
		return"ProductForm";
	}
	
	@RequestMapping("/addproduct")
	public String addProduct(@Valid @ModelAttribute("product")Product product,BindingResult result,Model model)
	{
		if(result.hasErrors())
		{
			model.addAttribute("subcategorylist", subCategoryServiceImpl.listSubCategorys());
			model.addAttribute("subcategorylistjson", subCategoryServiceImpl.listSubCategorysByJson());
			model.addAttribute("categorylist", categoryServiceImpl.listCategorys());
			model.addAttribute("categorylistjson", categoryServiceImpl.listCategorysByJson());
			model.addAttribute("supplierlist", supplierServiceImpl.listSuppliers());
			model.addAttribute("supplierlistjson", supplierServiceImpl.listSuppliersByJson());
			model.addAttribute("brandlist", brandServiceImpl.listBrands());
			model.addAttribute("brandlistjson", brandServiceImpl.listBrandsByJson());
			model.addAttribute("productList", productServiceImpl.listProducts());
			model.addAttribute("productlistjson", productServiceImpl.listProductsByJson());
			
			
			return "ProductForm";
		}
		
		product.setProductActualPrice(product.getProductActualPrice() * product.getProductQuantity());
		productServiceImpl.addProduct(product);	
		String path="D:\\New Project\\Perflogne\\src\\main\\webapp\\resources\\ProductImages\\";
		path = path+""+product.getProductId()+".jpg";
		System.out.println("Image Path is:"+path);
		try
		{
		File f = new File(path);
		MultipartFile m = product.getProductImage();
		byte[] b =  m.getBytes();
		FileOutputStream fos = new FileOutputStream(f);
		BufferedOutputStream bos = new BufferedOutputStream(fos);
		bos.write(b);
		bos.close();
		}
		catch (Exception e) {
			System.out.println("ERROR WHILE IMAGE INPUT");
		}
		
		return "redirect:/product";
		
	}
	
	
	
	
	@RequestMapping("/updateProduct-{productId}")
	public String updateProduct(@PathVariable("productId") int productId,@ModelAttribute("product")Product product,Model model)
	{
		model.addAttribute("categorylist", categoryServiceImpl.listCategorys());
		model.addAttribute("categorylistjson", categoryServiceImpl.listCategorysByJson());
		model.addAttribute("subcategorylist", subCategoryServiceImpl.listSubCategorys());
		model.addAttribute("subcategorylistjson", subCategoryServiceImpl.listSubCategorysByJson());
		model.addAttribute("supplierlist", supplierServiceImpl.listSuppliers());
		model.addAttribute("supplierlistjson", supplierServiceImpl.listSuppliersByJson());
		model.addAttribute("brandlist", brandServiceImpl.listBrands());
		model.addAttribute("brandlistjson", brandServiceImpl.listBrandsByJson());
		model.addAttribute("product",productServiceImpl.getProductyById(productId));
		model.addAttribute("productlistjson", productServiceImpl.listProductsByJson());
		
		return "ProductForm";
	}
	
	
	
	@RequestMapping("/removeProduct-{productId}")
	public String removeProduct(@PathVariable("productId") int productId) {
		productServiceImpl.removeProduct(productId);
		
		return "redirect:/product";
	}
	
	@RequestMapping("/viewProduct-{productId}")
	public String viewProduct(@PathVariable("productId") int productId,@ModelAttribute("product")Product product,Model model)
	{
		Product p = productServiceImpl.getProductyById(productId);
		Gson g= new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String productData= g.toJson(p);
		model.addAttribute("productData", productData);
		
		model.addAttribute("categorylist", categoryServiceImpl.listCategorys());
		model.addAttribute("categorylistjson", categoryServiceImpl.listCategorysByJson());
		
		model.addAttribute("subcategorylist", subCategoryServiceImpl.listSubCategorys());
		model.addAttribute("subcategorylistjson", subCategoryServiceImpl.listSubCategorysByJson());
		model.addAttribute("supplierlist", supplierServiceImpl.listSuppliers());
		model.addAttribute("supplierlistjson", supplierServiceImpl.listSuppliersByJson());
		model.addAttribute("brandlist", brandServiceImpl.listBrands());
		model.addAttribute("brandlistjson", brandServiceImpl.listBrandsByJson());
		model.addAttribute("product",productServiceImpl.getProductyById(productId));
		
		return "ViewProduct";
	}

}
