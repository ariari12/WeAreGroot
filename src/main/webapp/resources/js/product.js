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
let descConvert = (data) => {
	let contents = "<p>";
	for(key in data) {
		contents += data[key] + "<br/>";
	}
	contents += "</p>";
	
	return contents;
}

/**
 * category - modifyCatefory.jsp
 */
let unauthorized = () => {
	sAlert.fire({
		title: "접근 권한이 없는 사용자입니다.",
		text: "관리자에게 문의하세요.",
		icon: "info"
	});
	window.location = "./product";
}

let subCtgSelects = (list) => {
    let options = "";
    for (const item of list) {
		console.log(item);
        options += "<option value='"+ item.cId +"'>"+ item.name +"</option>";
    }
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