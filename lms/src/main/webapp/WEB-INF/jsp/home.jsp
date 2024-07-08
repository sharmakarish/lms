
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>

</head>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .home {
            text-align: center;
            margin-top: 50px;
        }

        h1 {
            color: #333;
            font-size: 36px;
        }

        p {
            font-size: 18px;
            color: #666;
        }

        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
<body>
    <div class="home">
        <h1>Learning Management System</h1>
            <p>Please choose an option to enter :</p>
            <a href="/login"><button>Login</button></a>
            <a href="/signup"><button>Sign Up</button></a>

    </div>
</body>
</html>

