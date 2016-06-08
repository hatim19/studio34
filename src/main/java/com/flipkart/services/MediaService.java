package com.flipkart.services;

import java.util.List;

import com.flipkart.domain.Section;
import org.hibernate.Session;
import com.flipkart.domain.Media;
import com.flipkart.models.HomePageModel;


public interface MediaService {

	public List<HomePageModel> getHomePageList(Session session);
	 
	public List getHomePageListOffset(Integer lastEpisode, Session session);
	
	public Media getMedia(Integer id, Session session) ;
	
	public List<Section> getSectionByMediaId(Integer id, Session session) ;
}
