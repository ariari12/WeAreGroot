package kr.co.moran.web.action.knowhow;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.vo.BoardVO;

public class KHListAction implements Action {
	
	private static final int PAGE_SIZE = 10;
	
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO dao = new BoardDAO();
		String sort = req.getParameter("sort");
		
		int page = 1;
		if(req.getParameter("page") != null) {
			page = Integer.parseInt(req.getParameter("page"));
		}
		
		int offset = (page - 1) * PAGE_SIZE;
		
		List<HashMap<String, Object>> boardList ;
        if ("viewCntDesc".equals(sort)) {
        	boardList = dao.selectAllKHOrderByViewCntDesc(offset,PAGE_SIZE);
        } else {
        	boardList = dao.selectAllKH(offset,PAGE_SIZE);
        }
        
        List<HashMap<String, Object>> hs = dao.selectCountAllComment();
        
        for (HashMap<String, Object> boardhashmap : boardList) {
        	boardhashmap.put("count", 0);
            for (HashMap<String, Object> commentcounthashmap : hs) {
    			if(boardhashmap.get("bId").equals(commentcounthashmap.get("bId"))){
    				boardhashmap.put("count", commentcounthashmap.get("count"));
    			}
    		}
		}
        
        
        int totalCount = dao.getTotalCountKH();
        int totalPages = (int) Math.ceil((double) totalCount / PAGE_SIZE);

        req.setAttribute("boardList", boardList);
        req.setAttribute("currentPage", page);
        req.setAttribute("totalPages", totalPages);
        
        return "jsp/board/khlist.jsp";
	}

}
