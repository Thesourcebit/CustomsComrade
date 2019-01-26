package com.commerceo.springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.commerceo.springmvc.model.InvoiceModel;
import com.commerceo.springmvc.model.SignupModel;

@Controller
public class InvoiceController {
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping(value="/invoice",method=RequestMethod.GET)
	public ModelAndView invoice1 (InvoiceModel invoiceModel) {
		return new ModelAndView("invoice1","msg","hi");
	}
	
	@RequestMapping(value="/invoicesharp",method=RequestMethod.POST)
	public ModelAndView invoice3 (@ModelAttribute("invoiceModel") InvoiceModel invoiceModel) {
	//	session.setAttribute("invoiceModel", invoiceModel );
		ModelAndView mav =new ModelAndView();	
		mav.setViewName("invoice2");
		 mav.addObject("invoicenumber", invoiceModel.getInvoicenumber());
		 
		return mav;
	}
	
	@RequestMapping(value="/invoiceelegant",method=RequestMethod.POST)
	public ModelAndView invoice2 (@ModelAttribute("invoiceModel") InvoiceModel invoiceModel) {
		session.setAttribute("invoiceModel", invoiceModel );
		
		return new ModelAndView("invoice3","msg","hi");
	}
	
	
}
