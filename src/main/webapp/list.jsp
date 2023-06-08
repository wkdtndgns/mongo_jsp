<%@ page import="org.bson.Document, jdbc.MongoDb, java.util.List, service.UserService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
  UserService us = new UserService();
  List<Document> documents = us.getAllUsers();
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Person Data</title>
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <!-- 부가적인 테마 -->
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="col-md-4">
  <table class="table table-striped">
    <tr>
      <th>Name</th>
      <th>Age</th>
      <th>Salary</th>
    </tr>

    <% for (Document doc : documents) {%>
    <tr>
      <td><%= doc.get("name") %>
      </td>
      <td><%=doc.get("age")%>
      </td>
      <td><%=doc.get("salary")%>
      </td>
    </tr>
    <% }%>
  </table>
</div>

</body>
</html>
