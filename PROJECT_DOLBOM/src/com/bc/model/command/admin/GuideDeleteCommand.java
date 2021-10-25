package com.bc.model.command.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.dao.admin.GuideDAO;

public class GuideDeleteCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("g_idx");
		int result = GuideDAO.delete(userid);
		System.out.println("Guideid :" + userid);
		if (result == 0) { // SQL문장은 정상실행되었으나 데이터 없어서 삭제 못함
			System.out.println("데이터가 없어서 삭제하지 못했습니다. ");
			
		} else if (result > 0) { // SQL문장은 정상실행 + 데이터 삭제 처리
			System.out.println("데이터가 삭제되었습니다.");
		}
		
		return "admin?type=glist";
		
	
	}

}
