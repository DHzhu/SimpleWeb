/**
 * 
 */
package com.dao;

import java.util.List;

import com.model.PicInfoObject;

/**
 * @desc  : TODO
 * @author: Zhu
 * @date  : 2017年11月17日
 */
public interface MongoDao {
	public List<PicInfoObject> search(PicInfoObject object, long skip, Integer limit);
	public void findAndModify(PicInfoObject search, PicInfoObject update);
	public void insert(List<PicInfoObject> object);
	public void remove(PicInfoObject object);
	
}
