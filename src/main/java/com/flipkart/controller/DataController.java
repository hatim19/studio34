package com.flipkart.controller;

import com.flipkart.models.HomePageResponse;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;



public interface DataController {


	@RequestMapping(value="/homeMediaList",method= RequestMethod.GET)
	ModelAndView getHomePageList(WebRequest request);

	@RequestMapping(value="/sections/{mediaId}",method= RequestMethod.GET)
	ModelAndView getSectionList(@PathVariable("mediaId") int mediaId,WebRequest request);

	@RequestMapping(value="/mediaListWithOffset/{episode}",method=RequestMethod.GET)
	@ResponseBody
	List<HomePageResponse> mediaListWithOffset(@PathVariable("episode") int n) ;

	@RequestMapping(value="/loginPage",method= RequestMethod.GET)
	String loginPage( ) ;

	@RequestMapping(value="/login",method= RequestMethod.GET)
	String googleLogin(WebRequest request);

	@RequestMapping(value="/googleLogin",method= RequestMethod.GET)
	String googleCallback(String oauthVerifier, WebRequest request);

	@RequestMapping(value="/logout",method= RequestMethod.GET)
	ModelAndView logout(WebRequest request) ;
}
