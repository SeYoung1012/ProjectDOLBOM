package com.bc.model.command.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.notice.FrqntaskqsDAO;
import com.bc.model.vo.notice.FrqntaskqsVO;

public class FrequentajaxCMD implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String fTitle = request.getParameter("fTitle");
		System.out.println(fTitle);
		System.out.println(fTitle);
		System.out.println(fTitle);
		System.out.println(fTitle);
		// DB데이터 가져오기
		List<FrqntaskqsVO> list = FrqntaskqsDAO.selectOne(fTitle);
		
		String result = makeJson(list);

		//JSON 문자열 출력

		
		return result;
	}

	private String makeJson(List<FrqntaskqsVO> list) {
		/* {"list" : [] }
		*/
		//JSON 형태 문자열로 바꾸기 
		StringBuilder result = new StringBuilder();
		result.append("{\"list\" : [");
		for(FrqntaskqsVO vo : list) {
			result.append("{");
			result.append("\"aId\" : \"" + vo.getaId() + "\",");
			result.append("\"fTitle\" : \"" + vo.getfTitle() + "\",");
			result.append("\"fContent\" : \"" + vo.getfContent() + "\",");
			result.append("\"fDate\" : \""+ vo.getfDate()+"\"");
			result.append("},");
		}
		//result.toString().substring(0, result.length()-1);
		result.delete(result.length() - 1, result.length());
		result.append("]}");
		
		return result.toString();
	}
		
		

}
