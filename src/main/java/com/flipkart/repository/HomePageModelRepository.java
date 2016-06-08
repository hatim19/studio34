package com.flipkart.repository;

import com.flipkart.models.HomePageModel;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by root on 8/6/16.
 */
public interface HomePageModelRepository {

    List<HomePageModel>  getMediaHome(Session session) ;

    List<HomePageModel>  getMediaByOffset( Integer n , Session session) ;
}
