package com.commerceo.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {

	        // companyprofile
			@RequestMapping(value = "/companyprofile", method = RequestMethod.GET)
			public ModelAndView index1() {
				return new ModelAndView("companyprofile", "msg", "message");
			}
}
