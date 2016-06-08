package com.flipkart.controller.Impl;

import com.flipkart.controller.DataController;
import com.flipkart.domain.Media;
import com.flipkart.domain.Section;
import com.flipkart.models.HomePageModel;
import com.flipkart.services.MediaService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by root on 8/6/16.
 */

@Controller
public class DataControllerImpl implements DataController {


    @Autowired
    MediaService mediaService;

    @Autowired
    SessionFactory sessionFactory;

    @Transactional
    public ModelAndView getHomePageList() {
        Session session = sessionFactory.openSession();
        List<HomePageModel> mediaList = mediaService.getHomePageList(0,session);
        ModelAndView mv = new ModelAndView("home", "mediaList", mediaList);
        mv.addObject("episode",mediaList.size());
        return mv ;
    }



    public ModelAndView getSectionList(@PathVariable("mediaId") int mediaId) {

        Session session = sessionFactory.openSession();
        Media media = mediaService.getMedia(mediaId,session) ;
        List<Section> sectionList = media.getSection() ;
        ModelAndView mv = new ModelAndView("sections","sectionList", sectionList);
        mv.addObject("media",media);
        return mv ;

    }




    public List<HomePageModel> showMore(@PathVariable("episode") int n) {
        Session session = sessionFactory.openSession();
        List<HomePageModel> mediaList = mediaService.getHomePageList(n,session);
        return mediaList;
    }

}
