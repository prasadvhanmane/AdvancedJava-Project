<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>ad logout</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="AdminLogin.jsp">Login<span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="AdminLogout.jsp">Logout</a>
      <a class="nav-item nav-link" href="AdminHome.jsp">Profile</a>
      </div>
  </div>
</nav>
<%
Cookie cn=new Cookie("name","");
Cookie cp=new Cookie("password","");
Cookie ce=new Cookie("email","");
Cookie cm=new Cookie("phone","");

cn.setMaxAge(0);
cp.setMaxAge(0);
ce.setMaxAge(0);
cm.setMaxAge(0);
response.addCookie(cn);
response.addCookie(cp);
response.addCookie(ce);
response.addCookie(cm);
out.print("you are successfully logged out!");
%>
</body>
</html>