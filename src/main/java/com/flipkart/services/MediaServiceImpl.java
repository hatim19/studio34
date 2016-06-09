package com.flipkart.services;

import java.util.ArrayList;
import java.util.List;

import com.flipkart.repository.MediaRepository;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import com.flipkart.domain.Media;
import com.flipkart.models.HomePageResponse;

public class MediaServiceImpl implements MediaService {

	@Autowired
	private MediaRepository mediaRepository ;

	private final int MAX_RETRIEVE = 3 ;
	

	public List<HomePageResponse> getHomePageList(Session session , int offset ) {

		List<Media> mediaList = mediaRepository.getMediaHome( session , offset, MAX_RETRIEVE) ;
		List<HomePageResponse> homePageResponseList = new ArrayList<HomePageResponse>( );
		for( Media media : mediaList ){
			HomePageResponse homePageResponse = new HomePageResponse() ;
			homePageResponse.setId(media.getId());
			homePageResponse.setImageName(media.getImageName());

			homePageResponseList.add(homePageResponse);
		}
		return homePageResponseList;
	}
	
	public Media getMedia( Session session , int mediaId ){

			return mediaRepository.getById(session,mediaId);
	}


}
