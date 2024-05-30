package kr.co.moran.web.action.comment;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.CommentVO;

public class ReComntListView implements Action {

	@SuppressWarnings("unchecked")
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		CommentDAO cdao = new CommentDAO();
		CommentVO cvo = new CommentVO();
		
		JSONArray jArr = new JSONArray();
		if(req.getParameter("cId") != null) {
			int cId = Integer.parseInt(req.getParameter("cId"));
			List<Map<String,Object>> list = cdao.selectCommentByCid(cId);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			for(Map<String, Object> map : list) {
//				System.out.println(map.get("regDate"));
				map.put("regDate", sdf.format(map.get("regDate")));
				JSONObject jObj = new JSONObject(map);
				jArr.add(jObj);
			}
		}
		System.out.println(jArr.toJSONString());
		
		return jArr.toJSONString();
	}

}
