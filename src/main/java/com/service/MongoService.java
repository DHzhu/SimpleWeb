/**
 * 
 */
package com.service;

import java.util.List;

import com.model.Spider;

/**
 * @desc  : TODO
 * @author: Zhu
 * @date  : 2017年11月21日
 */
public interface MongoService {
	public List<Spider> search(Spider object);
}
