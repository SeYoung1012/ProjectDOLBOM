package com.bc.dao.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.mybatis.admin.DBService;
import com.bc.vo.admin.NoticeVO;



public class NoticeDAO {
	
	//공지사항 입력 
	
	public static int insert(NoticeVO nvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("DOLBOM.insert2", nvo);
		ss.close();
		return result;
		
	}
	
	//공지사항 전체 리스트
	public static List<NoticeVO> getList() {
		SqlSession ss = DBService.getFactory().openSession();
		List<NoticeVO> list = ss.selectList("DOLBOM.nlist");
		ss.close();
		return list;
		
	}
	
	
	//공지사항 상세보기
	
	public static NoticeVO id(String idx) {
		SqlSession ss = DBService.getFactory().openSession();
		NoticeVO one = ss.selectOne("DOLBOM.none", idx);
		ss.close();
		System.out.println("daoone :" + one);
		return one;
	}
	
	//공지사항 삭제 

	public static int delete(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("DOLBOM.ndelete", idx);
		ss.close();
		return result;
	}

}
