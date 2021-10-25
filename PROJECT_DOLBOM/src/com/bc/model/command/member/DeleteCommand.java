package com.bc.model.command.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.member.MemberDAO;
import com.bc.model.vo.member.MemberVO;

public class DeleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
//		session.setAttribute("userId", userId);
		
		String pwd = request.getParameter("pwd");
		request.setAttribute("pwd", pwd);
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		System.out.println("세션에 담긴 vo 의 값 : " + vo);
		String vpwd = vo.getPwd();
		
		if(vpwd.equals(pwd)) {
			MemberDAO.delete(userId); 
			session.invalidate();
			System.out.println("탈퇴 성공");
			
			return "mmain.jsp";
		} else {
			System.out.println("탈퇴 실패");
			return "deleteFail.jsp";
		}
		
	}

}
