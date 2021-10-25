package com.bc.model.command.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.dao.admin.NoticeDAO;
import com.bc.vo.admin.NoticeVO;

public class NoticeDetailCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userid = request.getParameter("idx");
		System.out.println("idx : " + userid);
		NoticeVO one = NoticeDAO.id(userid);
		System.out.println("one : " + one);
		request.setAttribute("one", one);
		return "noticedetail2.jsp";
		
		

	}
	
	

}
