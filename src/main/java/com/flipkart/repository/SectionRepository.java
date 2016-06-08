package com.flipkart.repository;

import com.flipkart.domain.Section;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by root on 8/6/16.
 */
public interface SectionRepository {

    List<Section> getSectionByMediaId(Integer n , Session session ) ;
}
