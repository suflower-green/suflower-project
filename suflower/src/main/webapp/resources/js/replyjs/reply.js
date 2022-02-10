console.log("Reply Module log ");

var replyService = (function() {

	function getList(param, callback, error) {
		var boardNo = param.boardNo;
		var pageNum = param.pageNum||1;
		$.getJSON("/reply/pages/" + boardNo + "/" + pageNum + ".json",
			function(data) {
				if (callback) {
					callback(data);
				}
			}).fail(function(xhr, status, err) {
				if (error) {
					error();
				}
			});
	}
	// 댓글 등록
	function add(replyContent, callback, error) {
		console.log(" add reply .............");
		$.ajax({
			type: 'post',
			url: '/reply/new',
			data: JSON.stringify(replyContent),
			contentType: "application/json; charset=utf-8",
			success: function(result, status, xhr) {
				if (callback) {
					callback(result)
					alert("댓글 등록 완료");
				}
			},
			error: function(xhr, status, er) {
					alert("댓글을 입력해주세요");
				if (error) {
					error(er);
				}
			}
		})
	}
	
	// 댓글 삭제
	function remove(replyNo,callback,error){
		$.ajax({
			type:'delete',
			url:'/reply/'+replyNo,
			
			success:function(deleteResult,status,xhr){
				if(callback){
					callback(deleteResult);
				}
			},
			error : function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	//댓글 번호 추출
	function get(replyNo,callback,error){
		$.get("/reply/"+replyNo+".json",function(result){
			if(callback){
				callback(result);
			}
		}).fail(function(xhr,status,err){
			if(error){
				error();
			}
		});
	}
	
	
	return {
		add: add,
		getList: getList,
		remove : remove,
		get : get
	};
})();
