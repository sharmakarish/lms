<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
</head>

    <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
                padding: 20px;
                background-color: #f0f0f0;
            }

            .container {
                width: 80%;
                margin: 20px auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            h1 {
                text-align: center;
                margin-bottom: 20px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            th, td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            th {
                background-color: #f2f2f2;
            }

            tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            .btn-container {
                text-align: center;
                margin-top: 20px;
            }

            .btn-container button {
                padding: 10px 20px;
                background-color: #4CAF50;
                color: white;
                border: none;
                cursor: pointer;
                border-radius: 4px;
            }

            .btn-container button:hover {
                background-color: #45a049;
            }
        </style>
<body>
   <div >
          <h2>Admin  : </h2>
          <a href="/addcourse"><button>Add courses</button></a>
      </div>
<h1>List of Courses</h1>
       <table>
              <tr>
                  <th>Id</th>
                  <th>Course Name</th>
                  <th>Duration</th>
                  <th>Category</th>
                  <th>Description</th>
              </tr>
             <c:forEach var="course" items="${courses}">
             <tr>
                  <td>${course.id}</td>
                  <td>${course.courseName}</td>
                  <td>${course.duration}</td>
                  <td>${course.category}</td>
                  <td>${course.description}</td>
                  <td>
                <form method="post" action="/deletecourse/${course.id}">
                    <input type="hidden" name="_method" value="post">
                    <button type="submit">DELETE</button>
                </form>
            </td>
             <td>
                            <form method="get" action="/UpdateCourse/${course.id}">
                                <button type="submit">UPDATE</button>
                            </form>
                        </td>

              </tr>
    </c:forEach>
          </table>
</body>
</html>


