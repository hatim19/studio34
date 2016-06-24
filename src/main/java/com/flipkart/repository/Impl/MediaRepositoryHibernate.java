package com.flipkart.repository.Impl;

import com.amazonaws.services.dynamodbv2.xspec.L;
import com.amazonaws.services.dynamodbv2.xspec.M;
import com.amazonaws.services.dynamodbv2.xspec.S;
import com.flipkart.domain.Media;
import com.flipkart.domain.Section;
import com.flipkart.models.HomePageResponse;
import com.flipkart.models.SuggestionResponse;
import com.flipkart.repository.MediaRepository;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
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
        cr.addOrder(Order.desc("createdAt"));
        cr.setMaxResults(limit);
        cr.setFirstResult(offset);
        return (List<Media>)cr.list();
    }

    public List<SuggestionResponse> getMediaWithString(Session session, String q ){

        List<SuggestionResponse> suggestionResponseList = new ArrayList<SuggestionResponse>() ;
        Criteria cr = session.createCriteria(Media.class);
        cr.addOrder(Order.desc("createdAt"));
        cr.add(Restrictions.not(Restrictions.like("data", "%"+q+"%")));
        List<Media> mediaList = (List<Media>)cr.list();
        System.out.println("media size: "+mediaList.size());

        int i,  j ;
        for (  i = 0 ; i < mediaList.size(); i++ ){
            List<Section> sectionList= mediaList.get(i).getSection();
            System.out.println("section size: "+sectionList.size());
            for (  j = 0 ; j < sectionList.size();j++){
                if ( sectionList.get(j).getData().contains(q) ){
                    SuggestionResponse suggestionResponse = new SuggestionResponse() ;
                    suggestionResponse.setData(sectionList.get(j).getData());
                    suggestionResponse.setMedia(mediaList.get(i));
                    suggestionResponseList.add(suggestionResponse);
                    break;
                }
            }
        }
        cr = session.createCriteria(Media.class);
        cr.addOrder(Order.desc("createdAt"));
        cr.add( Restrictions.like("data", "%"+q+"%") );
        mediaList = (List<Media>)cr.list() ;
        System.out.println("media size2: "+mediaList.size());

        for (  i = 0 ; i < mediaList.size(); i++ ){
            SuggestionResponse suggestionResponse = new SuggestionResponse() ;
            suggestionResponse.setData(mediaList.get(i).getData());
            suggestionResponse.setMedia(mediaList.get(i));
            suggestionResponseList.add(suggestionResponse);
        }
        return   suggestionResponseList ;
    }

}
