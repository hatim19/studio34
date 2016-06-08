package com.flipkart.repository.Impl;

import com.flipkart.domain.Media;
import com.flipkart.models.HomePageModel;
import com.flipkart.repository.MediaRepository;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by root on 8/6/16.
 */
public class MediaRepositoryHibernate implements MediaRepository {



        public Media getById( int id , Session session) {

            Criteria cr = session.createCriteria(Media.class);
            cr.add(Restrictions.eq("id", id));
            return (Media)cr.uniqueResult();

        }

    public List<HomePageModel> getMediaHome(int n , Session session , int m) {

        Criteria cr = session.createCriteria(Media.class);
        cr.setMaxResults(m);
        cr.setFirstResult(n);
        List<Media> mediaList = (List<Media>)cr.list();

        List<HomePageModel> homePageModelList = new ArrayList<HomePageModel>( );
        for( Media media : mediaList ){
            HomePageModel homePageModel = new HomePageModel() ;
            homePageModel.setId(media.getId());
            homePageModel.setImageName(media.getImageName());

            homePageModelList.add(homePageModel);
        }

        return homePageModelList ;

    }

}
