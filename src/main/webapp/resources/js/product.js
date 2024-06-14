/**
 * product - common
 */
// sweetAlert2
const sAlert = Swal.mixin({
  	toast: true,
  	position: "center",
  	showConfirmButton: true,
  	timer: 2000,
  	timerProgressBar: true,
	allowEnterKey: true,
	allowEscapeKey: true,
	allowOutsideClick: true,
	didOpen: (toast) => {
	    toast.onmouseenter = Swal.stopTimer;
	    toast.onmouseleave = Swal.resumeTimer;
	}
});

let wrong = () => {
	sAlert.fire({
		title: "잘못된 접근입니다.",
		text: "상품화면으로 이동합니다.",
		icon: "error"
	}).then(() => {
		window.location = "./product";
    });
}

let viweMsg = (msg) => {
	sAlert.fire({
		text: msg,
		icon: "info"
	});
}

let redirect = (redUrl) => {
	window.location = "./" + redUrl;
}

let msgRedirect = (msg, redUrl) => {
	sAlert.fire({
		text: msg,
		icon: "info"
	}).then(() => {
		window.location = "./" + redUrl;
    });
}

let ajaxComReq = (url) => {
    return new Promise((resolve, reject) => {
        $.ajax({
            type: "post",
            url: url,
            dataType: "json",
            success: function (data) {
                resolve(data);
            },
            error: function (data, status, err) {
                console.log("실패");
                console.log(data);
                console.log(err);
                reject(err);
            }
        });
    });
}



/**
 * product - detailView.jsp
 */
let descConvert = (data, name) => {
	let plantInfo = "";
	let textTag = "<div class='prd-text-tag-frame'>"
	 + "<div class='tag-text'># " + name + "</div></div>";
	 
	console.log(data);
	 
	for(key in data) {
		switch(key){
			// 생육형태
		    case "clCodeNm":
				if(data[key] != "") {
					$("#category").text(data[key]);
					$(".prd-growth-form").text("생육형태 : " + data[key]);
					
					textTag += "<div class='prd-text-tag-frame'>"
					 + "<div class='tag-text'># " + data[key] + "</div></div>";
				}
				break;
			// 기능성정보
		    case "fncltyInfo":
				if(data[key] != "") {
					plantInfo += "기능성정보 :<br>" + data[key] + "<br><br>";
				}
				break;
			// 꽃정보
			case "flwrInfo":
				if(data[key] != "") {
					plantInfo += "꽃정보 :<br>" + data[key] + "<br><br>";
				}
				break;
			// 특별관리정보 / 특성 & 광
		    case "speclmanageInfo":
				if(data[key] != "") {
					plantInfo += "특별관리 정보 :<br>" + data[key] + "<br><br>";
				}
				break;
			// 조언정보
		    case "adviseInfo":
				if(data[key] != "") {
					plantInfo += "조언 정보 :<br>" + data[key] + "<br><br>";
				}
				break;
			// 물주기
		    case "watercycleCodeNm":
				if(data[key] != "") {
					plantInfo += "물주기 : <br>" + data[key] + "<br><br>";
				}
				break;
		    // 관리 요구도
		    case "managedemanddoCodeNm":
				if(data[key] != "") {
					plantInfo += "관리 요구도 :" + data[key] + "<br>";
					
					textTag += "<div class='prd-text-tag-frame'>"
					 + "<div class='tag-text'># 난이도:" + data[key] + "</div></div>";
				}
				break;
		    // 관리수준
		    case "managelevelCodeNm":
				if(data[key] != "") {
					plantInfo += "난이도 : " + data[key] + "<br>";
					
					textTag += "<div class='prd-text-tag-frame'>"
					 + "<div class='tag-text'># " + data[key] + "</div></div>";
				}
				break;
		    // 배치장소
		    case "postngplaceCodeNm":
				if(data[key] != "") {
					plantInfo += "<br>배치장소 : <br>" + data[key].replaceAll(",", ",<br>");
				}
				break;
		}
	}
	$(".plant-info").html(plantInfo);
	$("#prd-text-tag").html(textTag);
	
	let height = $(".plant-info").height();
	$("#big-img").css("margin-top", (250 + height + 12) + "px");
	$("#footer").css("margin-top", "-" + (930 - height) + "px");
}

let imgBath = (imgs) => {
	let imgTags = "";
	let bigImg = "";
	let cnt = 1;
	
	for(key in imgs) {
		imgTags += "<a id='#img" + cnt + "'><img class='prd-imgs' src='" + imgs[key] + "' /></a>";
		bigImg += "<img class='prd-big-imgs' id='img" + cnt + "' src='" + imgs[key] + "' />";
		cnt++;
	}
	
	$("#prdImgs").html(imgTags);
	$("#big-img").html(bigImg);
}

