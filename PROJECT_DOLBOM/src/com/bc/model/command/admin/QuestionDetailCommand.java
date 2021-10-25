package com.bc.model.command.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.dao.admin.MemberDAO;
import com.bc.dao.admin.QuestionsDAO;
import com.bc.vo.admin.MemberVO;
import com.bc.vo.admin.QuestionsVO;

public class QuestionDetailCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("qIdx");
		QuestionsVO one = QuestionsDAO.id(userid);
		System.out.println("one : " + one);
		request.setAttribute("one", one);
		return "questiondetail.jsp";
		
		
		
	}

}
