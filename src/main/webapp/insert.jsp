<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2023-06-09
  Time: 오전 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <style>
    body {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      font-family: Arial, sans-serif;
    }

    h1 {
      margin-bottom: 20px;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
    }

    label {
      margin-bottom: 10px;
    }

    input[type="text"] {
      width: 200px;
      height: 25px;
      margin-bottom: 10px;
    }

    input[type="submit"] {
      width: 100px;
      height: 30px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<h1>MongoDB 데이터 전송</h1>
<form action="process.jsp" method="post">
  <label for="text1">Name:</label>
  <input type="text" id="text1" name="text1"><br>

  <label for="text2">Age:</label>
  <input type="text" id="text2" name="text2"><br>

  <label for="text3">Salary:</label>
  <input type="text" id="text3" name="text3"><br>

  <input type="submit" value="제출">
</form>
</body>
</html>