package com.petshop.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCustomer implements RowMapper<Customer>{

	public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		Customer customer = new Customer();
		customer.setMaKhachHang(rs.getString("makhachhang"));
		customer.setTenDangNhap(rs.getString("tendangnhap"));
		customer.setMatKhau(rs.getString("matkhau"));
		customer.setHoVaTen(rs.getString("hoten"));
		customer.setGioiTinh(rs.getString("gioitinh"));
		customer.setDiaChiNhanHang(rs.getString("diachinhanhang"));
		customer.setDiaChiMuaHang(rs.getString("diachimuahang"));
		customer.setNgaySinh(rs.getDate("ngaysinh"));
		customer.setSoDienThoai(rs.getString("sodienthoai"));
		customer.setEmail(rs.getString("email"));
		customer.setDangKyNhanBangTin(rs.getBoolean("dangkinhanbangtin"));
		
		return customer;
	}
	
}
