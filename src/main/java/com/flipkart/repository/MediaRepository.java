package com.flipkart.repository;

import com.flipkart.domain.Media;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by root on 8/6/16.
 */
public interface MediaRepository {

    Media getById(Integer id , Session session) ;

}
