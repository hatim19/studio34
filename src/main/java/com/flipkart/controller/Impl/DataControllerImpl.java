package com.flipkart.controller.Impl;

import com.flipkart.controller.DataController;
import com.flipkart.domain.Media;
import com.flipkart.domain.Section;
import com.flipkart.models.GoogleResponse;
import com.flipkart.models.HomePageResponse;
import com.flipkart.oauth.OAuthServiceProvider;
import com.flipkart.services.MediaService;
import com.google.gson.Gson;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.scribe.model.*;
import org.scribe.oauth.OAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import javax.transaction.Transactional;
import java.util.List;


/**
 * Created by root on 8/6/16.
 */

@Controller
public class DataControllerImpl  implements  DataController{


    @Autowired
    MediaService mediaService;

    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    @Qualifier("googleServiceProvider")
    private OAuthServiceProvider googleServiceProvider;

    private static final Token EMPTY_TOKEN = null;


    @Transactional
    public ModelAndView getHomePageList(WebRequest request) throws Exception {

        if ( mediaService.isLoggedIn(request) == false ) {
            throw new Exception("Generic Exception user not logged in ");
        }
        Session session = sessionFactory.openSession();
        List<HomePageResponse> mediaList = mediaService.getHomePageList(session,0);
        GoogleResponse googleResponse = mediaService.getUserProfile(googleServiceProvider,request) ;
        ModelAndView mv = new ModelAndView("home1", "mediaList", mediaList);
        mv.addObject("episode",mediaList.size());
        mv.addObject("userProfile",googleResponse) ;
        return mv ;
    }


    public ModelAndView getSectionList(@PathVariable("mediaId") int mediaId,WebRequest request)
    throws Exception {

        if ( mediaService.isLoggedIn(request) == false ) {
            throw new Exception("Generic Exception user not logged in ");
        }
        Session session = sessionFactory.openSession();
        Media media = mediaService.getMedia(session,mediaId) ;
        List<Section> sectionList = media.getSection() ;
        GoogleResponse googleResponse = mediaService.getUserProfile(googleServiceProvider,request) ;
        ModelAndView mv = new ModelAndView("sections1","sectionList", sectionList);
        mv.addObject("media",media);
        mv.addObject("userProfile",googleResponse) ;
        return mv ;

    }



    public List<HomePageResponse> mediaListWithOffset(@PathVariable("episode") int n,WebRequest request)
    throws Exception{
        if ( mediaService.isLoggedIn(request) == false ) {
            throw new Exception("Generic Exception user not logged in ");
        }
        Session session = sessionFactory.openSession();
        List<HomePageResponse> mediaList = mediaService.getHomePageList(session,n);
        return mediaList;
    }

    public  ModelAndView  logout(WebRequest request) throws Exception {
        if ( mediaService.isLoggedIn(request) == false ) {
            throw new Exception("Generic Exception user not logged in ");
        }
        boolean flag = mediaService.logout(request) ;
        return (flag==true ? new ModelAndView("redirect: /loginPage") : new ModelAndView("redirect: /loginPage")) ;
    }

    public String loginPage( ) {
        return "loginPage";}


    public String googleLogin(WebRequest request) {
        return mediaService.googleLogin(request,googleServiceProvider) ;
    }

    public  String googleCallback(@RequestParam(value="code", required=false) String oauthVerifier, WebRequest request) {
        return mediaService.googleCallback(oauthVerifier,request,googleServiceProvider);
    }

    public ModelAndView handleEmployeeNotFoundException( Exception ex) {
        System.out.print(ex.getMessage());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect: /login");
        return modelAndView;
    }

}
