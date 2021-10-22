package com.bc.model.dao.notice;


import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.notice.QuestionsVO;
import com.bc.mybatis.notice.DBService;

public class QuestionsDAO {
	

	// 문의사항 삽입
	public static int insert(QuestionsVO vo) {
		
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("DOLBOM.insert", vo);
		
		ss.close();
		
		return result;

	}
}
