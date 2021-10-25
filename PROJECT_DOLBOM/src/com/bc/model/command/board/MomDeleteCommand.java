package com.bc.model.command.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.board.MomboardDAO;
import com.bc.model.vo.board.MemberVO;

public class MomDeleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		System.out.println("mom delete command 실행");
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		int result = 0;
		System.out.println(mvo);

		int mb_id = Integer.parseInt(request.getParameter("mb_id"));

		request.getParameter("userId");

		if (request.getParameter("pwd").equals(mvo.getPwd())) {
			result = MomboardDAO.momDelete(mb_id);
			request.setAttribute("result", result);

			return "momDeleteOk.jsp";

		} else {

			return "momDeleteFail.jsp?mb_id=" + mb_id;
		}
	}

}
