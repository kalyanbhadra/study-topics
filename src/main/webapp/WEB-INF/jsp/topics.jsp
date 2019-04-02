<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<script type="text/javascript" src="/WEB-INF/js/app.js"></script>
<title>Insert title here</title>
</head>

<body>
<div class="container">
	<header>
		<h1>Spring MVC + JSP + JPA + Spring Boot2</h1>
	</header>
	<div class="starter-template">
		<h1>Topics List</h1>
		<table class="table table-striped table-hover table-condensed table-bordered">
			<tr>
				<th>Id</th>
				<th>Description</th>
			</tr>
			<c:forEach var="topic" items="${topics}">
				<tr>
					<td>${topic.id}</td>
					<td>${topic.description}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
<div class="container">
	<header>
		<h1>Add new topic</h1>
	</header>
	<div class="form">
    	<form action="addTopic" method="post" onsubmit="return validate()">
			<table class="table table-condensed table-bordered">
				<tr>
					<td>Description: </td>
					<td><input id="description" name="description"></td>
	          		<td><input type="submit" value="Submit"></td>
				</tr>
			</table>
		</form>
	</div>
</div>

<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>