<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
</head>
<body>
	<h1>게시물 리스트</h1>
	
	<c:forEach items="${articles}" var="article">
	
		<div>
			번호 : ${articles[0].id}<br />
			작성 : ${articles[0].regDate}<br />
			갱신날짜 : ${articles[0].updateDate}<br />
			제목 : ${articles[0].title}<br />
			내용 : ${articles[0].body}<br />
		</div>
		<hr />
	</c:forEach>

</body>
</html>