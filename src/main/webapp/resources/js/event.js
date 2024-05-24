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
	//대댓글 입력폼 
	$('.reCommentBtn').on("click", function(){
		$('.replyForm').show();
	});
	
	//대댓글 등록
	$('.regReComment').on('click', function(){
		
		let contents = $('textarea[name=\'replyContent\']').val();
//		console.log(contents);
		$.ajax({
			url: '/event?'
			
		});
		
	});
	
})



