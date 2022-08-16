package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainListDao;
import com.javaex.vo.MainListVo;

@Service
public class MainListService {
	
	@Autowired
	private MainListDao mainDao;
	
	
	public List<MainListVo> select(int areaNo){
		System.out.println("mainService>select");
		
		
		// 펜션정보
		List<MainListVo> mainList = mainDao.select(areaNo);
		
		
		return mainList;
	}
	
	
	
}
