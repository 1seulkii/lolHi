<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<script>
		var joinFormSubmitDone = false;
		function joinFormSubmit(form) {
			if (joinFormSubmitDone) {
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
			form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
			if (form.loginPw.value != form.loginPwConfirm.value) {
				alert('비밀번호 확인이 일치하지 않습니다.');
				form.loginPwConfirm.focus();

				return;
			}
			form.name.value = form.name.value.trim();
			if (form.name.value.length == 0) {
				alert('사용자 이름을 입력해주세요');
				form.name.focus();

				return;
			}
			<!-- 마지막에 꼭 넣어줘야 회원가입 가능, 개수만큼 실행 진행 , 
								joinFormSubmitDone 변수로 처리하는 방법 확인-->
			form.submit();
			joinFormSubmitDone = true;
		}
	</script>
	<form action="doJoin" method="POST" onsubmit="joinFormSubmit(this); return false;">
		<div>
			로그인 아이디 : <input type="text" maxlength="30" placeholder="로그인 아이디를 입력해주세요."
				name="loginId" />
		</div>
		<div>
			로그인 비번 : <input type="password" maxlength="30" placeholder="로그인 비번을 입력해주세요."
				name="loginPw" />
		</div>
		<div>
			로그인 비번 확인 : <input type="password" maxlength="30" placeholder="로그인 비번을 확인해주세요."
				name="loginPwConfirm" />
		</div>
		<div>
			사용자 이름 : <input type="text" maxlength="30" placeholder="사용자 이름을 입력해주세요."
				name="name" />
		</div>
		<div>
			가입 : <input type="submit" value="가입" />
		</div>
	</form>

</body>
</html>