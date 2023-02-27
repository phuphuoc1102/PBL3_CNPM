package com.petshop.dao;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.petshop.entity.*;

@Repository
public class CustomerDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<Customer> GetDataCustomer(){
		List<Customer> list = new ArrayList<Customer>();
		String sql = "SELECT * FROM khachhang";
		list = _jdbcTemplate.query(sql, new MapperCustomer());
		return list;
	} 
}
