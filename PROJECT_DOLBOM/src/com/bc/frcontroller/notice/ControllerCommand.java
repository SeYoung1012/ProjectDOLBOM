package com.bc.frcontroller.notice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.command.notice.*;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/notice")
public class ControllerCommand extends HttpServlet{

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> doGet() 실행------------------");
		

		response.setContentType("text/html;charset=UTF-8");
		String path="";

		MultipartRequest mr = null;
		Command command = null; 
		//파일저장 위치
		String type = request.getParameter("type");
		String path2 = this.getServletContext().getRealPath("/images");

		System.out.println(type);	
		if(type == null) {
					mr = new MultipartRequest(
					request, path2, (10 * 1024 * 1024),
					"UTF-8", new DefaultFileRenamePolicy());
					type = mr.getParameter("type");
		}

		System.out.println(">type :" + type);
		
		
		if("ingryReg".equals(type)) {
			Command2 command2 = new InqryInsertCMD();
			path = command2.exec(mr, response);
		}
		//공지사항페이지 ajax처리
		else if("userCenter".equals(type)){
			PrintWriter out = response.getWriter();
			command = new UserCenterCMD();
			String result = command.exec(request, response);
		
			out.println(result);
			out.flush();
			return;
			
		}else if("search".equals(type)) {
			command = new SearchCMD();
			path = command.exec(request, response);
		}else if("board".equals(type)) {
			command = new BoardCMD();
			path = command.exec(request, response);
		}else if("detail".equals(type)) {
			command = new DetailCMD();
			path = command.exec(request, response);
		}else if("frequent".equals(type)){
			command = new FrequentlyCMD();
			path = command.exec(request, response);
		}else if("frequentajax".equals(type)) {
			
			PrintWriter out = response.getWriter();
			command = new FrequentajaxCMD();
			String result = command.exec(request, response);
			
			out.println(result);
			out.flush();
			return;
			
		}else if("guide".equals(type)) {
			command = new GuideCMD();
			path = command.exec(request, response);
		}else if("guide2".equals(type)) {
			command = new Guide2CMD();
			path = command.exec(request, response);
		}

		
		
		
		System.out.println(path);
		request.getRequestDispatcher(path).forward(request, response);

		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req,resp);
	}
}
	
