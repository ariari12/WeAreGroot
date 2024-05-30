/**
 * 헤더 JavaScrpt
 */
$(function(){
	
	$('div.logout').on('click', function(){
		window.location.href = "/moran/member?cmd=logoutOk";
	})
	
	$('div.login').on('click', function(){
		window.location.href = "/moran/member?cmd=loginForm";
	})
	$('div.join').on('click', function(){
		window.location.href = "/moran/member?cmd=joinForm";
	})
		
	
	
	
})