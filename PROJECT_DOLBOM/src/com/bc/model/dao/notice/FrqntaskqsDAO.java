package com.bc.model.dao.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.notice.FrqntaskqsVO;
import com.bc.mybatis.notice.DBService;

public class FrqntaskqsDAO {

	
	//자주묻는 질문 데이터 전체 추출
	public static List<FrqntaskqsVO> selectAll(){
		
		SqlSession ss = DBService.getFactory().openSession();
		List<FrqntaskqsVO> list = ss.selectList("DOLBOM.freAll");
		
		ss.close();
		
		return list;
	}
	
	
	
	public static List<FrqntaskqsVO> selectOne(String fTitle){
		
		SqlSession ss = DBService.getFactory().openSession();
		List<FrqntaskqsVO> list = ss.selectList("DOLBOM.freOne",fTitle);
		
		ss.close();
		
		return list;
	}
	
	
}
