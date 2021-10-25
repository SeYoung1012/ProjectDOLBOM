package com.bc.dao.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.mybatis.admin.DBService;
import com.bc.vo.admin.GuideVO;
import com.bc.vo.admin.NoticeVO;



public class GuideDAO {

	
	//게시글 입력 
	
	public static int insert(GuideVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("DOLBOM.insert", vo);
		ss.close();
		return result;
		
	}
	
	//가이드 전체 리스트
	public static List<GuideVO> getList() {
		SqlSession ss = DBService.getFactory().openSession();
		List<GuideVO> list = ss.selectList("DOLBOM.glist");
		ss.close();
		return list;
		
	}
	
	
	//가이드 상세보기
	
	public static GuideVO id (String idx) {
		System.out.println("idx" + idx);
		SqlSession ss = DBService.getFactory().openSession();
		GuideVO one = ss.selectOne("DOLBOM.gone", idx);
		ss.close();
		System.out.println("daolist :" + one);
		return one;
	}
	
	//가이드 삭제 

	public static int delete(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("DOLBOM.gdelete", idx);
		ss.close();
		return result;
	}
	
	
	
	
	
	
}
