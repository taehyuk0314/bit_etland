package com.bit_etland.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bit_etland.web.domain.CustomerDTO;
import com.bit_etland.web.service.CustomerService;
@SessionAttributes("cust")
@Controller
@RequestMapping("/customer")
public class CustomerController {
	static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	@Autowired CustomerDTO cust;
	@Autowired CustomerService customerService;
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String signin(@ModelAttribute CustomerDTO param,Model session) {
		logger.info("\n --------- MemberController {} !! ----------","signin");
		System.out.println("로그인전 : "+param.toString());
		cust = customerService.retrieveCustomer(param);
		System.out.println("로그인 후 결과: "+cust);
		if(cust!=null) {session.addAttribute("cust", cust);}
		
		return (cust!=null)? "public:customer/detail.tiles" :"public:home/main.tiles";
	}
	@RequestMapping("/detail")
	public String detail(@RequestParam("customerID")String customerID, Model model) {
		cust.setCustomerID(customerID);
		cust= customerService.retrieveCustomer(cust);
		model.addAttribute("cust", cust);
		return "public:customer/detail.tiles";
	}
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(@ModelAttribute CustomerDTO param,Model session, RedirectAttributes red) {
		
		customerService.modifyCustomer(param);
		session.addAttribute("cust", customerService.retrieveCustomer(param));
		red.addAttribute("customerID",param.getCustomerID());
		return "redirect:/customer/detail";
	}
}
