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
<%String id =request.getParameter("pid");
ProductDao pd = new ProductDao();
String result= pd.delete(id);
if(result.equals("successfull"))
{%>
 <p>Deleted successfully</p>
<%}else{ %><p>fail to delete</p>
<%}%>
</body>
</html>