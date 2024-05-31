<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모란모란 - 오늘의 꽃</title>
<!-- 제이쿼리 --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!-- 애니메이션.css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<!-- 구글 폰트 IBM Plex Sans KR -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="resources/css/dailyFlower.css" />
<script src="resources/js/dailyFlower.js?v=<%=System.currentTimeMillis() %>"></script>
</head>
<body>
    <div class="flower_frame">
        <div>
            <!-- 날짜 표시 -->
            <h2 class="flower_text" id="flower_date"></h2>
        </div>

        <div>
            <!-- 부트스트랩 캐러셀 -->
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <!-- 이미지 1 -->
                        <img src="..." class="d-block w-100" alt="..." id="flower_img1">
                    </div>
                    <div class="carousel-item">
                        <!-- 이미지 2 -->
                        <img src="..." class="d-block w-100" alt="..." id="flower_img2">
                    </div>
                    <div class="carousel-item">
                        <!-- 이미지 3 -->
                        <img src="..." class="d-block w-100" alt="..." id="flower_img3">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <div>
            <!-- 꽃이름 -->
            <h2 class="flower_text" id="flower_name"></h2>
        </div>

        <div>
            <!-- 꽃말 -->
            <h6 class="flower_text" id="flower_language"></h6>
        </div>

        <div>
            <!-- 꽃내용 -->
            <div class="flower_info" id="flower_content"></div>
        </div>
        <hr>

        <div>
            <!-- 부트스트랩 아코디언 -->
            <div class="accordion" id="accordionPanelsStayOpenExample">
                <!-- 첫번째 아이템 -->
                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                            aria-controls="panelsStayOpen-collapseOne">
                            🌸 꽃 자생처
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
                        aria-labelledby="panelsStayOpen-headingOne">
                        <div class="accordion-body">
                            <!-- 내용 -->
                            <div class="flower_info" id="flower_habitat"></div>
                        </div>
                    </div>
                </div>
                <!-- 두번째 아이템 -->
                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseTwo">
                            💧 꽃 기르는 법
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
                        aria-labelledby="panelsStayOpen-headingTwo">
                        <div class="accordion-body">
                            <!-- 내용 -->
                            <div class="flower_info" id="flower_growing"></div>
                        </div>
                    </div>
                </div>
                <!-- 세번째 아이템 -->
                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseThree">
                            🌼 꽃 용도
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
                        aria-labelledby="panelsStayOpen-headingThree">
                        <div class="accordion-body">
                            <!-- 내용 -->
                            <div class="flower_info" id="flower_purpose"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>