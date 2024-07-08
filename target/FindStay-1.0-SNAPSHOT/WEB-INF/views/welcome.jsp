<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Welcome to My Application</title>--%>
<%--&lt;%&ndash;    <style>&ndash;%&gt;--%>
<%--&lt;%&ndash;        body {&ndash;%&gt;--%>
<%--&lt;%&ndash;            text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin: 0;&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 0;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        h1, p, ul {&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin-top: 50px; /* Adjust as needed */&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin-bottom: 20px; /* Adjust as needed */&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        ul {&ndash;%&gt;--%>
<%--&lt;%&ndash;            list-style: none;&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 0;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        li {&ndash;%&gt;--%>
<%--&lt;%&ndash;            display: inline-block;&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin-right: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        a {&ndash;%&gt;--%>
<%--&lt;%&ndash;            text-decoration: none;&ndash;%&gt;--%>
<%--&lt;%&ndash;            color: #007bff;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;    </style>&ndash;%&gt;--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Find Stay </h1>--%>
<%--<p>We're excited to have you on board.</p>--%>
<%--<p>Use your information to Login otherwise Register to Login to the Application</p>--%>
<%--<ul>--%>
<%--    <li><a href="/register">Register</a></li>--%>
<%--    <li><a href="/login">Login</a></li>--%>
<%--</ul>--%>
<%--</body>--%>
<%--</html>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Welcome to Find Stay Application</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background-color: #f0f6fc; /* Light blue shade */--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        h1 {--%>
<%--            text-align: center;--%>
<%--            color: #2c3e50; /* Dark blue */--%>
<%--        }--%>
<%--        p {--%>
<%--            text-align: center;--%>
<%--            margin-bottom: 20px;--%>
<%--            color: #333; /* Dark grey */--%>
<%--        }--%>
<%--        ul {--%>
<%--            list-style-type: none;--%>
<%--            padding: 0;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        li {--%>
<%--            display: inline-block;--%>
<%--            margin-right: 10px;--%>
<%--        }--%>
<%--        a {--%>
<%--            text-decoration: none;--%>
<%--            color: #3498db; /* Blue */--%>
<%--            font-weight: bold;--%>
<%--        }--%>
<%--        a:hover {--%>
<%--            text-decoration: underline;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Find Stay</h1>--%>
<%--<p>Use your information to Login,<br> otherwise Register as a Member to Login to the Application</p>--%>
<%--<ul>--%>
<%--    <li><a href="/register">Register</a></li>--%>
<%--    <li><a href="/login">Login</a></li>--%>
<%--</ul>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Find Stay Application</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f6fc; /* Light blue shade */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            padding: 40px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #2c3e50; /* Dark blue */
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        p {
            color: #333; /* Dark grey */
            font-size: 1.2em;
            margin-bottom: 40px;
        }
        .options {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        .options li {
            display: inline-block;
            margin-right: 20px;
        }
        .options li:last-child {
            margin-right: 0;
        }
        .options a {
            text-decoration: none;
            color: #fff;
            background-color: #3498db; /* Blue */
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .options a:hover {
            background-color: #2980b9; /* Darker blue */
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to Find Stay</h1>
    <p>Explore, Discover, and Experience Your Perfect Stay</p>
    <ul class="options">
        <li><a href="/register">Register</a></li>
        <li><a href="/login">Login</a></li>
    </ul>
</div>
</body>
</html>
