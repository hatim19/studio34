package com.flipkart.services;

import java.io.IOException;
import java.util.List;

import com.flipkart.models.GoogleResponse;
import com.flipkart.oauth.OAuthServiceProvider;
import org.hibernate.Session;
import com.flipkart.domain.Media;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;


public interface MediaService {

	 
	public List getHomePageList(Session session ,int offset) ;
	
	public Media getMedia(Session session, int mediaId) ;

	public String streamIt( ) ;

	public GoogleResponse getUserProfile(OAuthServiceProvider googleServiceProvider, WebRequest request) ;

	public boolean logout(WebRequest request) ;

	public String googleLogin(WebRequest request,OAuthServiceProvider googleServiceProvider) ;

	public String googleCallback(String oauthVerifier,WebRequest request,OAuthServiceProvider googleServiceProvider);
}
