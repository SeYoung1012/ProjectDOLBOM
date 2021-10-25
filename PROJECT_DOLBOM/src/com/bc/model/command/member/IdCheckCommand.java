package com.bc.model.command.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.member.MemberDAO;

public class IdCheckCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userIdCheck = request.getParameter("userIdCheck");
		

		int iCount = MemberDAO.idCheck(userIdCheck);
		String count = "{\"userid\":"+iCount+"}" ; 
		System.out.println(count);
		return count;
	}

}
