package com.bc.model.command.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.member.MemberDAO;
import com.bc.model.vo.member.MemberVO;

public class LoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String idCheck = request.getParameter("userId");
		String pwdCheck = request.getParameter("pwd");
		MemberVO vo = MemberDAO.login(idCheck, pwdCheck);

		
		if(vo==null) {
			System.out.println("session.getAttribute(\"userId\") : " + session.getAttribute("userId"));
			System.out.println("vo : " + vo);
			return "loginFail.jsp";
		} else {
			session.setAttribute("userId", idCheck);
			session.setAttribute("pwd", pwdCheck);
			System.out.println("vo : " + vo);
			return "main.jsp";
		}
		
	}

}
