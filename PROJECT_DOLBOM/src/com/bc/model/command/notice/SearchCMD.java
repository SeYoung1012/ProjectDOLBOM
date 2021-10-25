package com.bc.model.command.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.notice.BoardDAO;
import com.bc.model.vo.notice.BoardVO;


public class SearchCMD implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String question = request.getParameter("question");
		
		List<BoardVO> list = BoardDAO.searchAll(question);
		
		//JSON 문자열 출력
		request.setAttribute("blist", list);
		request.setAttribute("cPage", 1);
		System.out.println(list);
		
		return "board.jsp";
	}

}
