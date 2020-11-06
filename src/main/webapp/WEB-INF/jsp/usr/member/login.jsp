<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<h1>회원 로그인</h1>
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

</body>
</html>