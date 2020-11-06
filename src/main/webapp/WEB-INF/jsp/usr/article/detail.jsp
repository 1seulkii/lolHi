<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- head 파일에서 title 가져와 설정하기 -->
<c:set var="title" value="게시물 상세페이지" />
<!-- head 파일 부분을 공통으로 가져와 사용할 수 있어, -->
<%@ include file="../part/head.jspf" %>
	
	<div>아이디: ${article.id}</div>
	
	<div>제목: ${article.title}</div>
	
	<div>내용: ${article.body}</div>
	
	<div>
		<a href="list">리스트</a>
		<a onclick="if (confirm('삭제하시겠습니까?') == false) return false;"
				href="doDelete?id=${article.id}">삭제</a>
			<a href="modify?id=${article.id}">수정</a>
	</div>

<%@ include file="../part/foot.jspf" %>
