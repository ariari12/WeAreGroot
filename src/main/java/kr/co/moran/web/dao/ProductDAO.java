package kr.co.moran.web.dao;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.CategoryVO;
import kr.co.moran.web.vo.ProductImgVO;
import kr.co.moran.web.vo.ProductVO;

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
	

	/* 상품 */
	// insert
	// 상품 추가
	public void addProduct(ProductVO vo) {
		openSession();
		session.insert("kr.co.moran.product.addProduct", vo);
		session.commit();
	}
	// 상품 이미지 추가
	public void addProductImg(ProductImgVO vo) {
		openSession();
		session.insert("kr.co.moran.product.addProductImg", vo);
		session.commit();
	}
	
	// 상품 종류 수
	// 전체 상품 종류
	public int pdTotal() {
		openSession();
		int cnt = session.selectOne("kr.co.moran.product.pdTotal");
		return cnt;
	}

	// 최신상퐁 종류 총 갯수
	public int pdLatestTotal() {
		openSession();
		int cnt = session.selectOne("kr.co.moran.product.pdLatestTotal");
		return cnt;
	}

	// 카테고리상퐁 종류 총 갯수
	public int pdcategoryTotal() {
		openSession();
		int cnt = session.selectOne("kr.co.moran.product.pdcategoryTotal");
		return cnt;
	}

	// 인기 상퐁 종류 총 갯수
	public int pdPopTotal() {
		openSession();
		int cnt = session.selectOne("kr.co.moran.product.pdPopTotal");
		return cnt;
	}
	
	// 보관목록 갯수
	public int pdSaveCnt() {
		openSession();
		int cnt = session.selectOne("kr.co.moran.product.pdSaveCnt");
		return cnt;
	}

	// 품절목록 갯수
	public int pdSoldOutCnt() {
		openSession();
		int cnt = session.selectOne("kr.co.moran.product.pdSoldOutCnt");
		return cnt;
	}
	
	
	// 상품 리스트
	// 상품 페이지 조회
	public List<ProductVO> pdSelectPage(int start, int pageNum) {
		openSession();
		Map<String, Integer> map = new HashMap<>();
        map.put("start", start);
        map.put("pageNum", pageNum);
		List<ProductVO> vos = session.selectList("kr.co.moran.product.selectPage", map);
		return vos;
	}
	
	// 상품 1개 조회
	public ProductVO pdSelsctOneByPId(int pId) {
		openSession();
		ProductVO v = session.selectOne("kr.co.moran.product.selectByPId", pId);
		return v;
	}
	
	// 상품 1개 조회 *관리자 용*
	public ProductVO selectByPIdAdmin(int pId) {
		openSession();
		ProductVO v = session.selectOne("kr.co.moran.product.selectByPIdAdmin", pId);
		return v;
	}
	
	// 전체 이미지 조회
	public List<ProductImgVO> piSelsctByPId(int pId) {
		openSession();
		List<ProductImgVO> vos = session.selectList("kr.co.moran.product.selectAllImgByPId", pId);
		return vos;
	}
	
	// 대표이미지 조회
	public ProductImgVO piSelsctBigimgByPId(int pId) {
		openSession();
		ProductImgVO v = session.selectOne("kr.co.moran.product.piSelsctBigimgByPid", pId);
		return v;
	}
	
	// 상품 구매자 수
	public int orderTotalByPid(int pId) {
		openSession();
		int cnt = session.selectOne("kr.co.moran.product.orderTotalByPid", pId);
		return cnt;
	}
	
	// 인기순 페이지 조회
	public List<ProductVO> pdSelectPop(int start, int pageNum) {
		openSession();
		Map<String, Integer> map = new HashMap<>();
        map.put("start", start);
        map.put("pageNum", pageNum);
        List<ProductVO> vos = session.selectList("kr.co.moran.product.pdSelectPop", map);
        return vos;
	}
	
	// 최신순 페이지 조회
	public List<ProductVO> pdSelectLatest(int start, int pageNum) {
		openSession();
		Map<String, Integer> map = new HashMap<>();
        map.put("start", start);
        map.put("pageNum", pageNum);
        List<ProductVO> vos = session.selectList("kr.co.moran.product.pdSelectLatest", map);
		return vos;
	}
	
	// 카테고리별 페이지 조회
	public List<ProductVO> pdSelectByCId(int start, int pageNum, int cId) {
		openSession();
//		System.out.println("C_ID :" + cId);
		Map<String, Integer> map = new HashMap<>();
		map.put("start", start);
		map.put("pageNum", pageNum);
		map.put("C_ID", cId);
        List<ProductVO> vos = session.selectList("kr.co.moran.product.pdSelectByCId", map);
		return vos;
	}
	
	// 인기상품 id 조회
	public List<Integer> pdSelectPopByPId() {
		openSession();
		List<Integer> vos = session.selectList("kr.co.moran.product.pdSelectPopByPId");
		return vos;
	}

	// 검색 조회
	public List<ProductVO> pdSelectBySearch(int start, int pageNum, String keyword) {
		openSession();
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("pageNum", pageNum);
		map.put("keyword", "%" + keyword + "%");
		
        List<ProductVO> vos = session.selectList("kr.co.moran.product.pdSelectBySearch", map);
		return vos;
	}

	// 보관목록 조회
	public List<ProductVO> pdSelectBySave(int start, int pageNum) {
		openSession();
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("pageNum", pageNum);
		
        List<ProductVO> vos = session.selectList("kr.co.moran.product.pdSelectBySave", map);
		return vos;
	}
	
	// 품절목록 조회
	public List<ProductVO> pdSelectBySoldOut(int start, int pageNum) {
		openSession();
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("pageNum", pageNum);
		
        List<ProductVO> vos = session.selectList("kr.co.moran.product.pdSelectBySoldOut", map);
		return vos;
	}
	
	
	// update
	// 삭제기간 설정
	public void pdDeleteSet(int pId) {
		openSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("pId", String.valueOf(pId));
		
		// 현재 날짜에 30일 더하기
		LocalDate now = LocalDate.now().plusDays(30);
		map.put("date", now.toString());
		
		session.update("kr.co.moran.product.pdDeleteSet", map);
		session.commit();
	}
	
	// 상품 재등록
	public void pdUpdateSet(ProductVO vo) {
		openSession();
		session.update("kr.co.moran.product.pdUpdateSet", vo);
		session.commit();
	}
	
	// delete
	// 보관기간 지나면 삭제
	public void pdAutoDelete() {
		openSession();
		session.delete("kr.co.moran.product.pdAutoDelete");
		session.commit();
	}
	
	
	/* 카테고리 */
	// insert
	public void ctAdd(String cParentId, String name) {
		openSession();
		Map<String, String> vo = new HashMap<String, String>();
		vo.put("cParentId", cParentId);
		vo.put("name", name);
		session.insert("kr.co.moran.category.ctAdd", vo);
		session.commit();
	}
	
	// 카테고리 전체 조회
	public List<CategoryVO> ctSelectAll() {
		openSession();
		List<CategoryVO> vos = session.selectList("kr.co.moran.category.ctSelectAll");
		return vos;
	}
	
	// 하위 카테고리가 없는 최상위 카테고리 조회
	public List<CategoryVO> ctSelectByParentIdIsNull() {
		openSession();
		List<CategoryVO> vos = session.selectList("kr.co.moran.category.ctSelectByParentIdIsNull");
		return vos;
	}

	// 부무 참조 키로 하위 카테고리 조회
	public List<CategoryVO> ctSelectByParentId(int parentId) {
		openSession();
		List<CategoryVO> vos = session.selectList("kr.co.moran.category.ctSelectByParentId", parentId);
		return vos;
	}

	// 부무 참조 키로 하위 카테고리 조회
	public List<CategoryVO> ctSelectByCId(int cId) {
		openSession();
		List<CategoryVO> vos = session.selectList("kr.co.moran.category.ctSelectByCId", cId);
		return vos;
	}
	
	public CategoryVO ctSelectOneByCId(int cId) {
		openSession();
		CategoryVO ctg = session.selectOne("ctSelectByCId", cId);
		return ctg;
	}
	
	
	// update
	public void ctUpdate(int cId, String cParentId, String name) {
		openSession();
		Map<String, Object> vo = new HashMap<String, Object>();
		vo.put("cId", cId);
		vo.put("cParentId", cParentId);
		vo.put("name", name);
		session.update("kr.co.moran.category.ctUpdate", vo);
		session.commit();
	}
	
	
	// delete
	public void ctDelete(int cId) {
		openSession();
		session.insert("kr.co.moran.category.ctDelete", cId);
		session.commit();
	}
	
	public void closeSession() {
		if(session != null ) {
			session.close();
			session = null;
		}
	}
	
	// test
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		
		// product
