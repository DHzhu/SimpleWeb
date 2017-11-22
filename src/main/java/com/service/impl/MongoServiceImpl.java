/**
 * 
 */
package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MongoDao;
import com.model.Spider;
import com.service.MongoService;

/**
 * @desc  : TODO
 * @author: Zhu
 * @date  : 2017年11月21日
 */
@Service
public class MongoServiceImpl implements MongoService{
	
	@Autowired
	private MongoDao mongoDaoImpl;

	/**
	 * @desc : TODO
	 * @date : 2017年11月21日
	 */
	@Override
	public List<Spider> search(Spider object) {
		// TODO Auto-generated method stub
		return mongoDaoImpl.search(object, 0, null);
	}

	/**
	 * 
	 */
	public MongoDao getMongoDaoImpl() {
		return mongoDaoImpl;
	}


}
