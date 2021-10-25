package com.bc.model.dao.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.board.MomboardVO;
import com.bc.model.vo.board.SitterboardVO;
import com.bc.mybatis.board.DBService;

public class MomboardDAO {
	// 구인 게시판 입력
	public static int insert(MomboardVO mvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("dolbom.insert", mvo);
		ss.close();

		System.out.println("result : " + result);

		return result;
	}

	// 전체 리스트 출력
	public static List<MomboardVO> getMomList(int begin, int end) {
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);

		SqlSession ss = DBService.getFactory().openSession();
		List<MomboardVO> momList = ss.selectList("dolbom.momListAll", map);
		ss.close();

		System.out.println(">>DAO momlist : " + momList);

		return momList;
	}

	// 게시글 건수 처리
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("dolbom.momTotalCount");
		ss.close();
		return totalCount;
	}

	// 상세 보기
	public static MomboardVO momSelectOne(int mb_id) {
		SqlSession ss = DBService.getFactory().openSession();
		MomboardVO mvo2 = ss.selectOne("dolbom.momDetail", mb_id);
		ss.close();

		return mvo2;
	}

	// 게시글 입력 처리

	public static int momInsert(MomboardVO mvo2) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("dolbom.momInsert", mvo2);
		ss.close();
		return result;
	}

	// 게시글 삭제
	public static int momDelete(int mb_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int cnt = ss.delete("dolbom.momDelete", mb_id);

		ss.close();
		return cnt;

	}

	// 게시글 검색
	public static List<MomboardVO> getSearchMomList(String search) {

		SqlSession ss = DBService.getFactory().openSession();
		List<MomboardVO> searchMom = ss.selectList("dolbom.searchMomList", search);

		System.out.println("searchList : " + searchMom);
		ss.close();

		return searchMom;

	}
	
	// 게시글 수정
	
	public static int momUpdate(MomboardVO mvo2) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("dolbom.momUpdate", mvo2);
		
		ss.close();
		return result;
	}
}