let menuBtnClick = () => {
	const frames = {
	    "btn-plant": "#info-frame",
	    "btn-review": "#review-frame",
	    "btn-qna": "#qna-frame"
	};
	
	let divMenu = $(".menu-select").children();
	
    divMenu.each((index, element) => {
        $(element).click(() => {
            $(element).children().addClass("menu-btn-click");
            divMenu.not(element).children().removeClass("menu-btn-click");
            
	        const frameToShow = frames[$(element).attr('id')];
	        if (frameToShow) {
	            Object.values(frames).forEach(frame => $(frame).hide());
	            $(frameToShow).show();
	        }
        });
    });
}

let productReview = (data) => {
	let reviewTable = "";
	let cnt = 1;
	for(item of data["reviews"]) {
		
		reviewTable += "<table id='tabel-" + cnt + "''><tr>"
			+ "<td style='font-family: &quot;Pretendard Variable-Bold&quot;, Helvetica; width: 200px;'>"
			 + item.nick + " 님</td>"
			+ "<td>작성일: " + item.regDate + "</td></tr>"
			+ "<tr><td colspan='2' class='score'>"
			+ "<span>" + item.score  + "점 </span>";
		
        let score = parseInt(item.score);
        for (let index = 0; index < score; index++) {
            reviewTable += "<img src='resources/img/product_detail/star_color.svg' />";
        }
        for (let index = 0; index < 5 - score; index++) {
            reviewTable += "<img src='resources/img/product_detail/star_gray.svg' />";
        }
		reviewTable += "</td></tr>";
		
		reviewTable += "<tr><td colspan='2'>";
		for(img of item.imgs) {
			reviewTable += "<img class='rv_imgs' src='" + img + "' />";
		}
		
		reviewTable += "</td></tr><tr><td style='line-height: 32px;'  colspan='2'>" + item.contents + "</td></tr>";
		cnt++;
	}
	
	$(".review-container").html(reviewTable);
	
	let reviewHeight = $(".review-container").height() -2672;
	reviewHeight = (reviewHeight < -1966 ? -1966 : reviewHeight);
	console.log(reviewHeight);
	$("#footer").css("margin-top", reviewHeight + "px");
}



/**
 * category - modifyCatefory.jsp
 */
let unauthorized = () => {
	sAlert.fire({
		title: "접근 권한이 없는 사용자입니다.",
		text: "관리자에게 문의하세요.",
		icon: "error"
	});
	window.location = "./product";
}

let subCtgSelects = (list) => {
	// console.log(list);
	
    let options = "";
    for (const item of list) {
		// console.log(item);
        options += "<option value='"+ item.cId +"'>"+ item.name +"</option>";
    }
    // console.log(options);
    $("select#subCtg").html(options);
}

// category ajax
let ajaxReq = (url, data, msg) => {
	console.log(data);
	
    $.ajax({
        type: "post",
        url: url,
   		data: data,
        dataType: "json",
        success: function (data) {
        	console.log("성공");
            console.log(data);
            
            if(data.result == "ok" && data.url != null) {
				sAlert.fire({
					text: msg,
					icon: "success"
				});
            	window.location = "./" + data.url;
            }
            else if(data.result == "ok") {
				sAlert.fire({
					text: msg,
					icon: "success"
				});
            	window.location = "./product?cmd=modify&type=ctg&ctg=view";
            }
        },
        error: (data, status, err) => {
        	console.log("실패");
        	console.log(data);
        	console.log(err);
        }
    });
}



/**
 * poduct - createProduct.jsp
 */
let inputCheck = (e) => {
    // 입력된 값이 숫자인지 확인
    if (isNaN(e.target.value)) {
        viweMsg('숫자를(을) 입력하세요.');
        e.target.value = "1"; // 입력값 초기화
    }
    // 소수점 제거하여 정수로 만듦
    e.target.value = parseInt(e.target.value);
}

let numberCheck = (tag) => {
	let n = tag.val();
    // 입력된 값이 숫자인지 확인
    if (isNaN(n)) {
        viweMsg('숫자를(을) 입력하세요.');
        tag.focus();
        return true;
    }
    else if (v != ull && n < 1) {
        viweMsg('숫자는 1보다 커야 합니다.');
        tag.focus();
        return true;
	}
    return false;
}

let nullCehck = (tag, message) => {
	let n = tag.val();
    if (n == null || n == "") {
        viweMsg(message + '를(을) 입력하세요.');
        tag.focus();
        return true;
    }
    return false;
}

