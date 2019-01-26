package com.commerceo.springmvc.controller;

import javax.servlet.ServletContext;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.commerceo.springmvc.model.LoginModel;
import com.commerceo.springmvc.service.InterfaceService;

@Controller
public class LoginController {

	@Autowired
	private InterfaceService interfaceService;
	
	@Autowired
	private HttpSession session;
	


	
	@Autowired
	ServletContext servletContext;
	
	public LoginController() {
		// TODO Auto-generated constructor stub
	}
	//login get		
		@RequestMapping(value="/login",method = RequestMethod.GET)
		public ModelAndView login(LoginModel loginModel){
			System.out.println("inside login");
			System.out.println(servletContext.getRealPath(""));
			return new ModelAndView("login","msg","Welcome to login page............");
			
		}
		//login check
		@RequestMapping(value="/login",method = RequestMethod.POST)
		public ModelAndView logincheck(@ModelAttribute("loginModel") LoginModel loginModel){
			System.out.println("inside /login check");
			String username=loginModel.getUsername();
			String pass=loginModel.getPassword();
			boolean bb=false;
			System.out.println(username);
			System.out.println(pass);
			bb=interfaceService.service_checklogin(loginModel);
			String msg1="<h1 style='color:blue;'>Hi Mr. '"+username+"'   Welcome  to our portal..</h1>";
			if(bb){
				System.out.println("logincheck post if");
				return new ModelAndView("companyprofile","msg",msg1);
			}
			else{
				System.out.println("logincheck post else");
				return new ModelAndView("loginerror","msg","failure.......");
			}
			
		}
		
		
		@RequestMapping(value="/signout",method = RequestMethod.GET)
		public ModelAndView signout(LoginModel loginModel){
			session.setAttribute("username", "");
			session.invalidate();
			return new ModelAndView("login","msg","signed out");
		}
		
}
