package com.bc.model.command.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.notice.BoardDAO;
import com.bc.model.vo.notice.BoardVO;

public class DetailCMD implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String idx = request.getParameter("idx");
		String cPage = request.getParameter("cPage");
		
		int dIdx = Integer.parseInt(idx);
		//조회수 증가
		BoardDAO.hitCreate(dIdx);
		// 게시판 선택시 상세정보
		BoardVO dvo = BoardDAO.selectOne(dIdx);

	
		
		request.setAttribute("dvo", dvo);
		request.setAttribute("cPage", cPage);
		
		
		
		return "noticeDetail.jsp";
	}

}