let ctgCheck = () => {
    let ctg = $("select#sub-ctg option:selected").val();
    
    if(ctg == null || ctg == "") {
        ctg = $("select#sup-ctg option:selected").val();
        if(ctg == null || ctg == "") {
            viweMsg("카테고리를 선택하세요.");
            return true;
        }
        return false;
    }
    return false;
}

let imgCheck = () => {
    var fileVal = $("input[type=file]#title-img").val();
    console.log(fileVal);
    
    if (fileVal == null || fileVal == "") {
            viweMsg("대표 이미지를 첨부해주세요.");
            return true;
    }
    
    let imgs = $("#inform-imgs").children();
    for(const img of imgs) {
		console.dir(img);
		console.log(img.value);
		
		if(img.value != null || img.value != "") {
            if(img.files[0].size > (5 *1024 *1024)) {
                viweMsg("파일 사이즈는 5MB 이하로 해주세요.");
                return true;
            }
            
            var ext = img.value.split('.').pop().toLowerCase();
		    console.log(ext);
	        if($.inArray(ext, ['jpg','jpeg','gif','png']) == -1) {
	          viweMsg("'jpg,gif,jpeg,png' 파일만 업로드 할수 있습니다.");
	          return true;
	        }
	    }
        console.log(imgs);
    }

   	return false;
}

let dateCheck = () => {
    // 사용자가 선택한 날짜를 가져옴
    let selectedDate =  $("#startDate").val();

    // 사용자가 직접 입력한 날짜인지 확인
    let isValidDate = /^\d{4}-\d{2}-\d{2}$/.test(selectedDate);
    if (!isValidDate) {
        viweMsg("올바른 날짜 형식을 입력하세요 (YYYY-MM-DD).");
        return; // 날짜 형식이 올바르지 않으면 함수를 종료
    }

    // 현재 날짜를 가져옴
    let currentDate = new Date().toISOString().slice(0, 10);

    // 사용자가 선택한 날짜와 현재 날짜를 비교
    if (selectedDate < currentDate) {
        viweMsg("현재 이후 날짜로만 상품을 등록할 수 있습니다.");
        return true;
    }
    return false;
}

let ctgOptionAdd = (list, selector) => {
	console.log(list);
	
    let options = "";
    for (const item of list) {
        options += "<option value='"+ item.cId +"'>"+ item.name +"</option>";
    }
    if(selector == "select#sub-ctg") {
		options += "<option value=''>선택 안함</option>";
    }
    $(selector).html(options);
}

let ctgAjax = async() => {
    try {
        const data = await ajaxComReq(
			"./product?cmd=add&type=prd&prd=subCtg&cId="
			 + $("select#sup-ctg option:selected").val());
        ctgOptionAdd(data.ctgList, "select#sub-ctg");
    } catch (err) {
        console.error("하위 카테고리 가져오기 실패:", err);
    }
}

/* 상품문의 */
let qaFormHTML = (data) => {
	
	let html = 
	'<div class="qa-form">' +
    '<div class="qa-form-title">' +
    '<h2>상품문의</h2>' +
    '</div>' +
    '<div class="qa-form-navMenu">' +
    '<ul class="nav nav-tabs">' +
    '<li class="allQa nav-item">전체보기</li>' +
    '<li class="prdQa nav-item">상품</li>' +
    '<li class="dlvQa nav-item">배송</li>' +
    '<li class="tibQa nav-item">반품</li>' +
    '<li class="swQa nav-item">교환</li>' +
    '<li class="rfdQa nav-item">환불</li>' +
    '<li class="etcQa nav-item">기타</li>' +
    '</ul>' +
    '</div>';
    
    for(let i=0; i<data.length; i++){
		html+='<div class="qa-form-qaCard">' +
	    '<div class="writerInfo">' +
	    '<span>' + data[i].name +'</span>' +
	    '<span> | </span>' +
	    '<span>' + data[i].regdate + '</span>' +
	    '</div>' +
	    '<div class="qa-question">' +
	    '<div class="qa-question-text">';
	    
	    if(data[i].hasOwnProperty("pqaParentId")){
			html+='A';
		}else{
			html+='Q';
		}
		html+=
	    '</div>' +
	    '<div class="qaContents">' +
	    data[i].contents +
	    '</div>' +
	    '</div>' +
	    '</div>';
    }
    html+=
    '<div class="pagenation">'+
    '<button class="btn btn-primary">이전</button>' +
    '<button class="btn btn-primary">다음</button>' +
    '</div>' +
    '</div>';
    console.log(html);
    $('#qa-container').html(html);
}
