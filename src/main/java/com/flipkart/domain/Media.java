package com.flipkart.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Media")
public class Media implements Serializable{

	@Id
	@GeneratedValue
	private int id;

	@Column(name = "createdAt")
	private String createdAt;
	
	@Column(name = "updatedAt")
	private String updatedAt;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "url")
	private String url;
	
	@Column(name = "imageName")
	private String imageName ;
	
	public int getId() {
		  return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getImageName() {
		  return imageName;
	}

	public void setImageName(String name) {
		  this.imageName = name;
	}
	
	public String getName() {
		  return name;
	}

	public void setName(String name) {
		  this.name = name;
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
