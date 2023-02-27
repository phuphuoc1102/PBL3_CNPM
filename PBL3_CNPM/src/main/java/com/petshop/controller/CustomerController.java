package com.petshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.petshop.entity.Customer;
import com.petshop.service.HomeServiceImpl;

@Controller
public class CustomerController {
	@Autowired
	HomeServiceImpl HomeServive;
	@RequestMapping(value="dang-ky",method = RequestMethod.GET)
	public ModelAndView DangKy()
	{
		ModelAndView mv = new ModelAndView("customer/dangky");
		//mv.setViewName("index")
		
		mv.addObject("customer", new Customer());
		return mv;
	}
	
	@RequestMapping(value="dang-ky",method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute Customer customer)
	{
		ModelAndView mv = new ModelAndView("customer/dangky");
		
		return mv;
	}
	
	@RequestMapping(value="dang-nhap",method = RequestMethod.GET)
	public ModelAndView DangNhap()
	{
		ModelAndView mv = new ModelAndView("customer/dangnhap");
		//mv.addObject("user", HomeServive.GetDataProduct());
		return mv;
	}
}
