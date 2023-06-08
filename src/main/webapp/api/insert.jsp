<%@ page import="jdbc.MongoDb, vo.UserVo, service.UserService" %>
<%
  UserService us = new UserService();
  request.setCharacterEncoding("UTF-8");
  String name = request.getParameter("name");
  int age = Integer.parseInt(request.getParameter("age"));
  int salary = Integer.parseInt(request.getParameter("salary"));
  us.addUser(new UserVo(name,age,salary));

  response.sendRedirect("/index.jsp");
%>