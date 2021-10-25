package com.bc.model.command.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.notice.GuideDAO;
import com.bc.model.vo.notice.GuideVO;

public class Guide2CMD implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String type2 = request.getParameter("type2");
		List<GuideVO> list = GuideDAO.selectGuide(type2);
		
		//JSON 문자열 출력
		request.setAttribute("glist", list);
		
		return "guide.jsp";
	}

}
