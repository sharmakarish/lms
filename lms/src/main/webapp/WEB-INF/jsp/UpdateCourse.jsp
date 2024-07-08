<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Update Course</title>
</head>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        form {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        td, th {
            padding: 10px;
            border: 1px solid #ddd;
        }

        label {
            font-weight: bold;
        }

        input[type=text], textarea {
            width: calc(100% - 20px); /* Adjust for padding */
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box; /* Ensures padding is included in width */
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        button[type=submit] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
        }

        button[type=submit]:hover {
            background-color: #0056b3;
        }
    </style>
<body>
    <h2>Update Course</h2>
    <form:form method="post" action="/UpdateCourse/${course.id}" modelAttribute="course">
        <table>
            <tr>
                <td><label for="courseName">Course Name:</label></td>
                <td><form:input path="courseName" id="courseName" required="true"/></td>
            </tr>
            <tr>
                <td><label for="duration">Duration:</label></td>
                <td><form:input path="duration" id="duration" required="true"/></td>
            </tr>
            <tr>
                <td><label for="category">Category:</label></td>
                <td><form:input path="category" id="category" required="true"/></td>
            </tr>
            <tr>
                <td><label for="description">Description:</label></td>
                <td><form:textarea path="description" id="description" rows="4" required="true"/></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Save Course</button></td>
            </tr>
        </table>
    </form:form>
</body>
</html>
