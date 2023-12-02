<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.BoardVO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
	<style>
		#edit {
			border-collapse: collapse;
		}
		#edit td {
			border: 1px solid #ddd;
			padding: 8px;
		}
		#edit td:nth-child(odd) {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			color: white;
			background-color: #006bb3;
		}

	</style>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Category:</td><td><form:input path="category"/></td></tr>
		<tr><td>Title:</td><td><form:input path="title"/></td></tr>
		<tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
		<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
		<tr><td></td><td id="is"><input type="submit" value="Edit Post"/> &nbsp; <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
	</table>
</form:form>
<br>

</body>
</html>