package com.petshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petshop.entity.Customer;
import com.petshop.entity.Products;

@Service
public interface IHomeService {
	@Autowired
	public List<Products> GetDataProduct();
	public List<Customer> GetDataCustomer();
}