//		dao.pdSelectPage(0, 12).forEach(v -> {
//			System.out.println(v.getPId());
//			System.out.println(dao.piSelsctBigimgByPId(v.getPId()).getImg());
//		});
//		System.out.println(dao.pdSelsctOneByPId(12938));
		
//		dao.piSelsctByPId(12938).forEach(System.out::println);
//		System.out.println(dao.piSelsctBigimgByPId(12938));
		
//		dao.pdSelectPopByPId(0, 12).forEach(System.out::println);
//		dao.pdSelectLatest(0, 12).forEach(System.out::println);
		
//		dao.addProduct(new ProductVO(0, 1, "test", 0, "test 중", 0, 0, 0,
//				Date.valueOf("1111-01-01"), 0, null));
		
//		 dao.pdDeleteSet(204883);
//		dao.pdAutoDelete();
		
		// category
//		dao.ctAdd(null, "test");
		
		dao.ctUpdate(101, null, "직립-1");
		
//		dao.selectAll().forEach(System.out::println);
//		dao.ctSelectByParentId(0).forEach(System.out::println);
		
//		dao.ctDelete(108);
		
//		dao.pdSelectBySave(0, 10).forEach(System.out::println);
//		System.out.println(dao.pdSaveCnt());
		
		
		//test quert
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("start", 0);
//		map.put("pageNum", 3);
//		map.put("keyword", "%관목형%");
//		dao.session.selectList("kr.co.moran.product.pdSelectBySearch", map)
//			.forEach(System.out::println);
//		
		dao.closeSession();
	}
}