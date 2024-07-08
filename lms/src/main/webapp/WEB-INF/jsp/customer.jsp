
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer</title>

</head>
 <style>
        table {
            border-collapse: collapse;
            width: 70%;
            margin: 20px auto;
        }
        th, td {
            border: 2px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
<body>
    <div >
              <h1>Welcome to learning Management System  </h1>
               <h2> Here is list of courses : </h2>
    </div>

        <form action="/filterCourses" method="get">
            <label for="category">Filter by Category:</label>
            <select name="category" id="category">
                <option value="">All Categories</option>
                <c:forEach var="cat" items="${categories}">
                    <option value="${cat}">${cat}</option>
                </c:forEach>
            </select>
            <button type="submit">Filter</button>
        </form>

     <table>
                  <tr>
                      <th>Id</th>
                      <th>Course Name</th>
                      <th>Duration</th>
                      <th>Category</th>
                      <th>Description</th>
                  </tr>
                 <c:forEach var="course" items="${filteredCourses != null ? filteredCourses : courses}">
                 <tr>
                      <td>${course.id}</td>
                      <td>${course.courseName}</td>
                      <td>${course.duration}</td>
                      <td>${course.category}</td>
                      <td>${course.description}</td>

                  </tr>
        </c:forEach>
              </table>
</body>
</html>

