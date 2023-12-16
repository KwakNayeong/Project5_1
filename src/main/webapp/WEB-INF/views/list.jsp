<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
    <h1>Movie List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Director</th>
            <th>Summary</th>
            <!-- Add more columns for movie details -->
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <!-- Loop through movies retrieved from the database and display them -->
        <!-- Example: -->
        <tr>
            <td>1</td>
            <td>Movie Title 1</td>
            <td>Director 1</td>
            <td>Summary 1</td>
            <!-- Display more movie details -->
            <td><a href="editform.jsp?id=1">Edit</a></td>
            <td><a href="delete.jsp?id=1">Delete</a></td>
        </tr>
        <!-- Add more rows for other movies -->
    </table>
</body>
</html>
