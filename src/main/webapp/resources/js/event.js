/*Event JavaScript*/

$(function(){

/************** eventList.jsp ***************/	
	$(".eventThum").on("click",function(){
		
		let eId = $(this).closest('.eventBox').find(".eId").val();
		location.href = "/moran/event?eId="+eId
		
	});	
	
	$('.title').on('click', function(){
		let eId = $(this).closest('.eventBox').find(".eId").val();
		location.href = "/moran/event?eId="+eId
	});
	
	
/************** eventDetail.jsp ***************/
	const Http = new XMLHttpRequest();
	const url = window.location; 

	//console.log(url.search.split("?")[1].split("=")[1]);
	
	//댓글 등록
	$('.writeCommentBtn').on('click', function(){
		let eId = url.search.split("?")[1].split("=")[1];
		let contents = $('.writeComment').val();
		
		$.ajax({
			
			
		});
	});

	//대댓글 입력폼 
	$('.reCommentBtn').on("click", function(){
		$('.replyForm').show();
	});
	
	//대댓글 등록
	$('.regReComment').on('click', function(){
		
		let contents = $('textarea[name=\'replyContent\']').val();
		console.log($('input[name=\'cList\']').val());
//		$.ajax({
//			url: '/comment?cmd=reCommentWrite',
//			type: "post",
//			
//			
//			
//			
//		});
//		
	});
	
})



