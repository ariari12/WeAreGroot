package kr.co.moran.web.action.qna;

import java.io.File;
import java.io.IOException;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.vo.BoardImgVO;
import kr.co.moran.web.vo.BoardVO;
import kr.co.moran.web.vo.member.MemberVO;


@WebServlet("/board/writeqnaOk")
public class QnAWriteAction extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
//		String saveDir = "C:\\dev\\WeAreGroot\\src\\main\\webapp\\resources\\img\\board";
		String saveDir = req.getSession().getServletContext().getRealPath("/resources/img/board");
		System.out.println("saveDir : " + saveDir);
    	File uploadDir = new File(saveDir);
    	
    	if(!uploadDir.exists()) {
    		uploadDir.mkdirs();
    	}
    	
    	MultipartRequest mpr = new MultipartRequest(req, saveDir, 1024*1024*10, "UTF-8", new DefaultFileRenamePolicy());
        
		
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		
		BoardVO bvo = new BoardVO();

		String title = mpr.getParameter("title");
		String contents = mpr.getParameter("contents");
		
		bvo.setTitle(title);
		bvo.setContents(contents);
		bvo.setMId(memberVO.getMId());
		
		BoardDAO dao = new BoardDAO();
		BoardImgVO bivo = new BoardImgVO();
		String biImg = mpr.getFilesystemName("biImg");
		dao.insertQnA(bvo);
		
		bivo.setBiImg(biImg);
		bivo.setBId(bvo.getBId());
		dao.insertBoardImg(bivo);
		
		System.out.println("bivo.getBiImg() : " + bivo.getBiImg());
		System.out.println("글 작성 성공");
		resp.sendRedirect("../board?cmd=qna"); 
	}

}
