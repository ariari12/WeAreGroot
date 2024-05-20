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
	
	public ProductVO pdSelsctOne(int no) {
		openSession();
		ProductVO v = session.selectOne("kr.co.moran.product.selectById", no);
		return v;
	}
	
	public List<ProductImgVO> piSelsctByPdid(int no) {
		openSession();
		List<ProductImgVO> vos = session.selectList("kr.co.moran.product.selectAllImgById", no);
		return vos;
	}
	
	public ProductImgVO piSelsctBigimgByPdid(int pd_id) {
		openSession();
		ProductImgVO v = session.selectOne("kr.co.moran.product.piSelsctBigimgByPdid", pd_id);
		return v;
	}
	
	public void closeSession() {
		if(session != null ) {
			session.close();
			session = null;
		}
	}
	
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		
		dao.pdSelectPage(0, 12).forEach(v -> {
			System.out.println(v.getId());
			System.out.println(dao.piSelsctBigimgByPdid(v.getId()).getImg());
		});
//		System.out.println(dao.pdSelsctOne(12938));
		
//		dao.piSelsctByPdid(12938).forEach(System.out::println);
//		System.out.println(dao.piSelsctBigimgByPdid(12938));
		
		dao.closeSession();
	}
}
