package com.bc.model.command.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.member.MemberDAO;
import com.bc.model.vo.member.MemberVO;

public class FindPwdCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String emailId = request.getParameter("emailId");
		String emailBox = request.getParameter("emailBox");
		System.out.println(userId);
		
		userId = userId.trim();
		emailId = emailId.trim();
		emailBox = emailBox.trim();

		MemberVO vo = MemberDAO.findPwd(userId, emailId, emailBox);
		
		if(vo==null) {
			return "pwdFindFail.jsp";
		} else {
			request.setAttribute("pwd", vo.getPwd());
			return "pwdFindOk.jsp";
		}
	}

}
