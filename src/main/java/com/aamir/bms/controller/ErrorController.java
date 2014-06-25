package com.aamir.bms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErrorController {

	@RequestMapping(value = "/error400", method = RequestMethod.GET)
	public String error400(){
		return "error400";
	}
	
	@RequestMapping(value = "/error404", method = RequestMethod.GET)
	public String error404(){
		return "error404";
	}
	
	@RequestMapping(value = "/error500", method = RequestMethod.GET)
	public String error500(){
		return "error500";
	}
}
