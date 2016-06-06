package com.flipkart.models.responses;

import java.io.Serializable;

public class HomePageModel implements Serializable{
	
	
	private String imageName;
	private String url;
	private Integer id;
	
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
	public void setUrl ( String url ) {
		
		this.url = url ;
	}
	public String getUrl( ) {
		
		return this.url ;
	}
}
