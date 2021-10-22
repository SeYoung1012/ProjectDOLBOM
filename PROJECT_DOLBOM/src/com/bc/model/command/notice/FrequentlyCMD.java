package com.bc.model.command.notice;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.notice.FrqntaskqsDAO;
import com.bc.model.vo.notice.FrqntaskqsVO;

public class FrequentlyCMD implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// DB데이터 가져오기
		List<FrqntaskqsVO> list = FrqntaskqsDAO.selectAll();
		
		//JSON 문자열 출력
		request.setAttribute("flist", list);
		
		return "Frequently.jsp";
	}

}
