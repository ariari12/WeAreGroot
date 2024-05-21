package kr.co.moran.web.dao;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.eclipse.tags.shaded.org.apache.xalan.xsltc.compiler.sym;

import kr.co.moran.web.vo.ProductImgVO;
import kr.co.moran.web.vo.ProductVO;
import lombok.val;

public class ProductDAO {
	private SqlSession session;
	
	public ProductDAO() {
		openSession();
	}
	
	private void openSession() {
		try {
			if(session == null) {
				session = new SqlSessionFactoryBuilder()
					.build(Resources.getResourceAsReader("config/SqlMapConfig.xml"))
					.openSession();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int pdTotal() {
		openSession();
		int cnt = session.selectOne("kr.co.moran.product.selectPdTotal");
		return cnt;
	}
	
	public List<ProductVO> pdSelectPage(int start, int pageNum) {
		openSession();
		Map<String, Integer> map = new HashMap<>();
        map.put("start", start);
        map.put("pageNum", pageNum);
		List<ProductVO> vos = session.selectList("kr.co.moran.product.selectPage", map);
		return vos;
	}
	
	public ProductVO pdSelsctOneByPId(int pId) {
		openSession();
		ProductVO v = session.selectOne("kr.co.moran.product.selectByPId", pId);
		return v;
	}
	
	public List<ProductImgVO> piSelsctByPId(int pId) {
		openSession();
		List<ProductImgVO> vos = session.selectList("kr.co.moran.product.selectAllImgByPId", pId);
		return vos;
	}
	
	public ProductImgVO piSelsctBigimgByPId(int pId) {
		openSession();
		ProductImgVO v = session.selectOne("kr.co.moran.product.piSelsctBigimgByPid", pId);
		return v;
	}
	
	public int orderTotalByPid(int pId) {
		openSession();
		int cnt = session.selectOne("kr.co.moran.product.orderTotalByPid", pId);
		return cnt;
	}
	
	public void closeSession() {
		if(session != null ) {
			session.close();
			session = null;
		}
	}
	
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		
//		dao.pdSelectPage(0, 12).forEach(v -> {
//			System.out.println(v.getPId());
//			System.out.println(dao.piSelsctBigimgByPdid(v.getPId()).getImg());
//		});
//		System.out.println(dao.pdSelsctOne(12938));
		
//		dao.piSelsctByPdid(12938).forEach(System.out::println);
//		System.out.println(dao.piSelsctBigimgByPdid(12938));
		
		dao.closeSession();
	}
}
