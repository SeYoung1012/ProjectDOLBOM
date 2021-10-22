package com.bc.frontcontroller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.command.admin.AdminCommand;
import com.bc.model.command.admin.AdminLoginCommand;
import com.bc.model.command.admin.AdminLogoutCommand;
import com.bc.model.command.admin.Command;
import com.bc.model.command.admin.Command2;
import com.bc.model.command.admin.GuideCommand;
import com.bc.model.command.admin.GuideDeleteCommand;
import com.bc.model.command.admin.GuideDetailCommand;
import com.bc.model.command.admin.GuideListCommand;
import com.bc.model.command.admin.NoticeCommand;
import com.bc.model.command.admin.NoticeDeleteCommand;
import com.bc.model.command.admin.NoticeDetailCommand;
import com.bc.model.command.admin.NoticeListCommand;
import com.bc.model.command.admin.QuestionCommand;
import com.bc.model.command.admin.QuestionDeleteCommand;
import com.bc.model.command.admin.QuestionDetailCommand;
import com.bc.model.command.admin.UserCommand;
import com.bc.model.command.admin.UserDeleteCommand;
import com.bc.model.command.admin.UserDetailCommand;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/admin")
public class ControllerCommand extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(">> doGet() 실행------------------");

		request.setCharacterEncoding("UTF-8");
		String path = "";

		MultipartRequest mr = null;
		// 파일저장 위치
		String type = request.getParameter("type");
		String path2 = this.getServletContext().getRealPath("/images");

		if (type == null) {
			mr = new MultipartRequest(request, path2, (10 * 1024 * 1024), "UTF-8", new DefaultFileRenamePolicy());
			type = mr.getParameter("type");
		}

		System.out.println(">type :" + type);
		Command command = null;
		Command2 command2 = null;

		if ("guide".equals(type)) {
			command2 = new GuideCommand();
			path = command2.exec(mr, response);
		} else if ("notice".equals(type)) {
			command2 = new NoticeCommand();
			path = command2.exec(mr, response);
		} else if ("user".equals(type)){
			command = new UserCommand();
			path = command.exec(request, response);
		}else if("detail".equals(type)) {
			command = new UserDetailCommand();
			path = command.exec(request, response);
			
		}else if ("delete".equals(type)){
			command = new UserDeleteCommand();
			path = command.exec(request, response);
		
		}else if("question".equals(type)) {
			command = new QuestionCommand();
			path = command.exec(request, response);
			
		}else if("qdetail".equals(type)) {
			command = new QuestionDetailCommand();
			path = command.exec(request, response);
			
		}else if ("qdelete".equals(type)){	
			command = new QuestionDeleteCommand();
			path = command.exec(request, response);

		} else if ("nlist".equals(type)) {
			command = new NoticeListCommand();
			path = command.exec(request, response);

		} else if ("none".equals(type)) {
			command = new NoticeDetailCommand();
			path = command.exec(request, response);
			
		}else if("ndelete".equals(type)) {
			command = new NoticeDeleteCommand();
			path = command.exec(request, response);
		
		}else if("glist".equals(type)) {
			command = new GuideListCommand();
			path = command.exec(request, response);
			
		}else if("gone".equals(type)) {
			command = new GuideDetailCommand();
			path = command.exec(request, response);
			
		}else if("gdelete".equals(type)) {
			command = new GuideDeleteCommand();
			path = command.exec(request, response);
			
		}else if("adminlogin".equals(type)) {
			command = new AdminLoginCommand();
			path = command.exec(request, response);		
		}else if("adminlogout".equals(type)) {
			command = new AdminLogoutCommand();
			path = command.exec(request, response);		
			
		}else if("admin".equals(type)) {
			command = new AdminCommand();
			path = command.exec(request, response);	
			
		}else {
			path = command.exec(request, response);
		}
		System.out.println(path);
		request.getRequestDispatcher(path).forward(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp);
	}

}
	


