package com.beingjavaguys.domain;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public Student {
	
	private Integer id ;
	private String name ;
	
	Student(Integer id , String name ) {
		this.id = id;
		this.name = name;
	}
}