package com.flipkart.controller;

import com.flipkart.Exceptions.IllegalDomainException;
import com.flipkart.models.HomePageResponse;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;



public interface DataController {


	@RequestMapping(value="/homeMediaList",method= RequestMethod.GET)
	ModelAndView getHomePageList(WebRequest request) throws Exception;

	@RequestMapping(value="/sections/{mediaId}",method= RequestMethod.GET)
	ModelAndView getSectionList(@PathVariable("mediaId") int mediaId,WebRequest request)throws Exception;

	@RequestMapping(value="/mediaListWithOffset/{episode}",method=RequestMethod.GET)
	@ResponseBody
	List<HomePageResponse> mediaListWithOffset(@PathVariable("episode") int n,WebRequest request) throws Exception;

	@RequestMapping(value="/loginPage",method= RequestMethod.GET)
	ModelAndView loginPage(WebRequest request) ;

	@RequestMapping(value="/login",method= RequestMethod.GET)
	String googleLogin(WebRequest request) ;

	@RequestMapping(value="/googleLogin",method= RequestMethod.GET)
	String googleCallback(String oauthVerifier, WebRequest request) throws IllegalDomainException;

	@RequestMapping(value="/logout",method= RequestMethod.GET)
	ModelAndView logout(WebRequest request) throws Exception;

	@ExceptionHandler(Exception.class)
	ModelAndView UserNotLogInException( Exception ex);

	@ExceptionHandler(IllegalDomainException.class)
	ModelAndView IllegalDomainException( IllegalDomainException ex);
}
