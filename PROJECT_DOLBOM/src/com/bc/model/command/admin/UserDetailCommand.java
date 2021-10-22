package com.bc.model.command.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.dao.admin.MemberDAO;
import com.bc.vo.admin.MemberVO;

public class UserDetailCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userId");
		MemberVO one = MemberDAO.id(userid);
		System.out.println("one : " + one);
		request.setAttribute("one", one);
		return "userdetail.jsp";
		

	}

	
}
