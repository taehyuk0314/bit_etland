package com.bit_etland.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit_etland.web.domain.CustomerDTO;

@Controller
@RequestMapping("/customer")
public class MemberController {
	static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String signin(@ModelAttribute CustomerDTO customer) {
		logger.info("\n --------- MemberController {} !! ----------","signin");
		System.out.println(customer.toString());
		return "public:category/list.tiles";
	}
}
