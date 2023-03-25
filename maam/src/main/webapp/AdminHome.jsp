<%@page import="maam.ProductDao"%>
<%@page import="maam.productbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Cookie ck[]=request.getCookies(); 
if(ck.length>1){%>    
<%String name=ck[1].getValue();%>
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
</nav>
<%="welcome "+ name%>
<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">Product Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Type</th>
      <th scope="col">Product Cost</th>
      <th scope="col">Product img</th>
       <th scope="col">Edit/Delete</th>
    </tr>
  </thead>
  <tbody>
<%
ProductDao pd =new ProductDao();
ArrayList<productbean> pdv =new ArrayList<productbean>();
pdv =pd.view();
for(productbean p:pdv)
{%><tr>
   <%String id = p.getPid(); %>
      <td><%out.println(p.getPid());%></td>
      <td><%out.println(p.getPname());%></td>
      <td><%out.println(p.getPcost());%></td>
      <td><%out.println(p.getPtype());%></td>
      <td><%out.println(p.getPimg());%></td>
      <td><form action="ProductEdit.jsp" method="post"> <input type="hidden" name="pid" value="<%=id %>"><input type="submit" value="Edit"></form>
      <form action="ProductDelete.jsp" method="post"> <input type="hidden" name="pid" value="<%=id %>"><input type="submit" value="Delete"></form></td>
    </tr>
<% } %>
  </tbody>
</table>
<br>
<div class="text-center">
<a href="AddProduct.jsp"><div class="d-grid gap-2 col-6 mx-auto">
  <button class="btn btn-primary" type="button">Add New Product</button>
</a><br><br>
<a href="InquiryDetails.jsp"><div class="d-grid gap-2 col-6 mx-auto">
  <button class="btn btn-primary" type="button">Inquires Details</button>
</a>
</div>
<% }else{ %>
             <div class="alert alert-info" role="alert">
             <%="You Need To Login First."%>
             </div>
	     <%request.getRequestDispatcher("AdminLogin.jsp").include(request, response);}%>
</body>
</html>