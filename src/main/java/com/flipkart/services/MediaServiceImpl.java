package com.flipkart.services;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Logger;

import com.flipkart.Exceptions.IllegalDomainException;
import com.flipkart.models.GoogleResponse;
import com.flipkart.oauth.OAuthServiceProvider;
import com.flipkart.repository.MediaRepository;
import com.google.gson.Gson;
import org.hibernate.Session;
import org.scribe.model.*;
import org.scribe.oauth.OAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import com.flipkart.domain.Media;
import com.flipkart.models.HomePageResponse;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import static com.flipkart.controller.SessionAttributes.ATTR_OAUTH_ACCESS_TOKEN;
import static com.flipkart.controller.SessionAttributes.ATTR_OAUTH_REQUEST_TOKEN;
import static org.springframework.web.context.request.RequestAttributes.SCOPE_SESSION;


public class MediaServiceImpl implements MediaService{

	@Autowired
	private MediaRepository mediaRepository ;

	public String getPropValue()  {
		String Max_Retrieve = "";
		InputStream inputStream = null;
		Properties prop = new Properties();
		String propFileName = "configure.properties";
		try {
			inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);
			prop.load(inputStream);
			Max_Retrieve = prop.getProperty("Max_Retrieve");
		}catch (IOException ex){
			ex.printStackTrace();
		}finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return Max_Retrieve;
	}
	

	public List<HomePageResponse> getHomePageList(Session session , int offset ) {

		int MAX_RETRIEVE = Integer.parseInt(getPropValue());
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

	public GoogleResponse getUserProfile(OAuthServiceProvider googleServiceProvider , WebRequest request) {

		Token accessToken = (Token) request.getAttribute(ATTR_OAUTH_ACCESS_TOKEN, SCOPE_SESSION);
		if (accessToken != null) {
			System.out.print(accessToken.getToken());
			OAuthService service = googleServiceProvider.getService();
			OAuthRequest oauthRequest = new OAuthRequest(Verb.GET, "https://www.googleapis.com/oauth2/v1/userinfo?alt=json");
			service.signRequest(accessToken, oauthRequest);
			Response oauthResponse = oauthRequest.send();

			Gson gson = new Gson();
			String json = oauthResponse.getBody();
			GoogleResponse googleResponse = gson.fromJson(json, GoogleResponse.class);
			return googleResponse;
		} else {
			return new GoogleResponse();

		}
	}

	public void logout (WebRequest request) {

		request.removeAttribute(ATTR_OAUTH_ACCESS_TOKEN,SCOPE_SESSION);

	}

	public String googleLogin(WebRequest request,OAuthServiceProvider googleServiceProvider){

		ModelAndView mv ;
		Token accessToken = (Token) request.getAttribute(ATTR_OAUTH_ACCESS_TOKEN, SCOPE_SESSION);
		OAuthService service = googleServiceProvider.getService();
		if (accessToken == null) {
			request.setAttribute(ATTR_OAUTH_REQUEST_TOKEN, null, SCOPE_SESSION);
			return "redirect: " + service.getAuthorizationUrl(null) ;
		}

		OAuthRequest oauthRequest = new OAuthRequest(Verb.GET, "https://www.googleapis.com/oauth2/v1/userinfo?alt=json");
		service.signRequest(accessToken, oauthRequest);
		Response oauthResponse = oauthRequest.send();

		Gson gson = new Gson();
		String json =  oauthResponse.getBody() ;
		GoogleResponse googleResponse = gson.fromJson(json, GoogleResponse.class);
		return "redirect: /homeMediaList" ;
	}

	public String googleCallback(String oauthVerifier,WebRequest request,OAuthServiceProvider googleServiceProvider) throws  IllegalDomainException{

		OAuthService service = googleServiceProvider.getService();
		Token requestToken = (Token) request.getAttribute(ATTR_OAUTH_REQUEST_TOKEN, SCOPE_SESSION);
		Verifier verifier = new Verifier(oauthVerifier);
		Token accessToken = service.getAccessToken(requestToken, verifier);
		request.setAttribute(ATTR_OAUTH_ACCESS_TOKEN, accessToken, SCOPE_SESSION);

		OAuthRequest oauthRequest = new OAuthRequest(Verb.GET, "https://www.googleapis.com/oauth2/v1/userinfo?alt=json");
		service.signRequest(accessToken, oauthRequest);
		Response oauthResponse = oauthRequest.send();

		Gson gson = new Gson();
		String json =  oauthResponse.getBody() ;
		GoogleResponse googleResponse = gson.fromJson(json, GoogleResponse.class);

		String email = googleResponse.getEmail() ;
		if ( !email.contains("@flipkart.com") ) {
				request.setAttribute("message","Not a flipkart Domain",SCOPE_SESSION);
				throw  new IllegalDomainException("Not a Flipkart Domain");
		}
		return "redirect: /homeMediaList" ;
	}

	public boolean isLoggedIn ( WebRequest request ){

		return ((Token) request.getAttribute(ATTR_OAUTH_ACCESS_TOKEN, SCOPE_SESSION) != null) ? true : false ;
	}

	public void authenticateUser (WebRequest request) throws Exception {

		if ( isLoggedIn(request) == false ) {
			throw new Exception("Generic Exception user not logged in ");
		}

	}
}
