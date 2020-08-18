<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!--JSTL -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style>
ul{list-style-type: none;}
ul li{float: left; border: 1px solid #888888; padding-right: 10px;}
</style>
</head>
<body>
<ul>
	<li><a href="${pageContext.request.contextPath }/">홈바로가기</a></li>
	<li><a href="${pageContext.request.contextPath }/security2/login.do">로그인페이지</a></li>
	<li><a href="${pageContext.request.contextPath }/security2/index.do">프론트페이지</a></li>
	<li><a href="${pageContext.request.contextPath }/security2/admin/main.do">관리자모드페이지</a></li>
	<li><a href="${pageContext.request.contextPath }/security2/accessDenied.do">접근불가 페이지</a></li>
</ul>
</body>
</html>



















