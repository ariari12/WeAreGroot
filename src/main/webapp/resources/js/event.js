/*Event JavaScript*/


$(function() {

	/************** eventList.jsp ***************/
	$(".eventThum").on("click", function() {
		let eId = $(this).closest('.eventBox').find(".eId").val();
		location.href = "/moran/event?eId=" + eId
	});

	$('.title').on('click', function() {
		let eId = $(this).closest('.eventBox').find(".eId").val();
		location.href = "/moran/event?eId=" + eId
	});

	/************** eventDetail.jsp ***************/
	const url = window.location;
	//console.log(url.search.split("?")[1].split("=")[1]);

	//댓글 등록
	$('.writeCommentBtn').on('click', function() {
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
			success: function(data) {
				console.log(data);
				if (data.msg === "성공") window.location.reload();
				else if (data.msg === "실패") alert("댓글 등록 실패...");
				else if (data.msg === "로그인 후 이용해주세요") {
					alert("로그인 후 이용해주세요.");
					location.href = "/member?cmd=loginForm";
				}
			},
			error: function(request, status, error) {
				console.log("code: " + request.status);
				console.log("msg : " + request.responseText);
				console.log("error: " + error);
			}
		});
	});

	//대댓글보기
	$('.reCommentBtn').on("click", function() {
		let replyForm = $(this).parent().children('.replyForm');
		let eId = url.search.split("?")[1].split("=")[1];
		let cId = $(this).parent().children('input[name=cId]').val();

		if (replyForm.is(':visible')) {
			replyForm.hide();
		} else {
			replyForm.show();
			//대댓글 보기
			$.ajax({
				url: "./comment?cmd=reComntListView",
				type: "post",
				data: {
					"cId": cId
				},
				dataType: "json",
				success: function(response) {
					//					console.log("AJAX 요청 성공");
					for (let i = 0; i < response.length; i++) {
						let reComn = "<div class=\"reComntBox\"><div><span class=\"memNick\">" + response[i].nick + "</span><span class=\"regDate\">" + response[i].regDate + "</span></div>"
							+ "<div class=\"commentContents\">" + response[i].contents + "</div></div>";
						replyForm.prepend(reComn);
					}	//db에서 날짜desc순으로 조회했는데 .replyForm 첫 자식요소로 추가해서 웹에서 자동으로 오름차순 정렬됨.
				},
				error: function(request, status, error) {
					console.log("AJAX 요청 실패");
					console.log("code: " + request.status);
					console.log(request);
					console.log("error: " + error);
				}
			});

			//대댓글 작성			
			$('.replyForm>.reWriteCommentBtn').on('click', function() {
				let contents = $(this).siblings('.reWriteComment').val();
				$.ajax({
					url: "./comment?cmd=cmntWrite",
					type: "post",
					data: {
						"cId": cId,
						"cParentId": cId,
						"eId": eId,
						"contents": contents
					},
					dataType: "json",
					success: function(data) {
						console.log(data);
						if (data.msg === "성공") window.location.reload();
						else if (data.msg === "실패") alert("댓글 등록 실패...");
						else if (data.msg === "로그인 후 이용해주세요") {
							alert("로그인 후 이용해주세요.");
							location.href = "/member?cmd=loginForm";
						}
					},
					error: function(request, status, error) {
						console.log("code: " + request.status);
						console.log("msg : " + request.responseText);
						console.log("error: " + error);
					}
				});
			})
		}
	});


})



