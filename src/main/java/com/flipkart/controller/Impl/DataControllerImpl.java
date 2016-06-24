package com.flipkart.controller.Impl;

import com.amazonaws.services.dynamodbv2.xspec.M;
import com.amazonaws.services.dynamodbv2.xspec.S;
import com.flipkart.Exceptions.IllegalDomainException;
import com.flipkart.Exceptions.UserNotLoginException;
import com.flipkart.controller.DataController;
import com.flipkart.domain.Media;
import com.flipkart.domain.Section;
import com.flipkart.models.GoogleResponse;
import com.flipkart.models.HomePageResponse;
import com.flipkart.models.SuggestionResponse;
import com.flipkart.oauth.OAuthServiceProvider;
import com.flipkart.services.MediaService;
import com.google.gson.Gson;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.http.*;
import org.apache.http.HttpRequest;
import org.apache.http.HttpStatus;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.scribe.model.*;
import org.scribe.oauth.OAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.*;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.SessionScope;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import javax.transaction.Transactional;
import java.io.*;
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
    public ModelAndView getHomePageList( WebRequest request,@RequestParam(value = "q",defaultValue = "null") String q ) throws UserNotLoginException {

        mediaService.authenticateUser(request);
        System.out.println(q);

        Session session = sessionFactory.openSession();
        List<SuggestionResponse> suggestionResponseList  ;
        if ( q != "null" )
        {
            suggestionResponseList = mediaService.getSuggestions(session,q) ;}
        else {suggestionResponseList = null ;}


        List<Media> mediaList = mediaService.getHomePageList(session,0);
        GoogleResponse googleResponse = mediaService.getUserProfile(googleServiceProvider,request) ;
        ModelAndView mv = new ModelAndView("home", "mediaList", mediaList);
        mv.addObject("episode",mediaList.size());
        mv.addObject("userProfile",googleResponse) ;
        mv.addObject("suggestionResponseList",suggestionResponseList);
        mv.addObject("q",q);
        return mv ;
    }


    public ModelAndView getSectionList(@PathVariable("mediaId") int mediaId,WebRequest request)
    throws Exception {
        mediaService.authenticateUser(request);
        Session session = sessionFactory.openSession();
        Media media = mediaService.getMedia(session,mediaId) ;
        List<Section> sectionList = media.getSection() ;
        GoogleResponse googleResponse = mediaService.getUserProfile(googleServiceProvider,request) ;
        ModelAndView mv = new ModelAndView("playerPage","sectionList", sectionList);
        mv.addObject("media",media);
        mv.addObject("userProfile",googleResponse) ;
        return mv ;
    }



    public List<Media> mediaListWithOffset(@PathVariable("episode") int n,WebRequest request)
    throws Exception{
        mediaService.authenticateUser(request);
        Session session = sessionFactory.openSession();
        List<Media> mediaList = mediaService.getHomePageList(session,n);
        return mediaList;
    }

    public  ModelAndView  logout(WebRequest request) throws Exception {
        mediaService.authenticateUser(request);
        mediaService.logout(request) ;
        return new ModelAndView("redirect: /loginPage") ;
    }

    public ModelAndView loginPage(WebRequest request) {
        String message = (String)request.getAttribute("message", RequestAttributes.SCOPE_SESSION);

        if ( message == null ){
            message = "" ;
        }else{
            request.setAttribute("message","",RequestAttributes.SCOPE_SESSION);
        }
        return new ModelAndView("login","message",message);}


    public String googleLogin(WebRequest request) {
        return mediaService.googleLogin(request,googleServiceProvider) ;
    }

    public  String googleCallback(@RequestParam(value="code", required=false) String oauthVerifier, WebRequest request) throws IllegalDomainException{
        return mediaService.googleCallback(oauthVerifier,request,googleServiceProvider);
    }

    public ModelAndView UserNotLogInException( UserNotLoginException ex) {
        System.out.print("Exception Caught");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect: /loginPage");
        return modelAndView;
    }

    public ModelAndView IllegalDomainException ( IllegalDomainException ex ){
        System.out.print("Illegal Domain Exception Caught");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect: /logout");
        return modelAndView;
    }

    static  byte[]  aa;

    public HttpEntity<byte[]> sendDataUri(){
        InputStream input = null ;
        if(aa==null) {
            try {
                input = new FileInputStream(new File("/home/hatim.ali/flipkart/studio34/src/main/resources/nursery64.mp3"));
                aa = IOUtils.toByteArray(input);
            } catch (IOException ex) {
            }
        }
        HttpHeaders header = new HttpHeaders();
        header.setContentType(new MediaType("audio", "mpeg"));
        //header.setContentLength(aa.length);
        //header.set("Content-Disposition", "filename=a.mp3");
        return new HttpEntity<byte[]>(aa, header);

    }



//    public ResponseEntity sendDataUri(){
//        InputStream input = null ;
//        if(aa==null) {
//            try {
//                input = new FileInputStream(new File("/home/hatim.ali/flipkart/studio34/src/main/resources/nursery64.mp3"));
//                aa = IOUtils.toByteArray(input);
//            } catch (IOException ex) {
//            }
//        }
//        HttpHeaders headers = new HttpHeaders();
//        headers.setContentType(new MediaType("audio", "mpeg"));
//        headers.setContentLength(aa.length);
//        headers.set("Content-Disposition", "filename=a.mp3");
//        InputStreamResource inputStreamResource = new InputStreamResource(new ByteArrayInputStream(aa));
//        return new ResponseEntity(inputStreamResource, headers, org.springframework.http.HttpStatus.OK);
//    }

    public String play( ) {
        return "playDataUri" ;
    }

//    public ResponseEntity sendDataUri(){
//        InputStream input = null ;
//        if(aa==null) {
//            try {
//                input = new FileInputStream(new File("/home/hatim.ali/flipkart/studio34/src/main/resources/nursery64.mp3"));
//                aa = IOUtils.toByteArray(input);
//            } catch (IOException ex) {
//            }
//        }
//        HttpHeaders headers = new HttpHeaders();
//        headers.setContentType(new MediaType("audio", "mpeg"));
//        headers.setContentLength(aa.length);
//        headers.set("Content-Disposition", "filename=a.mp3");
//
//        return new ResponseEntity(aa, headers, HttpStatus.OK);
//    }

}
