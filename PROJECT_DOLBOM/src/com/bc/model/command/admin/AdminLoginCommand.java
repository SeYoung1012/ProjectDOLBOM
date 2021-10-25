package com.bc.model.command.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.dao.admin.AdminDAO;
import com.bc.vo.admin.AdminVO;

public class AdminLoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String idCheck = request.getParameter("userId");
		String passCheck = request.getParameter("pwd");
		AdminVO vo = AdminDAO.adminlogin(idCheck, passCheck);
		session.setAttribute("a_id", idCheck);
		session.setAttribute("password", passCheck);

		if (vo != null) {
			System.out.println("session.getAttribute(\"userId\") : " + session.getAttribute("userId"));
			System.out.println("vo : " + vo);
			return "admin.jsp";

		} else {
			System.out.println("vo : " + vo);
			return "adminFail.jsp";
		}

	}

}
