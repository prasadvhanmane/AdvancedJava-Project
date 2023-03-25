<%@page import="maam.User"%>
<%@page import="maam.RegisterDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*" import="java.util.*"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inauiry Details</title>
</head>
<body>
<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Om Construction</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="AdminHome">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AdminUpdate.jsp">Update Account</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AdminDelete">Delete Account</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AdminLogout.jsp">Logout</a>
      </li>
     
    </ul>
  </div>
</header>
<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Mobile No</th>
      <th scope="col">Project</th>
    </tr>
  </thead>
  <tbody>
<%
RegisterDao pd =new RegisterDao();
ArrayList<User> pdv =new ArrayList<User>();
pdv =pd.view();
for(User p:pdv)
{%><tr>
      <td><%out.println(p.getUname());%></td>
      <td><%out.println(p.getPassword());%></td>
      <td><%out.println(p.getEmail());%></td>
      <td><%out.println(p.getPhone());%></td>
    </tr>
<% } %>
  </tbody>
</table>
</body>
</html>