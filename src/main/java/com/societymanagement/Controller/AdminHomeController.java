package com.societymanagement.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
@RestController
public class AdminHomeController {
	
	@RequestMapping(value = "/Society")
	public ModelAndView society() {
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("title", "ADMIN HOME");
		mv.addObject("userclicksociety", true);
		return mv;

	}
	@RequestMapping(value = "/Member")
	public ModelAndView member() {
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("title", "ADMIN HOME");
		mv.addObject("userclickmember", true);
		return mv;

	}
	@RequestMapping(value = "/Block")
	public ModelAndView block() {
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("title", "ADMIN HOME");
		mv.addObject("userclickblock", true);
		return mv;

	}
	@RequestMapping(value = "/Facilitator")
	public ModelAndView facilitator() {
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("title", "ADMIN HOME");
		mv.addObject("userclickfacilitator", true);
		return mv;

	}
	@RequestMapping(value = "/FundCategory")
	public ModelAndView fundCategory() {
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("title", "ADMIN HOME");
		mv.addObject("userclickfundcategory", true);
		return mv;

	}
	@RequestMapping(value = "/ExpenseCategory")
	public ModelAndView expenseCategory() {
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("title", "ADMIN HOME");
		mv.addObject("userclickexpensecategory", true);
		return mv;

	}
	@RequestMapping(value = "/SocietyMemberList")
	public ModelAndView societyMemberList() {
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("title", "ADMIN HOME");
		mv.addObject("userclickmember", true);
		mv.addObject("userclicksocietymemberlist", true);
		return mv;

	}
	
}
