package com.bc.model.command.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.notice.BoardDAO;
import com.bc.model.vo.notice.BoardVO;

public class UserCenterCMD implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
		
		// DB데이터 가져오기
		List<BoardVO> list = BoardDAO.selectList();
		
		String result = makeJson(list);

		//JSON 문자열 출력

		
		return result;
	}

	private String makeJson(List<BoardVO> list) {
		/* {"list" : [] }
		*/
		//JSON 형태 문자열로 바꾸기 
		StringBuilder result = new StringBuilder();
		result.append("{\"list\" : [");
		for(BoardVO vo : list) {
			result.append("{");
			result.append("\"title\" : \"" + vo.getTitle() + "\",");
			result.append("\"aId\" : \"" + vo.getaId() + "\",");
			result.append("\"bDate\" : \""+ vo.getbDate()+"\"");
			result.append("},");
		}
		//result.toString().substring(0, result.length()-1);
		result.delete(result.length() - 1, result.length());
		result.append("]}");

		
		return result.toString();
	}

}
