<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Log in with your account</title>
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<form method="POST" action="${contextPath}/login" class="form-signin">
			<h2 class="form-signin-heading">Log in</h2>
			<div class="form-group ${error != null ? 'has-error' : ''}">
				<span>${message}</span>
				<input name="username" size="35" type="text" class="form-control" placeholder="Username" autofocus="true"/>
				<input name="password" size="35" type="password" class="form-control" placeholder="Password"/>
				<span>${error}</span>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				
				<button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
				<h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
			</div>
			
			
		</form>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>