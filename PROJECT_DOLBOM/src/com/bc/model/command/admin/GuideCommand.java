package com.bc.model.command.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.dao.admin.GuideDAO;
import com.bc.vo.admin.GuideVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class GuideCommand implements Command2 {

	@Override
	public String exec(MultipartRequest mr, HttpServletResponse response) throws ServletException, IOException {



		GuideVO gvo = new GuideVO();

		gvo.setType(mr.getParameter("any_type"));
		gvo.setA_id("ADMIN");
		gvo.setG_title(mr.getParameter("title"));
		gvo.setG_content(mr.getParameter("content"));


		if (mr.getFile("file_name") != null) {
			gvo.setFile_name(mr.getFilesystemName("file_name"));
			gvo.setOri_name(mr.getOriginalFileName("file_name"));
		} else {
			gvo.setFile_name("");
			gvo.setOri_name("");
		}

		int result = GuideDAO.insert(gvo);

	
		return "admin.jsp";
		
	}

}
