package com.flipkart.repository.Impl;

import com.flipkart.domain.Media;
import com.flipkart.models.HomePageResponse;
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



    public Media getById(Session session, int id) {

        Criteria cr = session.createCriteria(Media.class);
        cr.add(Restrictions.eq("id", id));
        return (Media)cr.uniqueResult();

    }

    public List<Media> getMediaHome(Session session, int offset , int limit) {

        Criteria cr = session.createCriteria(Media.class);
        cr.setMaxResults(limit);
        cr.setFirstResult(offset);
        return (List<Media>)cr.list();
    }

}
