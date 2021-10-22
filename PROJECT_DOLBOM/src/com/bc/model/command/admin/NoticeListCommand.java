package com.bc.model.command.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.dao.admin.NoticeDAO;
import com.bc.vo.admin.NoticeVO;

public class NoticeListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<NoticeVO> list = NoticeDAO.getList();
		System.out.println("list : " + list);
		request.setAttribute("list", list);
		return "notice.jsp";
	
	}
	
	

}
