package com.flipkart.services;

import java.util.List;

import org.hibernate.Session;

import com.flipkart.domain.Media;
import com.flipkart.models.HomePageModel;
import com.flipkart.models.SectionModel;

public interface MediaService {

	public List<HomePageModel> getList(Session session);
	 
	public List getListOffset(Integer lastEpisode, Session session);
	
	public Media getMedia(Integer id, Session session) ;
	
	public List<SectionModel> getSectionList(Integer id, Session session) ;
}
