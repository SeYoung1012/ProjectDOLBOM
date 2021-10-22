package com.bc.model.dao.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.board.SitterboardVO;
import com.bc.mybatis.board.DBService;

public class SitterboardDAO {
	
	// 전체 게시글 출력
	public static List<SitterboardVO> getSitterList(int begin, int end) {
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		
		
		
		SqlSession ss = DBService.getFactory().openSession();
		
		List<SitterboardVO> sitterList = ss.selectList("dolbom.sitterListAll", map);
		
		System.out.println("DAO list : " + sitterList);
		ss.close();
		
		return sitterList;
	}
	
	// 검색 게시글 전체 출력
		public static List<SitterboardVO> getSearchSitterList(String search) {
			
		
		SqlSession ss = DBService.getFactory().openSession();
		List<SitterboardVO> searchSitter = ss.selectList("dolbom.searchSitterList", search);
		
		System.out.println("searchList : " + searchSitter);
		ss.close();
		
		return searchSitter;
			
			
			
		}
	
	// 게시글 입력 처리
	
	public static int SitterInsert(SitterboardVO svo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("dolbom.sitInsert", svo);
		ss.close();
		return result;
	}
	
	// 게시글 건수 처리
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("dolbom.sitterTotalCount");
		ss.close();
		return totalCount;
	}
	
	// 게시글 보기
	public static SitterboardVO sitterSelectOne(int sb_id){
		SqlSession ss = DBService.getFactory().openSession();
		SitterboardVO svo = ss.selectOne("dolbom.sitterDetail", sb_id);
		ss.close();
		
		return svo;
	}
	
	
	// 게시글 삭제
	public static int sitterDelete(int sb_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int cnt = ss.delete("dolbom.sitterDelete", sb_id);
		
		ss.close();
		return cnt;
		
	}
	
	// 게시글 수정
	public static int sitterUpdate(SitterboardVO svo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("dolbom.sitterUpdate", svo);
		
		ss.close();
		return result;
	}
}
