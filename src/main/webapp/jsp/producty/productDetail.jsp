<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../../resources/css/globals.css" />
    <link rel="stylesheet" href="../../resources/css/detail.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="../../resources/js/productDetail.js"></script>
  </head>
  <body>
    <div class="div-wrapper">
      <img class="header" src="../../resources/img/header.svg" />
      <div class="frame">
        <div class="div">
          <div class="frame-2"><div class="text-wrapper">홈</div></div>
          <div class="frame-2"><div class="text-wrapper">커뮤니티</div></div>
          <div class="frame-3"><div class="text-wrapper-2">스토어</div></div>
          <div class="frame-2"><div class="text-wrapper">공지</div></div>
          <div class="frame-2">
            <div class="text-wrapper">이벤트</div>
            <div class="ellipse"></div>
          </div>
          <div class="frame-2"><div class="text-wrapper">1:1 문의</div></div>
        </div>
        <div class="frame-4">
          <div class="text-wrapper-3">상품 또는 식물 검색하기</div>
          <div class="union-wrapper"><img class="union" src="../../resources/img/union.svg" /></div>
        </div>
      </div>
      <div class="frame-wrapper">
        <div class="frame-5">
          <div class="frame-6"><div class="text-wrapper-4">로그인</div></div>
          <div class="frame-6"><div class="text-wrapper-4">회원가입</div></div>
        </div>
      </div>
      <div class="view">
        <div class="text-wrapper-5">모란모란소개</div>
        <p class="p">대표이사 : 홍길동, 주소 : 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
        <p class="text-wrapper-6">12345) 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
        <p class="text-wrapper-7">Fax : 02-123-4567 / E-mail: moranmoran@moran.com</p>
        <p class="text-wrapper-8">사업자등록번호 : 123-45-67890, 통신판매업신고 : 2024-서울구구-3456</p>
        <p class="UI-copyright">
          <span class="span"
            >모란모란은 통신판매중개자이며 통신판매의 거래당사자가 아닙니다. 따라서 판매자가 등록한 상품•거래•가격
            정보에 대하여 일체 책임을 지지 않습니다.<br />본 사이트의 모든 정보, 콘텐츠, UI 등에 대한 무단 복제 및 배포
            등의 행위는 엄격히 금지됩니다.<br
          /></span>
          <span class="text-wrapper-9">Copyright MoranMoran Co. All Rights Reserved.</span>
        </p>
        <div class="text-wrapper-10">사업자정보확인 &gt;</div>
        <div class="text-wrapper-11">모란모란(주)</div>
        <div class="text-wrapper-12">고객센터</div>
        <div class="text-wrapper-13">1234-5678</div>
        <div class="text-wrapper-14">이용약관</div>
        <div class="text-wrapper-15">전자금융거래약관</div>
        <div class="text-wrapper-16">개인정보처리방침</div>
      </div>
      <div class="view-wrapper">
        <div class="view-2">
          <div class="frame-7">
            <div class="group">
              <div class="rectangle"></div>
              <div class="rectangle-2"></div>
              <div class="rectangle-3"></div>
              <div class="rectangle-4"></div>
            </div>
            <div class="text-wrapper-17">카테고리 전체</div>
          </div>
          <div class="frame-2"><div class="text-wrapper-18">전체 상품</div></div>
          <div class="frame-2"><div class="text-wrapper-19">이달의 인기상품</div></div>
        </div>
      </div>
      <img class="img" src="../../resources/img/rectangle-4.png" />
      <div class="text-wrapper-20">꽃기린</div>
      <div class="text-wrapper-21" id="price">100,000원</div>
      <div class="frame-8">
        <div class="frame-9">
          <img class="img-2" src="../../resources/img/heart.svg" />
          <div class="text-wrapper-22">1,234개</div>
        </div>
        <div class="frame-9">
          <img class="img-2" src="../../resources/img/star.svg" />
          <div class="text-wrapper-22">0.0</div>
          <div class="text-wrapper-22">(123)</div>
        </div>
      </div>
      <div class="frame-10">
        <div class="frame-11">
          <img class="vector" src="../../resources/img/vector.svg" />
          <div class="text-wrapper-23">인기</div>
        </div>
        <div class="frame-12">
          <img class="vector-2" src="../../resources/img/vector-1.svg" />
          <div class="text-wrapper-23">신상품</div>
        </div>
      </div>
      <div class="text-wrapper-24">판매스토어명</div>
      <div class="text-wrapper-25">Euphorbia milii 유포르비아</div>
      <div class="text-wrapper-26">꽃기린</div>
      <p class="crown-of-thorns">
        긴 줄기에 솟아오른 꽃의 모양이 기린 같다 하여 ‘꽃기린’이라고 불리는 꽃기린은 대극과의 다육식물이에요. 줄기에 난
        날카로운 가시가 예수님이 고난을 당할 때 쓰던 가시 면류관과 닮아서 &#39;Crown of thorns&#39;라고도 불리운답니다.
        꽃기린은 밝은 빛이 오랫동안 머무는 곳에서 잎 사이사이에 바람이 잘 통하도록 키워준다면 초보 식집사도 잘 키울 수
        있어요. 또한 빛만 충분히 받을 수 있다면 일년내내 꽃을 볼 수 있답니다. 꽃처럼 보이는 부분은 실제로는
        &#39;포엽&#39;으로, 포엽 중앙의 작은 노란 부분이 진짜 꽃기린의 꽃이랍니다. 꽃기린을 자르거나 상처를 내게 되면
        끈적한 진액이 나오는데, 이 진액에는 독성이 있어 알러지 반응을 일으키므로 진액이 직접 손에 닿지 않도록 주의해
        주세요.
      </p>
      <img class="rectangle-5" src="../../resources/img/rectangle-34626555.png" />
      <img class="rectangle-6" src="../../resources/img/rectangle-34626556.png" />
      <img class="rectangle-7" src="../../resources/img/rectangle-34626557.png" />
      <img class="rectangle-8" src="../../resources/img/rectangle-34626558.png" />
      <div class="overlap-group">
        <div class="frame-13"><div class="text-wrapper-27">장바구니 담기</div></div>
        <div class="frame-14"><div class="text-wrapper-28">바로 구매</div></div>
        <div class="overlap">
          <div class="text-wrapper-29">옵션을 선택하세요</div>
          <img class="menu-down" src="../../resources/img/menu-down.svg" />
        </div>
        <div class="text-wrapper-30" id="totalPrice" >100,000원</div>
        <div class="text-wrapper-31">주문금액</div>
        <p class="text-wrapper-32">(분갈이용 화분 포함) 꽃기린 x1</p>
        <div class="frame-15">
			<div class="frame-16">
				<input type="number" class="text-wrapper-33" name="cnt" id="cnt" value="1">
			</div>
			<img class="frame-17" id="plus" src="../../resources/img/frame-427321499_1.svg" />
			<img class="frame-18" id="minus" src="../../resources/img/frame-427321498.svg" />
		</div>
      </div>
      <div class="frame-19">
        <div class="frame-20"><div class="text-wrapper-34">#꽃을 감상하는</div></div>
        <div class="frame-20"><div class="text-wrapper-34">#초보자용</div></div>
        <div class="frame-20"><div class="text-wrapper-34">#선물하기 좋은</div></div>
        <div class="frame-20"><div class="text-wrapper-34">#공기정화</div></div>
        <div class="frame-20"><div class="text-wrapper-34">#목대있는</div></div>
        <div class="frame-20"><div class="text-wrapper-34">#둥근모양</div></div>
        <div class="frame-20"><div class="text-wrapper-34">#길쭉한</div></div>
      </div>
      <div class="text-wrapper-35">배송비 3,500원</div>
      <div class="frame-21">
        <img class="img-2" src="../../resources/img/flower.svg" />
        <p class="text-wrapper-36">모란모란이 알려드리는 해당 상품 식물 정보, 구매 전후로 꼭 확인해보세요!</p>
      </div>
      <img class="element" src="../../resources/img/2024-05-17-2-49-1.png" />
    </div>
  </body>
</html>
