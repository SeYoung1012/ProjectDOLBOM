package com.bc.model.command.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.member.MemberDAO;
import com.bc.model.vo.member.MemberVO;

public class FindIdCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String emailId = request.getParameter("emailId");
		String emailBox = request.getParameter("emailBox");
		
		name = name.trim();
		emailId = emailId.trim();
		emailBox = emailBox.trim();

		MemberVO vo = MemberDAO.findId(name, emailId, emailBox);
		System.out.println(vo);
		
		if(vo==null) {
			return "idFindFail.jsp";
		} else {
			request.setAttribute("userId", vo.getUserId());
			return "idFindOk.jsp";
		}
		
	}
}
