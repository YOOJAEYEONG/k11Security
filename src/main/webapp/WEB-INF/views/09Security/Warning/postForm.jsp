<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!--JSTL -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Spring Security에서 제공하는 form태그 사용을 위한 선언  -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>postForm</title>

<!--jquery와 부트스트랩 CDN 추가함 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
	<h2>스프링 시큐리티 사용시 주의할점</h2>

	<h3>&lt;form:form&gt; 적용 안했을때 (폼값 전송 자체가 안된다)</h3>
	<form method="post" name="loginFrm" action="">
		아이디 : <input type="text" name="id" />
		<br />
		패스워드 : <input type="text" name="pass" />
		<br />
		<button type="submit" class="btn btn-warning">로그인</button>
	</form>
	
	<!-- 정상적으로 인증절차 없이 폼값 전송됨. -->
	<h3>&lt;form:form&gt; 적용 했을때 (페이지 소스보기랑 같이 확인할것)</h3>
	<form:form method="post" name="loginFrm" action="">
		아이디 : <input type="text" name="id" />
		<br />
		패스워드 : <input type="text" name="pass" />
		<br />
		<button type="submit" class="btn btn-warning">로그인</button>
	</form:form>
	
	
</div>
</body>
</html>



















