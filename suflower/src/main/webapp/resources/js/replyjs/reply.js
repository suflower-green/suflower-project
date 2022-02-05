console.log("Reply Module log ");

var replyService = (function() {
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
				}
			},
			error: function(xhr, status, er) {
				if (error) {
					error(er);

				}
			}
		})
	}
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
		console.log("콘솔 보드넘버 확인 " + boardNo + "< 이게값임");
		console.log("콘솔 페이지넘버 확인 " + pageNum + "< 이게값임");
	}

	function remove(replyNo, callback, error) {
		$.ajax({
			type:'delete',
			url:'/reply/' + replyNo,
			success: function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error: function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	return {
		add: add,
		getList: getList,
		remove :remove
	};
})();
