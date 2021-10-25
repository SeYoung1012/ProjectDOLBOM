package com.bc.dao.admin;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.mybatis.admin.DBService;
import com.bc.vo.admin.AdminVO;

public class AdminDAO {
	
	//로그인 하기
	
	public static AdminVO adminlogin (String aid, String password) {
		Map<String, String> map = new HashMap<>();
		map.put("a_id", aid);
		map.put("password", password);
		SqlSession ss = DBService.getFactory().openSession();
		AdminVO vo = ss.selectOne("DOLBOM.adminlogin", map);
		System.out.println("daovo" + vo);
		ss.close();
		return vo;
		
		
	}
	
	

}
