package com.bc.model.dao.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.notice.GuideVO;
import com.bc.mybatis.notice.DBService;

public class GuideDAO {
	public static List<GuideVO> selectGuide(String type2){
		
		SqlSession ss = DBService.getFactory().openSession();
		List<GuideVO> list = ss.selectList("DOLBOM.GuideOne",type2);
		System.out.println(list);
		ss.close();
		
		return list;
	}
	
}
