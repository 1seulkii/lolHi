<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- head 파일에서 title 가져와 설정하기 -->
<c:set var="title" value="게시물 댓글 수정" />
<!-- head 파일 부분을 공통으로 가져와 사용할 수 있어, -->
<%@ include file="../part/head.jspf" %>

	<form action="doModify" method="post">
		<input type="hidden" name="id" value="${reply.id}" />
		<div>번호 : ${reply.id}</div>
		<div>작성날짜 : ${reply.regDate}</div>
		<div>수정날짜 : ${reply.updateDate}</div>
		<div>
			내용 : <input type="text" maxlength="30" placeholder="내용을 입력해주세요."
				name="body" value="${reply.body}" />
		</div>
		<div>
			수정 : <input type="submit" value="수정" />
		</div>
	</form>
	
	<div>
		<a href="list">리스트</a>
	</div>

<%@ include file="../part/foot.jspf" %>
