package com.bc.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.command.member.Command;
import com.bc.model.command.member.DeleteCommand;
import com.bc.model.command.member.FindIdCommand;
import com.bc.model.command.member.FindPwdCommand;
import com.bc.model.command.member.FindPwdPageCommand;
import com.bc.model.command.member.IdCheckCommand;
import com.bc.model.command.member.IdFindCommand;
import com.bc.model.command.member.JoinCommand;
import com.bc.model.command.member.JoinPageCommand;
import com.bc.model.command.member.JoinTypeCommand;
import com.bc.model.command.member.LoginCommand;
import com.bc.model.command.member.LoginPageCommand;
import com.bc.model.command.member.LogoutCommand;
import com.bc.model.command.member.MypInfoCommand;
import com.bc.model.command.member.PwdFindCommand;
import com.bc.model.command.member.UpdateInfoCommand;

@WebServlet("/controller")
public class FrontControllerCommand extends HttpServlet {
   private static final long serialVersionUID = 1L;

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) 
         throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      String type = request.getParameter("type");
      System.out.println("> type : " + type);
      
      Command command = null;
      if ("login".equals(type)) {
         command = new LoginCommand();
      } else if ("join".equals(type)) {
         command = new JoinCommand();
      } else if ("findId".equals(type)) {
         command = new FindIdCommand();
      } else if ("findPwd".equals(type)) {
         command = new FindPwdCommand();
      } else if ("joinType".equals(type)) {
         command = new JoinTypeCommand();
      } else if ("idFind".equals(type)) {
         command = new IdFindCommand();
      } else if ("pwdFind".equals(type)) {
         command = new FindPwdCommand();
      } else if ("loginPage".equals(type)) {
         command = new LoginPageCommand();
      } else if ("joinPage".equals(type)) {
         command = new JoinPageCommand();
      } else if ("findPwdPage".equals(type)) {
         command = new FindPwdPageCommand();
      }  else if ("mypInfo".equals(type)) {
         command = new MypInfoCommand();
      } else if ("updateInfo".equals(type)) {
         command = new UpdateInfoCommand();
      } else if ("delete".equals(type)) {
         command = new DeleteCommand();
      } else if ("logout".equals(type)) {
         command = new LogoutCommand();
         
      }else if ("idcheck".equals(type)) { 
         PrintWriter out = response.getWriter();
           command = new IdCheckCommand(); 
           String result = command.exec(request,
           response);
        
           out.println(result); 
           out.flush(); 
           return; 
        }

      
      String path = command.exec(request, response);
      request.getRequestDispatcher(path).forward(request, response);
   }
   
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      doGet(request, response);
   }
   
}