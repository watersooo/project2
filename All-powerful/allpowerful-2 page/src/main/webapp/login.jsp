<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/cart.css">
    <link rel="stylesheet" href="/css/login.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('./upassets/back.jpg');
            background-size: cover;
            background-position: center;
            background-color: #f4f4f4;
        }
        .container {
            width: 100%;
            max-width: 750px;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            background-color: #fff;
            text-align: center;
            box-sizing: border-box;
        }
        .container img.avatar {
            width: 200px; /* 아이콘 크기 조정 */
            height: auto;
        }
        .container label {
            display: block;
            margin: 10px 0;
            font-size: 18px;
            text-align: left;
        }
        .container input[type="text"], 
        .container input[type="password"] {
            width: calc(100% - 24px);
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }
        .container button {
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            margin: 10px 5px;
            font-size: 16px;
        }
        .container .loginbtn {
            background-color: #000000;
        }
        .container .signupbtn {
            background-color: #4CAF50;
        }
        .container .cancelbtn {
            background-color: #f44336;
        }
        .container input[type="checkbox"] {
            margin: 10px 5px;
        }
        .container a {
            text-decoration: none;
        }
        .clearfix {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="login_action.jsp" method="post">
            <div class="imgcontainer">
                <img src="./upassets/login.png" class="avatar" alt="Login Icon">
            </div>
            <label for="id"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" id="id" name="id" required>
      
            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" id="password" name="password" required>
      
            <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
      
            <div class="clearfix">
                <button type="submit" class="loginbtn">Login</button>
                <a href="signup.jsp"><button type="button" class="signupbtn">Sign Up</button></a>
                <a href="index.jsp"><button type="button" class="cancelbtn">Cancel</button></a>
            </div>
        </form>
    </div>
</body>
</html>
