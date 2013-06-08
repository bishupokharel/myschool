package com.bishu.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/index/")
public class IndexController {

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String indexMethod(ModelMap model) {
		model.addAttribute("message", " Hello Bishu123 !!!");
		return "/index/index";
	}
	
	
	@RequestMapping(value = "index2", method = RequestMethod.GET)
	public String index2Method(ModelMap model) {
		model.addAttribute("message", " Hello Bishu123!!!");
		return "/index/index2";
	}
	
	
}
