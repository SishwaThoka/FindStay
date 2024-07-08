<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>User Login</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            height: 100vh;--%>
<%--            margin: 0;--%>
<%--        }--%>
<%--        form {--%>
<%--            width: 300px; /* Adjust width as needed */--%>
<%--            padding: 20px;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 5px;--%>
<%--            background-color: #f9f9f9;--%>
<%--        }--%>
<%--        label, input {--%>
<%--            display: block;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--        button {--%>
<%--            margin-top: 10px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>User Login</h1>--%>
<%--<form action="/login" method="post">--%>
<%--    <label for="username">Username:</label>--%>
<%--    <input type="text" id="username" name="username" required><br><br>--%>
<%--    <label for="password">Password:</label>--%>
<%--    <input type="password" id="password" name="password" required><br><br>--%>
<%--    <tr>--%>
<%--        <td></td>--%>
<%--        <td><p style="color:red">${message}</p></td>--%>
<%--    </tr>--%>
<%--    <button type="submit">Login</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FindStay Member Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f6fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            width: 300px;
            padding: 20px;
            background-color: #ffffff; /* White */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #2c3e50; /* Dark blue */
        }

        label {
            font-weight: bold;
            color: #34495e; /* Dark blue */
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #3498db; /* Blue */
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #2980b9; /* Darker blue */
        }

        .error-message {
            color: #e74c3c; /* Red */
            margin-top: 10px;
            text-align: center;
        }
        .register-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #3498db; /* Blue */
            text-decoration: none;
            font-weight: bold;
        }

        .register-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h1>FindStay Member Login</h1>
    <form action="/login" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <p class="error-message">${message}</p>
        <button type="submit">Login</button>
    </form>
    <a class="register-link" href="/register">Don't have an account? Register here</a>
</div>
</body>
</html>
