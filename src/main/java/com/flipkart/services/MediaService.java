package com.flipkart.services;

import java.util.List;

import com.flipkart.domain.Section;
import org.hibernate.Session;
import com.flipkart.domain.Media;
import com.flipkart.models.HomePageModel;


public interface MediaService {

	 
	public List getHomePageList(int n, Session session );
	
	public Media getMedia(int id, Session session) ;

}
