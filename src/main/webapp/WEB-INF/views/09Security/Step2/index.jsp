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
<title>Insert title here</title>

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
	<h2>스프링 시큐리티 step2</h2>
	<h3>로그인 화면 커스텀으로 구현하기</h3>
	<h4>필요권한 : USER or ADMIN 중 하나가 필요</h4>
	<h4>사용자 아이디 : ${user_id }</h4>
	<form:form method="post" action="${pageContext.request.contextPath }/security2/logout">
		<input type="submit" value="로그아웃" />
	</form:form>
	
	<jsp:include page="/resources/common_link.jsp"></jsp:include>
	<br />	<br />	<br />	<br />	<br />	<br />	<br />	<br />	<br />	<br />	<br />	<br /><br /><hr />
	<h5>Authentication 객체 출력해보기</h5>
	<h6>getName: &emsp;${getName }</h6>
	<h6>details: &emsp;${details }</h6>
	<h6>getCredentials: &emsp;${getCredentials }</h6>
	<h6>getPrincipal: &emsp;${getPrincipal }</h6>
	<h6>getAuthorities: &emsp;${getAuthorities }</h6>
	<h6>getClass: &emsp;${getClass }</h6>
	<hr />
	<h5>Principal 객체 출력해보기</h5>
	<h6>getName: &emsp;${principal_getName }</h6>
</div>
</body>
</html>



















