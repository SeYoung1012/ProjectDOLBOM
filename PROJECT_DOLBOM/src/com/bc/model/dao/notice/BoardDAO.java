package com.bc.model.dao.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.notice.BoardVO;
import com.bc.mybatis.notice.DBService;

public class BoardDAO {
	
	// 공지사항 메인페이지에서 공지사항 시간순 10개 데이터 추출
	public static List<BoardVO> selectList() {
		
		SqlSession ss = DBService.getFactory().openSession();
		List<BoardVO> list = ss.selectList("DOLBOM.listTop");
		
		ss.close();
		
		return list;

	}
	//Board페이지에서 전체 데이터 추출
	public static List<BoardVO> selectAll(){
		
		SqlSession ss = DBService.getFactory().openSession();
		List<BoardVO> list = ss.selectList("DOLBOM.listAll");
		
		ss.close();
		
		return list;
	}
	
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("DOLBOM.totalCount");
		ss.close();
		
		return totalCount;
	}
	// 게시판 페이지별 데이터 추출
	public static List<BoardVO> getList(int begin, int end){
		Map<String, Integer> map = new HashMap<>();
		
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<BoardVO> list =  ss.selectList("DOLBOM.list", map);
		ss.close();
		
		return list;
	}
	// 게시판 상세조회
	public static BoardVO selectOne(int d_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		BoardVO vo = ss.selectOne("DOLBOM.one", d_idx);
		ss.close();
		return vo;
	}
	
	// 조회수 증가
	
	public static void hitCreate(int d_idx) {
		
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.update("DOLBOM.hitUpdate", d_idx);
		ss.close();
		
	}
	public static List<BoardVO> searchAll(String question) {
		
		SqlSession ss = DBService.getFactory().openSession();
		List<BoardVO> list = ss.selectList("DOLBOM.searchAll", question);
		
		ss.close();
		
		return list;
	}
	
}
