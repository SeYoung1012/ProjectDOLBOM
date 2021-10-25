package com.bc.model.command.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.dao.admin.GuideDAO;
import com.bc.vo.admin.GuideVO;

public class GuideDetailCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("g_idx");
		System.out.println("g_idx : " + userid);
		GuideVO one = GuideDAO.id(userid);
		System.out.println("one : " + one);
		request.setAttribute("one", one);
		return "guidedetail.jsp";
		
	}

}
