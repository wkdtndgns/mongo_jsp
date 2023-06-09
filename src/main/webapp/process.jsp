<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2023-06-08
  Time: 오후 5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.bson.Document" %>
<%@ page import="com.mongodb.MongoException" %>
<%@ page import="com.mongodb.client.*" %>
<%@ page import="com.example.repository.PeopleRepository" %>
<%@ page import="com.example.repository.People" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
        String name = request.getParameter("text1");
        int age = Integer.parseInt(request.getParameter("text2"));
        int salary = Integer.parseInt(request.getParameter("text3"));

        PeopleRepository peopleRepository = new PeopleRepository();

        People people = new People(name, age, salary);

        peopleRepository.savePeople(people);
        response.sendRedirect("view.jsp");
%>
</body>
</html>