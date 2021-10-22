package com.bc.model.command.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.common.board.Paging;
import com.bc.model.dao.board.MemberDAO;
import com.bc.model.dao.board.MomboardDAO;
import com.bc.model.dao.board.SitterboardDAO;
import com.bc.model.vo.board.MemberVO;
import com.bc.model.vo.board.MomboardVO;
import com.bc.model.vo.board.SitterboardVO;

public class MomListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Paging p = new Paging();

		// 1. 전체 게시물의 수량 구하기
		p.setTotalRecord(MomboardDAO.getTotalCount());
		p.setTotalPage();

		// 2. 현재 페이지 구하기+
		String cPage = request.getParameter("cPage");
		if (cPage != null) {
			p.setNowPage(Integer.parseInt(cPage));
		}

		// 3. 현재 페이지에 표시할 게시글 시작번호(begin), 끝번호(end) 구하기
		p.setEnd(p.getNowPage() * p.getNumPerPage()); // 현재페이지번호 * 페이지당게시글 수
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);

		// (선택적) 3-1. 끝 번호가 데이터 건수보다 많아지면 데이터 건수와 동일한 번호로 설정
		if (p.getEnd() > p.getTotalRecord()) {
			p.setEnd(p.getTotalRecord());
		}

		// ---- 블록(block) 계산하기 ----------------
		// 4. 블록의 시작페이지, 끝페이지 구하기(현재페이지 번호 사용)
		// 시작페이지 구하기
		int nowPage = p.getNowPage();
		int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
		p.setBeginPage(beginPage);
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);
		/*
		 * (개인실습) 현재페이지 번호로 현재 블록(nowBlock) 구한 후 시작페이지, 끝페이지 구하기(끝페이지 구하고 시작페이지 구하기)
		 */
		// 4-1. 끝페이지(endPage)가 전체페이지 수(totalPage) 보다 크면
		// 끝페이지를 전체페이지 수로 변경 처리
		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}

		// DB 연결하고 데이터 가져오기
		List<MomboardVO> list = MomboardDAO.getMomList(p.getBegin(), p.getEnd());
		System.out.println("list : " + list);

		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		String pwd = (String) session.getAttribute("pwd");

		MemberVO loginUser = MemberDAO.login(userId, pwd);

		System.out.println("loginUser : " + loginUser);

		// 저장
		session.setAttribute("loginUser", loginUser);
		request.setAttribute("momList", list);
		request.setAttribute("pvo", p);

		return "momBoard.jsp";

		
		
		
	}

}
