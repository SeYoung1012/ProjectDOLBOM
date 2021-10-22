package com.bc.model.command.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.board.MemberDAO;
import com.bc.model.vo.board.MemberVO;

public class LoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String idCheck = request.getParameter("userId");
		String pwdCheck = request.getParameter("pwd");
		
		MemberVO mvo = MemberDAO.login(idCheck, pwdCheck);
		session.setAttribute("id", idCheck);
		session.setAttribute("pwd", pwdCheck);
		System.out.println(mvo);
		if (mvo==null) {
			response.setContentType("text/html; charset=utf-8");
			return "loginFail.jsp";
		} else {
			System.out.println(mvo);
			
			// dao에 아이디 비밀번호 갖고 셀렉 원
			
			// session.setAttribute(" ",    );
			
			
			return "main.jsp";
		}
	}

}
