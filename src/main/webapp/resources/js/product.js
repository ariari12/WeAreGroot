/**
 * product - common
 */
let wrong = () => {
	alert("잘못된 접근입니다.");
	alert("상품 화면으로 이동합니다");
	window.location = "./product";
}

let viweMsg = (msg) => {
	alert(msg);
}

let redirect = (redUrl) => {
	window.location = "./" + redUrl;
}

let msgRedirect = (msg, redUrl) => {
	alert(msg);
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
	alert("접근 권한이 없는 사용자입니다." 
		+ "\n관리자에게 문의하세요.\n"
		+ "\n -관리자-");
	window.location = "./product";
}