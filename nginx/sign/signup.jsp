<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="/css/login.css">
    <link rel="stylesheet" href="/css/signup.css">
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
        .signupbtn, .cancelbtn {
            padding: 15px 20px;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            font-size: 16px;
        }
        .signupbtn {
            background-color: #4CAF50;
        }
        .cancelbtn {
            background-color: #f44336;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: calc(100% - 24px);
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        label {
            display: block;
            margin: 8px 0;
            font-size: 18px;
            text-align: left;
        }
        .imgcontainer {
            margin-bottom: 20px;
        }
        .imgcontainer img.avatar {
            width: 200px;
            height: auto;
        }
        .form-group {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
        .form-group input {
            width: 100%;
        }
        .form-actions {
            margin-top: 20px;
        }
        .form-actions a, .form-actions button {
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="signup_action.jsp" method="post">
            <div class="imgcontainer">
                <img src="./upassets/sign.png" class="avatar" alt="Sign Up Icon">
            </div>
            <p>Sign up with your information.</p>
            <hr>
            <div class="form-group">
                <label for="id"><b>ID</b></label>
                <input type="text" placeholder="Enter ID" name="id" id="id" required>
            </div>
            <div class="form-group">
                <label for="password"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" id="password" required>
            </div>
            <div class="form-group">
                <label for="name"><b>Name</b></label>
                <input type="text" placeholder="Enter Name" name="name" id="name" required>
            </div>
            <div class="form-group">
                <label for="email"><b>Email</b></label>
                <input type="email" placeholder="Enter Email" name="email" id="email" required>
            </div>
            <div class="form-actions">
                <button type="submit" class="signupbtn">Sign Up</button>
                <button type="button" class="cancelbtn" onclick="window.location.href='login.jsp'">Cancel</button>
            </div>
        </form>
    </div>
</body>
</html>
