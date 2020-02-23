package com.societymanagement.Exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalException  extends RuntimeException{
	
	
	private static final long serialVersionUID = 1L;
	
	
   @ExceptionHandler(NoHandlerFoundException.class)
   
	public ModelAndView handlerNoHandlerFoundException(NoHandlerFoundException ex)
   {
	ModelAndView mv = new ModelAndView("error");
	mv.addObject("erroeTitle","404 Not Found!");
	
	mv.addObject("errorDescription"," Sorry This Page You Are Looking For Not Available Now!");
	
	mv.addObject("title","404 Error Page");
	return mv;
   }
} 
