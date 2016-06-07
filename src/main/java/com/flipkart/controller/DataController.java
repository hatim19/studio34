package com.flipkart.controller;

import java.util.List;

import javax.transaction.Transactional;

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
import com.flipkart.models.SectionModel;
import com.flipkart.models.HomePageModel;
import com.flipkart.services.MediaService;


@Controller
public class DataController {
	
			
	@Autowired
	MediaService mediaService;
	
	@Autowired
	SessionFactory sessionFactory;
	 
	 @Transactional
	 @RequestMapping("/home")
	 public ModelAndView getHomePageList() {
		 Session session = sessionFactory.openSession();
		 List<HomePageModel> mediaList = mediaService.getList(session);
		 ModelAndView mv = new ModelAndView("home", "mediaList", mediaList);
  
		 for (HomePageModel entity : mediaList) {
			 mv.addObject("access",entity.getImageName());
			 break;
		 }
  
		 mv.addObject("episode",mediaList.size());
		 return mv ;
	 } 

	 
	 @RequestMapping(value="/sections/{id}",method=RequestMethod.GET)
	 public ModelAndView getSectionList(@PathVariable("id") Integer id) {
		 
		 Session session = sessionFactory.openSession();
		 List<SectionModel> sectionList = mediaService.getSectionList(id,session);
		 Media media = mediaService.getMedia(id,session) ;
		 ModelAndView mv = new ModelAndView("sections","sectionList", sectionList);
		 mv.addObject("media",media);
		 return mv ;
	 
	 } 
	 
	 
	 
	 @RequestMapping(value="/showMore/{episode}",method=RequestMethod.GET)
	 public @ResponseBody List<HomePageModel> showMore(@PathVariable("episode") Integer n) {
		 	
		  Session session = sessionFactory.openSession();
		  List<HomePageModel> mediaList = mediaService.getListOffset(n,session);
		  return mediaList;
	} 

	
}
