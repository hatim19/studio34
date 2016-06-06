package com.flipkart.controller;

import com.flipkart.services.MediaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class DataController {
		
@Autowired
MediaService mediaService;
	
 @RequestMapping("/home")
 public ModelAndView getHomeMediaList() {
  List<Object[]> mediaList = mediaService.getList();
  ModelAndView mv = new ModelAndView("home", "mediaList", mediaList);
  mv.addObject("episode",mediaList.size());
  return mv ;
 } 
 
 @RequestMapping(value="/showMore/{episode}",method=RequestMethod.GET)
 public @ResponseBody List<Object[]> showMore(@PathVariable("episode") Integer n) {
	  List<Object[]> mediaList = mediaService.getListOffset(n);
	  return mediaList;
} 

}