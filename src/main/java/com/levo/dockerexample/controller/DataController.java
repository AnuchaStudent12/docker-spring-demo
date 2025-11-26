package com.levo.dockerexample.controller;

import java.util.Date;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("data")
public class DataController {
	
	@RequestMapping(value = "/time-now", method = RequestMethod.GET)
	public String getTimenow() {
	    return new Date().toString();
	}

}
