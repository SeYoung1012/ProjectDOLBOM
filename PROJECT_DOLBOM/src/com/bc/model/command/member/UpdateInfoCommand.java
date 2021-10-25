package com.bc.model.command.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.member.MemberDAO;
import com.bc.model.vo.member.MemberVO;

public class UpdateInfoCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
//		int typ = vo.getTyp();
//		System.out.println("vo 출력 : " + vo);
//		System.out.println("vo에 담긴 typ" + typ);
//		int birth = vo.getBirth();
		MemberVO vo = new MemberVO();
		vo = (MemberVO)session.getAttribute("vo");
		System.out.println("세션에 저장된 vo에 담긴 typ: " + vo.getTyp() );
		int typ = vo.getTyp();
		int birth = vo.getBirth();
		String userId = (String)session.getAttribute("userId");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String emailId = request.getParameter("emailId");
		String emailBox =  request.getParameter("emailBox");
		int childAge = Integer.parseInt(request.getParameter("childAge"));
		String care = request.getParameter("care");
		request.getParameterValues("care");
		int pay = Integer.parseInt(request.getParameter("pay"));
		
		vo.setUserId(userId);
		vo.setTyp(typ);
		vo.setBirth(birth);
		vo.setPwd(pwd);
		vo.setPwd2(pwd2);
		vo.setName(name);
		vo.setPhone(phone);
		vo.setAddress(address);
		vo.setEmailId(emailId);
		vo.setEmailBox(emailBox);
		vo.setChildAge(childAge);
		vo.setCare(care);
		vo.setPay(pay);
		
		MemberDAO.updateInfo(vo);
		
		session.setAttribute("vo", vo);
		
		return "mypInfo.jsp";
	}

}
