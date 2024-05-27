package kr.co.moran.web.action.qnA;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.vo.BoardVO;

public class QnAWriteAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		BoardVO vo = new BoardVO();
		BoardDAO dao = new BoardDAO();
		String title = req.getParameter("title");
		String contents = req.getParameter("contents");
		
		vo.setTitle(title);
		vo.setContents(contents);
		
		dao.insertQnA(vo);
		System.out.println(vo);
		return "board?cmd=qna";
	}

}
