package com.bc.model.dao.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.board.MemberVO;
import com.bc.mybatis.board.DBService;

public class MemberDAO {
		// 로그인
		public static MemberVO login(String userId, String pwd) {
			Map<String, String> map = new HashMap<>();
			map.put("userId", userId);
			map.put("pwd", pwd);
			SqlSession ss = DBService.getFactory().openSession();
			MemberVO mvo = ss.selectOne("dolbom.login", map);
			ss.close();
			return mvo;
		}
		
		
}
