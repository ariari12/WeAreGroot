/**
 * product - listView.jsp
 */
let viewDetails = (no) => {
	window.location.href = "./product?cmd=detail&no=" + no;
};

let descConvert = (data) => {
	let contents = "<p>";
	for(key in data) {
		contents += data[key] + "<br/>";
	}
	contents += "</p>";
	
	return contents;
}