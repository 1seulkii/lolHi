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

	<form action="doJoin" method="POST">
		<div>
			로그인 아이디 : <input type="text" maxlength="30" placeholder="로그인 아이디를 입력해주세요."
				name="loginId" />
		</div>
		<div>
			로그인 비번 : <input type="password" maxlength="30" placeholder="로그인 비번을 입력해주세요."
				name="loginPw" />
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