<%@ page import="com.example.repository.People" %>
<%@ page import="com.example.repository.PeopleRepository" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            margin-bottom: 20px;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        li {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .btn {
            display: inline-block;
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<h1>사용자 목록</h1>
<%
    PeopleRepository peopleRepository = new PeopleRepository();

    ArrayList<People> peopleList = peopleRepository.findAll();

    for (People people : peopleList) {
%>
<ul>
    <li>이름: <%= people.getName() %></li>
    <li>나이: <%= people.getAge() %></li>
    <li>월급: <%= people.getSalary() %></li>
</ul>
<%
    }
%>

<a href="http://localhost:8080" class="btn">메인화면</a>

</body>
</html>