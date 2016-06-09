package com.flipkart.controller;

import com.flipkart.models.HomePageResponse;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;



public interface DataController {


	@RequestMapping("/homeMediaList")
	ModelAndView getHomePageList();

	@RequestMapping(value="/sections/{mediaId}",method= RequestMethod.GET)
	ModelAndView getSectionList(@PathVariable("mediaId") int mediaId);

	@RequestMapping(value="/mediaListWithOffset/{episode}",method=RequestMethod.GET)
	@ResponseBody
	List<HomePageResponse> mediaListWithOffset(@PathVariable("episode") int n) ;


}
