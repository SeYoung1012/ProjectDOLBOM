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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MomWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		System.out.println("mom write loginUser : " + loginUser);

		String title = request.getParameter("title");
		String[] care_date = request.getParameterValues("care_date");
			String temp ="";
			for (String str : care_date) {
				temp += str;
			}
		
		
		
		String content = request.getParameter("content");
		System.out.println("care_date : " + care_date);
		
		int result = 0;
		
		MomboardVO mvo2 = new MomboardVO();
		mvo2.setMb_title(title);
		mvo2.setCare_date(temp);
		mvo2.setMb_content(content);
		mvo2.setUserId(loginUser.getUserId());
		
		System.out.println("mvo2 : " + mvo2);
		
		result = MomboardDAO.momInsert(mvo2);
		request.setAttribute("result", result);
		
		return "momWriteOk.jsp";
	}

}
