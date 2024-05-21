/**
 * product - listView.jsp
 */
let descConvert = (data) => {
	let contents = "<p>";
	for(key in data) {
		contents += data[key] + "<br/>";
	}
	contents += "</p>";
	
	return contents;
}