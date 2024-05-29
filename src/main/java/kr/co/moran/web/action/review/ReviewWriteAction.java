package kr.co.moran.web.action.review;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ReviewDAO;
import kr.co.moran.web.vo.ReviewImgVO;
import kr.co.moran.web.vo.ReviewVO;

import java.io.File;
import java.io.IOException;
import java.util.Collection;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/review/writeOk")
public class ReviewWriteAction extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String saveDir = "C:\\dev\\WeAreGroot\\src\\main\\webapp\\resources\\img\\review";
	
    	File uploadDir = new File(saveDir);
    	
    	if(!uploadDir.exists()) {
    		uploadDir.mkdirs();
    	}
    	
    	MultipartRequest mpr = new MultipartRequest(req, saveDir, 1024*1024*10, "UTF-8", new DefaultFileRenamePolicy());
        
    	

        int score = Integer.parseInt(mpr.getParameter("score"));
        String contents = mpr.getParameter("contents");
        String riImg = mpr.getFilesystemName("riImg");
        

        ReviewVO rvo = new ReviewVO();
        rvo.setScore(score);
        rvo.setContents(contents);

        ReviewImgVO rivo = new ReviewImgVO();

        ReviewDAO rdao = new ReviewDAO();

        int rId = rdao.insertReview(rvo);

        rivo.setRiImg(saveDir + "/" + riImg);
        rivo.setRId(rId);
        rdao.insertReviewImg(rivo);

        req.setAttribute("rdao", rdao);

        resp.sendRedirect("../review?cmd=write");
	
	}


}
