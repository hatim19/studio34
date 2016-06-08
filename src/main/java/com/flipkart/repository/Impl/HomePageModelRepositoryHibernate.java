package com.flipkart.repository.Impl;

import com.flipkart.domain.Media;
import com.flipkart.models.HomePageModel;
import com.flipkart.repository.HomePageModelRepository;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by root on 8/6/16.
 */
public class HomePageModelRepositoryHibernate implements HomePageModelRepository{

    public List<HomePageModel> getMediaHome(Session session) {

        Criteria cr = session.createCriteria(HomePageModel.class);
        cr.setMaxResults(3);
        cr.setFirstResult(0);
        return (List<HomePageModel>)cr.list();
    }

    public List<HomePageModel>  getMediaByOffset( Integer n , Session session) {

        Criteria cr = session.createCriteria(HomePageModel.class);
        cr.setMaxResults(3);
        cr.setFirstResult(n);
        return (List<HomePageModel>)cr.list();
    }
}