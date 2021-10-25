package com.bc.model.command.board;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.bc.model.dao.board.SitterboardDAO;
import com.bc.model.vo.board.MemberVO;
import com.bc.model.vo.board.SitterboardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SitterWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		System.out.println("loginUser2 : " + loginUser);

		// 파일 저장 위치 
		String path="/images";

		ServletContext context= request.getSession().getServletContext();

		String realPath=context.getRealPath(path);
		
		MultipartRequest mr = new MultipartRequest(
				request, realPath, (10 * 1024 * 1024),
				"UTF-8", new DefaultFileRenamePolicy());
		
		String title = mr.getParameter("title");
		String job = mr.getParameter("job");
		String[] care_date = mr.getParameterValues("care_date");
			String temp = "";
			for(String str : care_date) {
				temp += str;
			}
		
		String content = mr.getParameter("content");
		System.out.println("care_date : " + care_date);
		int result = 0;
		
		SitterboardVO svo = new SitterboardVO();
		svo.setSb_title(title);
		svo.setSb_job(job);
		svo.setCare_date(temp);
		svo.setSb_content(content);
		svo.setUserId(loginUser.getUserId());
		
		System.out.println("svo : " + svo);
		
		if (mr.getFile("file_name") != null) {
			svo.setFile_name(mr.getFilesystemName("file_name")); // 물리적으로 저장된 이름
			svo.setOri_name(mr.getOriginalFileName("file_name"));
			
		} else {
			svo.setFile_name("");
			svo.setOri_name("");
		}
		
		result = SitterboardDAO.SitterInsert(svo);
		request.setAttribute("result", result);
		
		return "sitterWriteOk.jsp";
	}

	private ServletRequest getSession() {
		// TODO Auto-generated method stub
		return null;
	}

}
