<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        a {
            color: white;
        }
    </style>
</head>
</head>
<body>
    <h1>Add New Movie</h1>
    <form action="addmovie.jsp" method="post">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br><br>
        <!-- Other fields for movie details -->
        <label for="director">Director:</label>
        <input type="text" id="director" name="director" required><br><br>
        <label for="summary">Summary:</label><br>
        <textarea id="summary" name="summary" rows="4" cols="50"></textarea><br><br>
        <!-- Add more fields for movie details -->
        <input type="submit" value="Add Movie">
    </form>
</body>
</html>
