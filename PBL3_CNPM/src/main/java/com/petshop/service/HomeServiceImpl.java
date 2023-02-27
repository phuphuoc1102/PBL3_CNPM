package com.petshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petshop.entity.Customer;
import com.petshop.entity.Products;
import com.petshop.dao.CustomerDao;
import com.petshop.dao.ProductsDao;
@Service
public class HomeServiceImpl implements IHomeService{
    @Autowired
    private ProductsDao productsDao;
    @Autowired
    private CustomerDao customerDao;
	public List<Products> GetDataProduct() {
		// TODO Auto-generated method stub
		return productsDao.GetDataProduct();
	}
	@Override
	public List<Customer> GetDataCustomer() {
		// TODO Auto-generated method stub
		return customerDao.GetDataCustomer();
	}

}
