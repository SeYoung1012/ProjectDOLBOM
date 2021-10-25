package com.bc.model.command.notice;

import java.io.IOException;


import javax.servlet.ServletException;

import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.notice.QuestionsDAO;
import com.bc.model.vo.notice.QuestionsVO;
import com.oreilly.servlet.MultipartRequest;

public class InqryInsertCMD implements Command2 {

	@Override
	public String exec(MultipartRequest mr, HttpServletResponse response) throws ServletException, IOException {
		
		QuestionsVO vo = new QuestionsVO();
		
		vo.setName(mr.getParameter("name"));
		String eaminSum = mr.getParameter("email") + "@" + mr.getParameter("email2");
		vo.setEmail(eaminSum);
		vo.setPhone(mr.getParameter("phone"));
		vo.setMemberType(mr.getParameter("user_type"));
		vo.setTypeInqry(mr.getParameter("any_type"));
		vo.setqTitle(mr.getParameter("title"));
		vo.setqContent(mr.getParameter("content"));
		
		if (mr.getFile("file_name") != null) {
			vo.setFileName(mr.getFilesystemName("file_name"));
			vo.setOriName(mr.getOriginalFileName("file_name"));
		} else {
			vo.setFileName("");
			vo.setOriName("");
		}
		
		int result = QuestionsDAO.insert(vo);

		
		if(result>= 1) {
			return "inqryRgstrOK.jsp";
		}else {
			return "error.jsp";
		}
		// 여기서 result값이 1이면 정상처리 되었습니다 . => ingryRgstrOk로 가면
		// 거기서 alert 보여주고 => location.herf = 'userCenter';
		
	}

//	@Override
//	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		QuestionsVO vo = new QuestionsVO();
//		
//		vo.setName(request.getParameter("name"));
//		String eaminSum = request.getParameter("email") + "@" + request.getParameter("email2");
//		vo.setEmail(eaminSum);
//		vo.setPhone(request.getParameter("phone"));
//		vo.setMemberType(request.getParameter("user_type"));
//		vo.setTypeInqry(request.getParameter("any_type"));
//		vo.setqTitle(request.getParameter("title"));
//		vo.setqContent(request.getParameter("content"));
//		//2.DB에서 데이터 가져오기 
//		int result = QuestionsDAO.insert(vo);
//		
//		//3. DB데이터를 request scope에 저장
//		request.setAttribute("result", result);
//		
//		
//		return "userCenter.jsp";
//	}

}
