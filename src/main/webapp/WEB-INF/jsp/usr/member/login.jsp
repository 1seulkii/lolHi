<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- head 파일에서 title 가져와 설정하기 -->
<c:set var="title" value="회원 로그인" />
<!-- head 파일 부분을 공통으로 가져와 사용할 수 있어, -->
<%@ include file="../part/head.jspf" %>
	<script>
		var loginFormSubmitDone = false;
		function loginFormSubmit(form) {
			if (loginFormSubmitDone) {
				alert('처리중입니다.');
				return;
			}

			form.loginId.value = form.loginId.value.trim();
			if (form.loginId.value.length == 0) {
				alert('로그인 아이디를 입력해주세요');
				form.loginId.focus();

				return;
			}
			form.loginPw.value = form.loginPw.value.trim();
			if (form.loginPw.value.length == 0) {
				alert('로그인 비번을 입력해주세요');
				form.loginPw.focus();

				return;
			}
			<!-- 마지막에 꼭 넣어줘야 회원가입 가능, 개수만큼 실행 진행 , 
								loginFormSubmitDone 변수로 처리하는 방법 확인-->
			form.submit();
			loginFormSubmitDone = true;
		}
	</script>
	<form action="doLogin" method="POST" onsubmit="loginFormSubmit(this); return false;">
		<div>
			로그인 아이디 : <input type="text" maxlength="30" placeholder="로그인 아이디를 입력해주세요."
				name="loginId" />
		</div>
		<div>
			로그인 비번 : <input type="password" maxlength="30" placeholder="로그인 비번을 입력해주세요."
				name="loginPw" />
		</div>
		<div>
			로그인 : <input type="submit" value="login" />
		</div>
	</form>

<%@ include file="../part/foot.jspf" %>
