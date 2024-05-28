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
	
		alert(eId);
		$.ajax({
			url: "./comment?cmd=cmntWrite",
			type: "post",
			data: {
				"eId": eId,
				"contents": contents
			},
			dataType: "json",
			success:function(data){
				console.log(data);
				if(data.msg === "성공")	window.location.reload();
				else if(data.msg === "실패") alert("댓글 등록 실패...");
				else if(data.msg === "로그인 후 이용해주세요") {
					alert("로그인 후 이용해주세요.");
					location.href = "/member?cmd=loginForm";
				}
			},
			error: function(request, status, error){
				console.log("code: " + request.status);
				console.log("msg : " + request.responseText);
				console.log("error: " + error);
			}
			
			
		});
	});

	//대댓글 입력폼 
	$('.reCommentBtn').on("click", function() {
		let replyForm = $(this).parent().children('.replyForm');
		if (replyForm.is(':visible')) {
			replyForm.hide();
		} else {
			replyForm.show();
		}
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



