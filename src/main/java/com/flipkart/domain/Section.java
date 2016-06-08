package com.flipkart.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "Section")

public class Section {
	
	
	@Id
	@GeneratedValue
	private Integer id ;
	
	@Column(name = "isHighlight")
	private boolean isHighlight;
	
	@Column(name = "data")
	private String data;
	
	@Column(name = "startTime")
	private String startTime;
	
	@Column(name = "createdAt")
	private String createdAt;
	
	@Column(name = "updatedAt")
	private String updatedAt;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public boolean isHighlight() {
		return isHighlight;
	}

	public void setHighlight(boolean isHighlight) {
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

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public String getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Integer getMediaId() {
		return mediaId;
	}

	public void setMediaId(Integer mediaId) {
		this.mediaId = mediaId;
	}

	@Column(name = "mediaId")
	private Integer mediaId;
	
	
}
