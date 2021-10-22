package com.bc.dao.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.mybatis.admin.DBService;
import com.bc.vo.admin.QuestionsVO;

public class QuestionsDAO {

	
	//문의사항 전체 목록
		public static List<QuestionsVO> getList() {
			SqlSession ss = DBService.getFactory().openSession();
			List<QuestionsVO> list = ss.selectList("DOLBOM.qlist");
			ss.close();
			return list;
			
		}

		//문의사항 번호 검색
			public static QuestionsVO id(String idx) {
				SqlSession ss = DBService.getFactory().openSession();
				QuestionsVO id = ss.selectOne("DOLBOM.qone",idx);
				ss.close();
				System.out.println("daolist :" + id);
				return id;
			}
		
		
		//문의사항 삭제 
		public static int delete (String qIdx) {
			SqlSession ss = DBService.getFactory().openSession(true);
			int result = ss.delete("DOLBOM.qdelete", qIdx);
			ss.close();	
			return result;
		}
	
	
}
