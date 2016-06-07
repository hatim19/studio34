package com.flipkart.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class HomePageModel {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@Column(name = "imageName")
	private String imageName;
	
	public void setImageName ( String name ) {
		
		this.imageName = name ;
	}
	
	public void setId ( Integer id ){
			this.id = id ;
	}
	public String getImageName( ) {
		
		return this.imageName ;
	}
	
	public Integer getId ( ) {
		
		return this.id ;
	}
	
	
}
