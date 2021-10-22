package com.bc.model.command.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.board.SitterboardDAO;
import com.bc.model.vo.board.SitterboardVO;

public class SearchSitterCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String search = request.getParameter("search");
		System.out.println("search : " + search);
		
		List<SitterboardVO> list = SitterboardDAO.getSearchSitterList(search);
		
		System.out.println("searchList : " + list);
		
		request.setAttribute("searchList", list);
		
		
		return "searchSitterList.jsp";
	}

}
