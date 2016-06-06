package com.flipkart.services;

import java.util.List;

import com.flipkart.domain.Media;

public interface MediaService {

	public List getList();

	 public Media getRowById(int id);
	 
	 public List getListOffset(Integer lastEpisode);
	
	
}
