package com.beingjavaguys.services;

import java.util.List;

import com.beingjavaguys.domain.Media;

public interface MediaService {

	public List getList();

	 public Media getRowById(int id);
	 
	 public List getListOffset(Integer lastEpisode);
	
	
}
