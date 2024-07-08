<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>

</head>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .signup-form {
            width: 350px;
            background-color: #fff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .signup-form h2 {
            text-align: center;
            color: #333;
        }

        .signup-form form {
            display: flex;
            flex-direction: column;
        }

        .signup-form label {
            margin-bottom: 10px;
            color: #666;
            font-weight: bold;
        }

        .signup-form input[type="text"],
        .signup-form input[type="email"],
        .signup-form input[type="password"],
        .signup-form select {
            padding: 10px;

            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
        }

        .signup-form button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 12px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .signup-form button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
<body>
    <div class="signup-form">
        <h2>Sign Up</h2>
        <form action="/signup_submit" method="post" modelAttribute="usertable">
            <label for="name">Name:</label>
                    <input type="text" id="name" name="name" th:field="*{name}" required><br><br>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" th:field="*{email}" required><br><br>

                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" th:field="*{password}" required><br><br>

                    <label for="role">Role:</label>
                    <select id="role" name="role" th:field="*{role}" required>
                        <option value="admin">Admin</option>
                        <option value="customer">Customer</option>
                    </select><br><br>

                    <button type="submit">Sign up</button>


        </form>
    </div>
</body>
</html>
