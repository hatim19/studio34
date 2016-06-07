package com.flipkart.services;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.flipkart.domain.Media;
import com.flipkart.models.SectionModel;
import com.flipkart.models.HomePageModel;

public class MediaServiceImpl implements MediaService {
	
	
	public List<HomePageModel> getList(Session session) {
		  //return dataDao.getList();		
		 
		 @SuppressWarnings("unchecked")
		List<HomePageModel> mediaList = (List<HomePageModel>) session.createSQLQuery
		   ("SELECT imageName,id FROM Media ORDER BY createdAt ASC")
		    .addEntity(HomePageModel.class)
		    .setMaxResults(3)
		    .setFirstResult(0)
		   .list();
		
		/* @SuppressWarnings("unchecked")
		  List<homePageModel> mediaList = (List<homePageModel>)session.createQuery("SELECT imageName,id FROM Media ORDER BY createdAt ASC")
		  .setFirstResult(0)
		  .setMaxResults(3)
	      .list();
		  session.close();*/
		  return mediaList;
	}
	
	public List<SectionModel> getSectionList(Integer n,Session session) {
	
		//Session session = sessionFactory.openSession();
		
		
		  @SuppressWarnings("unchecked")
		  List<SectionModel> sectionList = (List<SectionModel>)session.createSQLQuery
		  ("SELECT data,isHighlight,startTime FROM Section WHERE mediaId = :id ORDER BY startTime ASC")
		  .addEntity(SectionModel.class)
		  .setParameter("id", n)
		  .list();
		  //session.close();
		  return sectionList;
	}
	
	public Media getMedia(Integer id,Session session){
		
		  //Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		  Media media = (Media)session.createQuery("FROM Media WHERE id = :id")
		  .setParameter("id", id).uniqueResult();
		  //session.close();
		  return media;
	}
	//:id").setParameter("id", assetId).uniqueResult();
	
	public List<HomePageModel> getListOffset(Integer Episode,Session session) {
		  //return dataDao.getList();
		  //Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		  List<HomePageModel> mediaList = (List<HomePageModel>) session.createSQLQuery
		   ("SELECT imageName,id FROM Media ORDER BY createdAt ASC")
		    .addEntity(HomePageModel.class)
		    .setMaxResults(3)
		    .setFirstResult(Episode)
		   .list();
		  
		  
		  /*List<homePageModel> mediaList = session.createQuery("SELECT imageName,id FROM Media ORDER BY createdAt ASC")
		  .setFirstResult(Episode)
		  .setMaxResults(3)
		 .list();
		  session.close();*/
		  return mediaList;
	}

	
}
