package com.flipkart.models;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class SectionModel {

	
	@Id
	@GeneratedValue
	private String startTime ;
	
	@Column(name = "isHighlight")
	private boolean isHighlight;
	
	@Column(name = "data")
	private String data;

	public boolean getIsHighlight() {
		return isHighlight;
	}

	public void setIsHighlight(boolean isHighlight) {
		this.isHighlight = isHighlight;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	
}
