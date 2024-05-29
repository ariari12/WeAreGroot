/**
 * product - common
 */
// sweetAlert2
const sAlert = Swal.mixin({
  toast: true,
  position: "center",
  showConfirmButton: true,
  timer: 3000,
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
	});
	window.location = "./product";
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
	});
	window.location = "./" + redUrl;
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
		// console.log(item);
		
		// console.log(item.nick);
		// console.log(item.regDate);
		// console.log(item.score);
		// console.log(item.imgs);
		// console.log(item.contents);
		
		reviewTable += "<table id='tabel-" + cnt + "''><tr>"
			+ "<td style='width: 200px;'>" + item.nick + " 님</td>"
			+ "<td>작성일: " + item.regDate + "</td></tr>"
			+ "<tr><td colspan='2' class='score'>"
			+ "<span>" + item.score  + "점 </span>";
		
        let score = parseInt(item.score);
        for (let index = 0; index < score; index++) {
            reviewTable += "<img src='resources/img/product_detail/star.svg' />";
        }
        for (let index = 0; index < 5 - score; index++) {
            reviewTable += "<img src='resources/img/product_detail/star_gray.svg' />";
        }
		reviewTable += "</td></tr>";
		
		reviewTable += "<tr><td colspan='2'>";
		for(img of item.imgs) {
			reviewTable += "<img class='rv_imgs' src='" + img + "' />";
		}
		
		reviewTable += "</td></tr><tr><td colspan='2'>" + item.contents + "</td></tr>";
		cnt++;
	}
	
	$(".review-container").html(reviewTable);
	
	let reviewHeight = $(".review-container").height() -2672;
	reviewHeight = (reviewHeight < -1967 ? -1967 : reviewHeight);
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
    let options = "";
    for (const item of list) {
		console.log(item);
        options += "<option value='"+ item.cId +"'>"+ item.name +"</option>";
    }
    options += "<option value='null'>선택 안함</option>";
    
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