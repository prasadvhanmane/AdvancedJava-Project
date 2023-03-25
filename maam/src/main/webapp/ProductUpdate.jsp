<%@page import="maam.ProductDao"%>
<%@page import="maam.productbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String id =request.getParameter("hid");
String name=request.getParameter("pname");
String type = request.getParameter("ptype");
String cost = request.getParameter("pcost");
String img = request.getParameter("pimg");

productbean pb = new productbean();
pb.setPid(id);
pb.setPname(name);
pb.setPtype(type);
pb.setPcost(cost);
pb.setPimg(img);

ProductDao pd = new ProductDao();
String result= pd.update(pb);
if(result.equals("successfull"))
{%>
 <p>updated successfully</p>
<%}else{ %><p>fail to update</p>
<%} %>
</body>
</html>