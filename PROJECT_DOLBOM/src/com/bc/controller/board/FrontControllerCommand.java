package com.bc.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.command.board.Command;
import com.bc.model.command.board.FindMomCommand;
import com.bc.model.command.board.LoginCommand;
import com.bc.model.command.board.MomDeleteCommand;
import com.bc.model.command.board.MomDetailCommand;
import com.bc.model.command.board.MomListCommand;
import com.bc.model.command.board.MomUpdateCommand;
import com.bc.model.command.board.MomWriteCommand;
import com.bc.model.command.board.SearchSitterCommand;
import com.bc.model.command.board.SitterDeleteCommand;
import com.bc.model.command.board.SitterDetailCommand;
import com.bc.model.command.board.SitterListCommand;
import com.bc.model.command.board.SitterUpdateCommand;
import com.bc.model.command.board.SitterWriteCommand;



@WebServlet("/board")
public class FrontControllerCommand extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> Command doGet() 실행");
		String type = request.getParameter("type");
		System.out.println(">> type : " + type);

		Command command = null;
		if ("sitterBoard".equals(type)) {
			command = new SitterListCommand();			
		} else if ("sitterWrite".equals(type)) {
			command = new SitterWriteCommand();
		} else if ("sitterDetail".equals(type)) {
			command = new SitterDetailCommand();
		} else if ("sitterUpdate".equals(type)) {
			command = new SitterUpdateCommand();
		} else if ("sitterDelete".equals(type)) {
			command = new SitterDeleteCommand();
		} else if ("searchSitter".equals(type)) {
			command = new SearchSitterCommand();
		} else if ("momBoard".equals(type)) {
			command = new MomListCommand();
		} else if ("momDetail".equals(type)) {
			command = new MomDetailCommand();
		} else if ("momWrite".equals(type)) {
			command = new MomWriteCommand();
		} else if ("momDelete".equals(type)) {
			command = new MomDeleteCommand();
		} else if ("searchMom".equals(type)) {
			command = new FindMomCommand();
		} else if ("momUpdate".equals(type)) {
			command = new MomUpdateCommand();
		}
		
		
		
		else if ("login".equals(type)) {
			command = new LoginCommand();
		}
		
		String path = command.exec(request, response);
		System.out.println("path : " + path);
		request.getRequestDispatcher(path).forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> Command doPost() 실행---------");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
