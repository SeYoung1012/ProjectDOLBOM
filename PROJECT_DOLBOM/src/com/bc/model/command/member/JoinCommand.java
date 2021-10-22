package com.bc.model.command.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.member.MemberDAO;
import com.bc.model.vo.member.MemberVO;

public class JoinCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		int typ = Integer.parseInt(request.getParameter("typ"));
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		int birth =  Integer.parseInt(request.getParameter("birth"));
		String address = request.getParameter("address");
		String emailId = request.getParameter("emailId");
		String emailBox =  request.getParameter("emailBox");
		int childAge =  Integer.parseInt(request.getParameter("childAge"));
//		String care =  request.getParameter("care");
		String [] care = request.getParameterValues("care");
		String temp="";
		for(String str : care) {
			temp += str;
		}
		System.out.println(temp.length());
		int pay =  Integer.parseInt(request.getParameter("pay"));
		
		MemberVO vo = new MemberVO();
		vo.setUserId(userId);
		vo.setTyp(typ);
		vo.setPwd(pwd);
		vo.setPwd2(pwd2);
		vo.setName(name);
		vo.setPhone(phone);
		vo.setBirth(birth);
		vo.setAddress(address);
		vo.setEmailId(emailId);
		vo.setEmailBox(emailBox);
		vo.setChildAge(childAge);
		vo.setCare(temp);
		vo.setPay(pay);
		
		int member = MemberDAO.insert(vo);
		request.setAttribute("member", member);
		return "joinOk.jsp";
	}

}
