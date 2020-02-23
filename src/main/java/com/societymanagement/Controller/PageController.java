package com.societymanagement.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.societymanagement.DaoImpl.LoginServiceImpl;
import com.societymanagement.Entity.Admin;

@RestController
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

	@RequestMapping(value = "/checkAdminLogin", method = RequestMethod.POST)
	public ModelAndView checkLogin(@ModelAttribute Admin admin, HttpServletRequest request) {
		Admin dbadmin = loginServiceImpl.checkAdminLogin(admin.getAdminId(), admin.getAdminPassword());
		if (dbadmin != null) {
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(50*60);
			session.setAttribute("adminid", dbadmin.getAdminId());
			return new ModelAndView("redirect:/Admin");
		}else {
			ModelAndView mv = new ModelAndView("page");
			mv.addObject("title", "ADMIN lOGIN");
			mv.addObject("userclickadminlogin", true);
			mv.addObject("message","invalid username and password login again");
			return mv;
			//return new ModelAndView("redirect:/adminlogin");
		}
	}
	@RequestMapping(value = "/Admin")
	public ModelAndView adminHome() {
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("title", "ADMIN HOME");
		mv.addObject("userclicksociety", true);
		return mv;
		
	}
	
	@RequestMapping(value = "/changeAdminPwd/{id}",method = RequestMethod.PUT)
	public boolean changeAdminPwd(@RequestBody Admin admin,@PathVariable("id") String adminId)
	{
		return loginServiceImpl.changeAdminPwd(admin, adminId) ;
		
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
