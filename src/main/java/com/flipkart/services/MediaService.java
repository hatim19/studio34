package com.flipkart.services;

import java.util.List;

import org.hibernate.Session;
import com.flipkart.domain.Media;


public interface MediaService {

	 
	public List getHomePageList(Session session ,int offset);
	
	public Media getMedia(Session session, int mediaId) ;

}
