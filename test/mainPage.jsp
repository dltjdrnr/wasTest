<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .login-banner {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
        .login-form {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .login-form h2 {
            margin-top: 0;
            text-align: center;
            color: #333;
        }
        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: calc(100% - 20px);
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-form input[type="submit"] {
            width: 100%;
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .login-form input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <div class="login-banner">
        <h1>Welcome to Our Website</h1>
        <p>Please login to continue</p>
    </div>
    <div class="login-form">
        <h2>Login</h2>
        <form name="frmLogin" action="loginproc.jsp" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>

