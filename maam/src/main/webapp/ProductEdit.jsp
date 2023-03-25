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
<% ProductDao pd = new ProductDao();
String pid = request.getParameter("pid");
   productbean pb = new productbean();
   pb = pd.viewonedata(pid);
%>
<form action="ProductUpdate.jsp" method="post">
<input type="hidden" name="hid" value="<%=pb.getPid() %>">
PID : <%=pb.getPid() %>
Pname : <input type="text" name="pname" value="<%=pb.getPname()%>"/>
Ptype : <input type="text" name="ptype" value="<%=pb.getPtype()%>"/>
Pcost : <input type="text" name="pcost" value="<%=pb.getPcost()%>"/>
Pimg : <input type="text" name="pimg" value="<%=pb.getPimg()%>"/>
<input type="submit" name="update"/>
</form>
</body>
</html>