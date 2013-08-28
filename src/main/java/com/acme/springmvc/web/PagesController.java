package com.acme.springmvc.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.common.base.CaseFormat;

@Controller
public class PagesController {

	@RequestMapping(value = "/pages/{page}")
	public String page(@PathVariable String page) {
		return "pages/"
				+ CaseFormat.LOWER_HYPHEN.to(CaseFormat.LOWER_CAMEL, page);
	}
}
