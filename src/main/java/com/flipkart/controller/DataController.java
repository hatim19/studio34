package com.flipkart.controller;

import java.util.List;

import javax.transaction.Transactional;

import com.flipkart.domain.Section;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.flipkart.domain.Media;
import com.flipkart.models.HomePageModel;
import com.flipkart.services.MediaService;



public interface DataController {


	@RequestMapping("/home")
	ModelAndView getHomePageList();

	@RequestMapping(value="/sections/{mediaId}",method= RequestMethod.GET)
	ModelAndView getSectionList(@PathVariable("mediaId") Integer mediaId);

	@RequestMapping(value="/showMore/{episode}",method=RequestMethod.GET)
	@ResponseBody
	List<HomePageModel> showMore(@PathVariable("episode") Integer n) ;


}
