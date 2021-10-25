package com.bc.model.command.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.dao.admin.MemberDAO;
import com.bc.vo.admin.MemberVO;



public class UserCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				List<MemberVO> list = MemberDAO.getList();
				System.out.println("list : " + list);
				request.setAttribute("list", list);
				return "user.jsp";
				
	
		
	}

	
	
}
