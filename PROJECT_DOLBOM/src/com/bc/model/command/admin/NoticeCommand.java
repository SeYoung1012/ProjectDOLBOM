package com.bc.model.command.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

import com.bc.dao.admin.NoticeDAO;
import com.bc.vo.admin.NoticeVO;
import com.oreilly.servlet.MultipartRequest;

public class NoticeCommand implements Command2 {
	
	@Override
	public String exec(MultipartRequest mr, HttpServletResponse response) throws ServletException, IOException {
		

		NoticeVO nvo = new NoticeVO();
		
		nvo.setA_id("ADMIN");
		nvo.setTitle(mr.getParameter("title"));
		nvo.setContent(mr.getParameter("content"));
	
		if (mr.getFile("file_name") != null) {
			nvo.setFile_name(mr.getFilesystemName("file_name"));
			nvo.setOri_name(mr.getOriginalFileName("file_name"));
		} else {
			nvo.setFile_name("");
			nvo.setOri_name("");
		}

		int result = NoticeDAO.insert(nvo);
		
		 
	
		return "admin.jsp";
	}

}
