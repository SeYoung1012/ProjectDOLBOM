package com.bc.model.command.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.board.MomboardDAO;
import com.bc.model.vo.board.MomboardVO;

public class FindMomCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String search = request.getParameter("search");
		System.out.println("search : " + search);
		
		List<MomboardVO> list = MomboardDAO.getSearchMomList(search);
		
		System.out.println("searchList2 : " + list);
		
		request.setAttribute("searchList2", list);
		
		
		return "searchMomList.jsp";
	}

}
