package com.bc.model.dao.member;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.member.MemberVO;
import com.bc.mybatis.member.DBService;

public class MemberDAO {
	
	// 로그인
	public static MemberVO login(String userId, String pwd) {
		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		map.put("pwd", pwd);
		SqlSession ss = DBService.getFactory().openSession();
		MemberVO vo = ss.selectOne("member.login", map);
		ss.close();
		return vo;
	}
	
	// 아이디 찾기
	public static MemberVO findId(String name, String emailId, String emailBox){
		Map<String, String> map = new HashMap<>();
		map.put("name", name);
		map.put("emailId", emailId);
		map.put("emailBox", emailBox);
		SqlSession ss = DBService.getFactory().openSession();
		MemberVO vo = ss.selectOne("member.idCheck", map);
		ss.close();
		return vo;
	}
	
	// 비밀번호 찾기
	public static MemberVO findPwd(String userId, String emailId, String emailBox) {
		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		map.put("emailId", emailId);
		map.put("emailBox", emailBox);
		SqlSession ss = DBService.getFactory().openSession();
		MemberVO vo = ss.selectOne("member.pwdCheck", map);
		ss.close();
		return vo;
	}
	
	// 회원가입(insert)
	public static int insert(MemberVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("member.join", vo);
		ss.close();
		return result;
	}
	
	// 아이디 중복확인
	public static int idCheck(String userId) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = ss.selectOne("member.idValidate", userId);
		ss.close();
		return result;
	}
	
	// 내정보 조회
	public static MemberVO infoView(String userId) {
		SqlSession ss = DBService.getFactory().openSession();
		MemberVO vo = ss.selectOne("member.view", userId);
		System.out.println(userId);
		return vo;
	}
	
	// 내정보　수정
	public static int updateInfo(MemberVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("member.update", vo);
		ss.close();
		return result;
	}
	
	// 회원 탈퇴
	public static int delete(String userId) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("member.delete", userId);
		ss.close();
		return result;
	}
	
	
	
	
	

}
