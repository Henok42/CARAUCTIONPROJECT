package edu.mum.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import edu.mum.domain.User;
import edu.mum.service.UserService;

@Component
@ControllerAdvice
public class ControllerExceptionHandler {

	   public static final String DEFAULT_ERROR_VIEW = "error";
	   
	   @Autowired
	   UserService userService;
	   
	   @ModelAttribute("currentUser")
	   public User GetCurrentUser()
	   {
		   return userService.getUser(1L);		   
	   }


	  @ExceptionHandler(value = AccessDeniedException.class)
	    public String accessDenied() {
	        return  "error-forbidden" ;
	    }
	  
	  @ExceptionHandler(value = IllegalStateException.class)
	    public String illegalState() {
	        return  "error" ;
	    }
	  
	  
	    @ExceptionHandler(value = Exception.class)
	    public ModelAndView defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {
	        
	        if (AnnotationUtils.findAnnotation(e.getClass(), ResponseStatus.class) != null)
	            throw e;

	        ModelAndView mav = new ModelAndView();
	        mav.addObject("exception", e);
	        mav.addObject("url", req.getRequestURL());
	        mav.setViewName(DEFAULT_ERROR_VIEW);
	        return mav;
	    }

}
