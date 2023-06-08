<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Index</title>
  <!-- 합쳐지고 최소화된 최신 CSS -->
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <!-- 부가적인 테마 -->
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="col-md-4" style="margin-left: 10%">
  <h1><%= "Register Mongo!" %>
  </h1>
  <form class="form-horizontal" method="post" action="api/insert.jsp">
    <div class="form-group">
      <label for="exampleInputName2">name</label>
      <input type="text" class="form-control" id="exampleInputName2" name="name"
             placeholder="Jane Doe">
    </div>
    <br/>
    <div class="form-group">
      <label for="exampleInputEmail2">age</label>
      <input type="number" class="form-control" id="exampleInputEmail2" name="age" placeholder="10">
    </div>
    <br/>
    <div class="form-group">
      <label for="exampleInputEmail3">salary</label>
      <input type="number" class="form-control" id="exampleInputEmail3" name="salary"
             placeholder="10000">
    </div>
    <br/>
    <button type="submit" class="btn btn-default">확인</button>
  </form>
</div>
</body>
</html>