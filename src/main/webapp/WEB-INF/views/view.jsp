<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.BoardVO"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View</title>
    <style>
        #edit {
            border-collapse: collapse;
        }
        #edit td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        #edit td:nth-child(odd){
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            color: white;
            background-color: #006bb3;
        }
    </style>
</head>
<body>
<h1>View Page</h1>
<table id="edit">
    <tr><td>Category:</td><td>${vo.category}</td></tr>
    <tr><td>Title:</td><td>${vo.title}</td></tr>
    <tr><td>Writer:</td><td>${vo.writer}</td></tr>
    <tr><td>Content:</td><td>${vo.content}</td></tr>
</table>
<br>
<input type="button" value="Back to list" onclick="history.back()"/>

</body>
</html>