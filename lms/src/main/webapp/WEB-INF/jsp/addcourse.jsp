<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Add Course</title>
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

        input[type=text], input[type=password], textarea {
            width: calc(100% - 20px); /* Adjust for padding */
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box; /* Ensures padding is included in width */
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
<body>
    <h2>Add Course</h2>
    <form method="post" action="/course_added" modelAttribute="courses">
        <table>
            <tr>
                <td><label for="courseName">Course Name:</label></td>
                <td><input type="text" id="courseName" th:field="*{courseName}"  name="courseName" required></td>
            </tr>
            <tr>
                <td><label for="duration">Duration:</label></td>
                <td><input type="text" id="duration" th:field="*{duration}"  name="duration" required></td>
            </tr>
            <tr>
                <td><label for="category">Category:</label></td>
                <td><input type="text" id="category" th:field="*{category}" name="category" required></td>
            </tr>
            <tr>
                <td><label for="description">Description:</label></td>
                <td><textarea id="description" name="description" rows="4" th:field="*{description}" required></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Save Course</button></td>
            </tr>
        </table>
    </form>
</body>

</html>
