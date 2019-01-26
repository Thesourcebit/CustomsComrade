package com.commerceo.springmvc.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.commerceo.springmvc.dao.InterfaceDao;
import com.commerceo.springmvc.model.ContactusModel;

import com.commerceo.springmvc.service.InterfaceService;

@Controller
public class CommonController {
	@Autowired
	private InterfaceService interfaceService;
	@SuppressWarnings("unused")
	@Autowired
	private InterfaceDao interfaceDao;

	@Autowired
	ServletContext servletContext;

	public CommonController() {}

		// index
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public ModelAndView index1() {
			return new ModelAndView("index", "msg", "message");
		}
		
		// index
	    @RequestMapping(value = "/index", method = RequestMethod.GET)
	    public ModelAndView index2() {
		return new ModelAndView("index", "msg", "message");
	    }
	
	    // index
		@RequestMapping(value = "/home", method = RequestMethod.GET)
		public ModelAndView index3() {
			return new ModelAndView("index", "msg", "message");
		}
		
		// aboutus
		@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
		public ModelAndView aboutusPage() {
			return new ModelAndView("index", "msg", "aboutus page...");
		}
		
		
	    // contactus
	    @RequestMapping(value = "/contactus", method = RequestMethod.GET)
	    public ModelAndView contactPage(ContactusModel contactUs) {
		 return new ModelAndView("contactus", "msg", "message");
	     }

	     // savecontactus
	     @RequestMapping(value = "/contactussave", method = RequestMethod.POST)
	     public ModelAndView contactUs(@ModelAttribute("contactUs") ContactusModel contactUs) {

		 boolean bb = false;
		 bb = interfaceService.service_contactUs(contactUs);

		 String msg = "Successfully Contact Sent";
		 String msg1 = "something went wrong try again later";
		 if (bb) {
			return new ModelAndView("sucreg", "msg", msg);
		 } else {
			return new ModelAndView("failure", "msg", msg1);
		     }
	      }

	

	
}
