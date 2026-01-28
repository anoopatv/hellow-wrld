<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String message = "";
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");

        if (name != null && email != null) {
            message = "Registration successful! Welcome, " + name + " ";
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DevOps Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        height: 100vh;
        margin: 0;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .card {
        background: #fff;
        width: 420px;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 15px 30px rgba(0,0,0,0.25);
    }

    h1 {
        text-align: center;
        margin-bottom: 5px;
    }

    .subtitle {
        text-align: center;
        font-size: 14px;
        color: #666;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
        display: block;
        margin-top: 15px;
    }

    input {
        width: 100%;
        padding: 12px;
        margin-top: 5px;
        border-radius: 6px;
        border: 1px solid #ccc;
    }

    input:focus {
        outline: none;
        border-color: #667eea;
    }

    button {
        width: 100%;
        padding: 14px;
        margin-top: 25px;
        background: linear-gradient(135deg, #667eea, #764ba2);
        border: none;
        color: #fff;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
    }

    button:hover {
        opacity: 0.9;
    }

    .info {
        text-align: center;
        margin-top: 15px;
        font-size: 13px;
    }

    .success {
        text-align: center;
        color: green;
        font-weight: bold;
        margin-bottom: 15px;
    }
</style>
</head>

<body>

<div class="card">
    <h1>DevOps Learning</h1>
    <div class="subtitle">Register by <b>V KISHOR KUMAR</b></div>

    <% if (!message.isEmpty()) { %>
        <div class="success"><%= message %></div>
    <% } %>

    <form method="post">
        <label>Full Name</label>
        <input type="text" name="name" required>

        <label>Mobile Number</label>
        <input type="text" name="mobile" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <label>Confirm Password</label>
        <input type="password" name="confirm" required>

        <button type="submit">Register</button>
    </form>

    <div class="info">
        Already have an account? <a href="#">Sign in</a>
    </div>

    <div class="info">
        Thank you — sad Learning 
    </div>
</div>

</body>
</html>
