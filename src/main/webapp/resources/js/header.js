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
	
	$('.myInfo').on('click', function(){
		window.location.href = "/moran/member?cmd=myPageForm";
	})

	$('.myBag').on('click', function(){
		window.location.href = "/moran/cart?cmd=list";
	})
	$('.header-logo').on('click', function(){
		
		window.location.href = "/moran/main";
	});
	
	
})