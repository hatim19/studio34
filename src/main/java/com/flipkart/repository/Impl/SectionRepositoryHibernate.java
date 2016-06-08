package com.flipkart.repository.Impl;

import com.flipkart.domain.Section;
import com.flipkart.repository.SectionRepository;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by root on 8/6/16.
 */
public class SectionRepositoryHibernate implements SectionRepository {

    public List<Section> getSectionByMediaId(Integer mediaId , Session session ) {


        Criteria cr = session.createCriteria(Section.class);
        cr.add(Restrictions.eq("mediaId", mediaId));
        return (List<Section>)cr.list();

    }


}
