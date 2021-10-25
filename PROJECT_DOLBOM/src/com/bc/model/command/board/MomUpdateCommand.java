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

public class MomUpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		
		String title = request.getParameter("title");
		String[] care_date = request.getParameterValues("care_date");
			String temp = "";
			for (String str : care_date) {
				temp += str;
			}
		
		String content = request.getParameter("content");
		String pwd = request.getParameter("pwd");
		String userId = request.getParameter("userId");
		
		int mb_id = Integer.parseInt(request.getParameter("mb_id"));
		
		System.out.println("update mb_id : " + mb_id );
		
		int result = 0;
//		SitterboardVO svo = (SitterboardVO) request.getAttribute("sitterOne");
		MomboardVO mvo2 = new MomboardVO();
		
		mvo2.setMb_title(title);
		mvo2.setCare_date(temp);
		mvo2.setMb_content(content);
		mvo2.setUserId(userId);
		mvo2.setMb_id(mb_id);
		
		System.out.println("update mvo2" + mvo2);
		System.out.println("update loginUser" + loginUser);
		
		
		if (pwd.equals(loginUser.getPwd())) {
			result = MomboardDAO.momUpdate(mvo2);
			request.setAttribute("result", result);
			
			return "momUpdateOk.jsp";
		} else {
			return "momUpdateFail.jsp?mb_id=" + mb_id;
		}
		
	}

}
