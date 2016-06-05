package com.beingjavaguys.services;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.beingjavaguys.domain.Media;
import com.beingjavaguys.models.responses.homePageModel;

public class MediaServiceImpl implements MediaService {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<Object[]> getList() {
		  //return dataDao.getList();
		Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		  List<Object[]> mediaList = session.createQuery("SELECT imageName,id FROM Media ORDER BY createdAt ASC")
		  .setFirstResult(0)
		  .setMaxResults(3)
	      .list();
		  session.close();
		  return mediaList;
	}
	
	public List<Object[]> getListOffset(Integer Episode) {
		  //return dataDao.getList();
		Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		  List<Object[]> mediaList = session.createQuery("SELECT imageName,id FROM Media ORDER BY createdAt ASC")
		  .setFirstResult(Episode)
		  .setMaxResults(3)
		 .list();
		  session.close();
		  return mediaList;
	}

		 
	 public Media getRowById(int id) {
	  //return dataDao.getRowById(id);
	 
		 Session session = sessionFactory.openSession();
		 Media media = (Media) session.load(Media.class, id);
		  return media;
	 }
	
}
