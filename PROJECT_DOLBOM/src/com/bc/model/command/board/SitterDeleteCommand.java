package com.bc.model.command.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.board.MemberDAO;
import com.bc.model.dao.board.SitterboardDAO;
import com.bc.model.vo.board.MemberVO;
import com.bc.model.vo.board.SitterboardVO;

public class SitterDeleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		System.out.println("sssssssssssss");
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		int result = 0;
		System.out.println(mvo);
		
		int sb_id = Integer.parseInt(request.getParameter("sb_id"));
		
		request.getParameter("userId");
		
		
		if (request.getParameter("pwd").equals(mvo.getPwd())) {
			result = SitterboardDAO.sitterDelete(sb_id);
			request.setAttribute("result", result);
			
			return "sitterDeleteOk.jsp";

		} else {
			
			return "sitterDeleteFail.jsp?sb_id=" +sb_id;
		}
		
		
		
	}

}
