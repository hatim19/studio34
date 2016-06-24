package com.flipkart.repository;

import com.flipkart.domain.Media;
import com.flipkart.models.HomePageResponse;
import com.flipkart.models.SuggestionResponse;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by root on 8/6/16.
 */
public interface MediaRepository {

    Media getById(Session session, int id) ;
    List<Media> getMediaHome(Session session, int offset , int limit);
    List<SuggestionResponse> getMediaWithString(Session session, String q) ;
}
