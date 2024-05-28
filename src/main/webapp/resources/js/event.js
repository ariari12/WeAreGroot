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
	
	
	
})



