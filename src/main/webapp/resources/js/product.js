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
	 + "<div class='tag-text'>" + name + "</div></div>";
	 
	for(key in data) {
		switch(key){
			// 생육형태
		    case "clCodeNm":
				$("#category").html(data[key]);
				$(".prd-growth-form").html("생육형태 : " + data[key]);
				
				textTag += "<div class='prd-text-tag-frame'>"
				 + "<div class='tag-text'>" + data[key] + "</div></div>";
				break;
			// 기능성정보
		    case "fncltyInfo":
				plantInfo += "기능성정보 :<br>" + data[key] + "<br><br>";
				break;
			// 꽃정보
			case "flwrInfo":
				plantInfo += "꽃정보 :<br>" + data[key] + "<br><br>";
				break;
			// 특별관리정보 / 특성 & 광
		    case "speclmanageInfo":
				plantInfo += "특별관리 정보 :<br>" + data[key] + "<br><br>";
				break;
			// 조언정보
		    case "adviseInfo":
				plantInfo += "조언 정보 :<br>" + data[key] + "<br><br>";
				break;
			// 물주기
		    case "watercycleCodeNm":
				plantInfo += "물주기 : <br>" + data[key] + "<br><br>";
				break;
		    // 관리 요구도
		    case "managedemanddoCodeNm":
				plantInfo += "관리 요구도 :" + data[key] + "<br>";
				
				textTag += "<div class='prd-text-tag-frame'>"
				 + "<div class='tag-text'>난이도:" + data[key] + "</div></div>";
				break;
		    // 관리수준
		    case "managelevelCodeNm":
				plantInfo += "난이도 : " + data[key] + "<br><br>";
				
				textTag += "<div class='prd-text-tag-frame'>"
				 + "<div class='tag-text'>" + data[key] + "</div></div>";
				break;
		    // 배치장소
		    case "postngplaceCodeNm":
				plantInfo += "배치장소 : <br>" + data[key].replaceAll(",", ",<br>") ;
				break;
		}
		$(".plant-info").html(plantInfo);
		$("#prd-text-tag").html(textTag);
	}
}

let imgBath = (imgs) => {
	let imgTags = "";
	for(key in imgs) {
		imgTags += "<img class='prd-imgs' src='" + imgs[key] + "' />";
	}
	$("#prdImgs").html(imgTags);
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