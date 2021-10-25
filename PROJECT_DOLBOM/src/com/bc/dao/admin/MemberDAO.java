package com.bc.dao.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.mybatis.admin.DBService;
import com.bc.vo.admin.MemberVO;

public class MemberDAO {
	
	//회원 전체 목록
	public static List<MemberVO> getList() {
		SqlSession ss = DBService.getFactory().openSession();
		List<MemberVO> list = ss.selectList("DOLBOM.list");
		ss.close();
		return list;
		
	}

	//유저아이디로 검색
		public static MemberVO id(String userId) {
			SqlSession ss = DBService.getFactory().openSession();
			MemberVO one = ss.selectOne("DOLBOM.userlist", userId);
			ss.close();
			System.out.println("daolist :" + one);
			return one;
		}
	
	
	//회원 삭제 
	public static int delete (String userid) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("DOLBOM.delete", userid);
		ss.close();	
		return result;
	}
	

}
