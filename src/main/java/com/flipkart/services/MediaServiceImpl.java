package com.flipkart.services;

import java.util.List;

import com.flipkart.repository.MediaRepository;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import com.flipkart.domain.Media;
import com.flipkart.models.HomePageModel;

public class MediaServiceImpl implements MediaService {

	@Autowired
	private MediaRepository mediaRepository ;

	private final int MAX_RETRIEVE = 3 ;
	

	public List<HomePageModel> getHomePageList(int n, Session session) {

		return mediaRepository.getMediaHome( n, session , MAX_RETRIEVE) ;
	}
	
	public Media getMedia(int id,Session session){

			return mediaRepository.getById(id,session);
	}


}
