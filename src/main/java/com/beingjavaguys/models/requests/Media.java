package com.beingjavaguys.models.requests;

import java.io.Serializable;


public class Media implements Serializable{

	
	private int id;

	
	private String createdAt;
	
	
	private String updatedAt;
	
	
	private String name;
	
	private String imageName;
	
	private String url;
	
	public int getId() {
		  return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		  return name;
	}

	public void setName(String name) {
		  this.name = name;
	}
	
	public String getImageName() {
		  return imageName;
	}

	public void setImageName(String name) {
		  this.imageName = name;
	}
		 
	public String getCreatedAt() {
		  return createdAt;
	}

	public void setCreatedAt(String CreatedAt) {
		  this.createdAt = CreatedAt ;
	}
			 
	public String getUrl() {
		  return url;
	}

	public void setUrl(String url) {
		   this.url = url;
	}
				 
	public String getUpdatedAt() {
		  return updatedAt;
	}

	public void setUpdatedAt(String UpdatedAt) {
		  this.updatedAt = UpdatedAt ;
	}			 
					 
	
}
