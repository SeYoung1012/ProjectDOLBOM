package com.bc.model.command.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.board.SitterboardDAO;
import com.bc.model.vo.board.MemberVO;
import com.bc.model.vo.board.SitterboardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SitterUpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		String title = request.getParameter("title");
		String job = request.getParameter("job");
		String[] care_date = request.getParameterValues("care_date");
		String temp = "";
		for(String str : care_date) {
			temp += str;
		}
		String content = request.getParameter("content");
		String pwd = request.getParameter("pwd");
		String userId = request.getParameter("userId");
		
		int sb_id = Integer.parseInt(request.getParameter("sb_id"));
		
		System.out.println("update sb_id : " + sb_id );
		
		int result = 0;
//		SitterboardVO svo = (SitterboardVO) request.getAttribute("sitterOne");
		SitterboardVO svo = new SitterboardVO();
		
		svo.setSb_title(title);
		svo.setSb_job(job);
		svo.setCare_date(temp);
		svo.setSb_content(content);
		svo.setUserId(userId);
		svo.setSb_id(sb_id);
		
		System.out.println("update svo" + svo);
		System.out.println("update loginUser" + loginUser);
		
		
		
		if (pwd.equals(loginUser.getPwd())) {
			result = SitterboardDAO.sitterUpdate(svo);
			request.setAttribute("result", result);
			
			return "sitterUpdateOk.jsp";
		} else {
			return "sitterUpdateFail.jsp?sb_id=" + sb_id;
		}
		
		
		
		
		
		
	}

}
