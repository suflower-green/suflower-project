package com.suflower.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.suflower.domain.Criteria;
import com.suflower.domain.ReplyDTO;
import com.suflower.service.MemberService;
import com.suflower.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@AllArgsConstructor
@Log4j
@RequestMapping("/reply/*")
public class ReplyController {
	ReplyService rservice;

	// 댓글 등록
	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody ReplyDTO dto) { // RequestBody를 적용해서 Json 데이터를 ReplyDTO 타입으로 변환
		log.info("Reply DTO = " + dto);
		int insertCount = rservice.register(dto);
		log.info("Reply Insert Count = " + insertCount);
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK): new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	// 특정 게시물의 댓글목록 확인
	@GetMapping(value = "/pages/{boardNo}/{pageNum}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<ReplyDTO>> getList(@PathVariable("pageNum") int pageNum,
			@PathVariable("boardNo") Long boardNo) {
		log.info("getList");
		Criteria cri = new Criteria(pageNum, 10);
		log.info(cri);

		return new ResponseEntity<>(rservice.getList(cri, boardNo), HttpStatus.OK);
	}

	// 댓글 조회
	// 댓글 조회
	/*
	 * @GetMapping(value = "/{replyNo}", produces = {
	 * MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE })
	 * public ResponseEntity<ReplyDTO> get(@PathVariable("replyNo") Long replyNo) {
	 * log.info("get :" + replyNo); return new
	 * ResponseEntity<>(rservice.get(replyNo), HttpStatus.OK); }
	 */

	@DeleteMapping(value = "/{replyNo}", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> remove(@PathVariable("replyNo") Long replyNo) {
		log.info("remove :" + replyNo);
		return rservice.remove(replyNo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}

	// 댓글 수정
	// PUT = 수정
	@RequestMapping(method = { RequestMethod.PUT,
			RequestMethod.PATCH }, value = "/{replyNo}", consumes = "application/json", produces = {
					MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> modify(@RequestBody ReplyDTO dto, @PathVariable("replyNo") Long replyNo) {
		dto.setReplyNo(replyNo);
		log.info("replyNo : " + replyNo);
		log.info("modify(dto) : " + dto);
		return rservice.modify(dto) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
