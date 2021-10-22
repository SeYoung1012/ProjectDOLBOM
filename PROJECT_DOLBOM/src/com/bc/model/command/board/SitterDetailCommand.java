package com.bc.model.command.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.board.SitterboardDAO;
import com.bc.model.vo.board.MemberVO;
import com.bc.model.vo.board.SitterboardVO;

public class SitterDetailCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
			
			int sb_id = Integer.parseInt(request.getParameter("sb_id"));

			SitterboardVO svo = SitterboardDAO.sitterSelectOne(sb_id);
			session.setAttribute("loginUser", mvo);
			request.setAttribute("sitterOne", svo);
		
			
			
			System.out.println("SitterDetailCommand svo : " + svo.getSb_id());
			
			return "sitterDetail.jsp";
		
	}

}
