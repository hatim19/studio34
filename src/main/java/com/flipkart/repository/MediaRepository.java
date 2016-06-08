package com.flipkart.repository;

import com.flipkart.domain.Media;
import com.flipkart.models.HomePageModel;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by root on 8/6/16.
 */
public interface MediaRepository {

    Media getById(int id , Session session) ;
    List<HomePageModel> getMediaHome(int n , Session session , int m) ;
}
