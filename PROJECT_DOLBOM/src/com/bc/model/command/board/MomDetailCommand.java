package com.bc.model.command.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.board.MomboardDAO;
import com.bc.model.dao.board.SitterboardDAO;
import com.bc.model.vo.board.MemberVO;
import com.bc.model.vo.board.MomboardVO;
import com.bc.model.vo.board.SitterboardVO;

public class MomDetailCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		
		int mb_id = Integer.parseInt(request.getParameter("mb_id"));

		MomboardVO mvo2 = MomboardDAO.momSelectOne(mb_id);
		session.setAttribute("loginUser", mvo);
		request.setAttribute("momOne", mvo2);
	
		
		
		System.out.println("MomDetailCommand mvo2 : " + mvo2.getMb_title());
		
		return "momDetail.jsp";
	}

}
