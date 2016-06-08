package com.flipkart.services;

import java.util.List;

import com.flipkart.domain.Section;
import com.flipkart.repository.HomePageModelRepository;
import com.flipkart.repository.MediaRepository;
import com.flipkart.repository.SectionRepository;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import com.flipkart.domain.Media;
import com.flipkart.models.HomePageModel;

public class MediaServiceImpl implements MediaService {

	@Autowired
	private MediaRepository mediaRepository ;

	@Autowired
	private HomePageModelRepository homePageModelRepository ;

	@Autowired
	private SectionRepository sectionRepository;


	

	public List<HomePageModel> getHomePageList(Session session) {

		return homePageModelRepository.getMediaHome(session) ;
	}
	
	public List<Section> getSectionByMediaId(Integer mediaId, Session session) {

		return sectionRepository.getSectionByMediaId( mediaId , session ) ;
	}
	
	public Media getMedia(Integer id,Session session){

			return mediaRepository.getById(id,session);
	}

	
	public List<HomePageModel> getHomePageListOffset(Integer Episode,Session session) {

		return homePageModelRepository.getMediaByOffset(Episode,session);
	}


}
