package com.societymanagement.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.societymanagement.DaoImpl.LoginServiceImpl;
import com.societymanagement.Entity.Admin;
import com.societymanagement.Entity.Member;

@Controller
public class PageController {

	@Autowired
	LoginServiceImpl loginServiceImpl;

	@RequestMapping(value = "/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "HOME");
		mv.addObject("userclickhome", true);
		return mv;

	}

	@RequestMapping(value = "/adminlogin")
	public ModelAndView adminLogin() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "ADMIN lOGIN");
		mv.addObject("userclickadminlogin", true);
		return mv;

	}

	@RequestMapping(value = "/checAdminkLogin", method = RequestMethod.POST)
	public ModelAndView checkLogin(@ModelAttribute Admin admin, HttpServletRequest request) {
		Admin dbadmin = loginServiceImpl.checkAdminLogin(admin.getAdminId(), admin.getAdminPassword());
		if (dbadmin != null) {
			HttpSession session = request.getSession();
			session.setAttribute("username", dbadmin.getAdminId());
			session.setAttribute("password", dbadmin.getAdminPassword());
			session.setMaxInactiveInterval(0);
			return new ModelAndView("redirect:/adminHome");
		}
		
		ModelAndView mv = new ModelAndView("adminlogin");
		mv.addObject("message" ,"Invalid User Name Or Password");
		return mv;
	}
	@RequestMapping(value = "/adminHome")
	public ModelAndView adminHome() {
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("title", "ADMIN HOME");
		return mv;

	}
	
	@RequestMapping(value = "/adminLogout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "USER lOGIN");
		mv.addObject("userclicklogin", true);
		return mv;

	}

}
