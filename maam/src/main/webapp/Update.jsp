<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <% Cookie ck[]=request.getCookies();%>
<form action="UserUpdate" method="post">
 <table>
 <tr>
 <td>User Name</td>
 <td><input type="text" name="uname" value=<%=ck[1].getValue()%>></td>
 </tr>
 <tr>
 <td>Password</td>
 <td><input type="password" name="password" value=<%=ck[2].getValue()%>></td>
 </tr>
 <tr>
 <td>Email</td>
 <td><input type="text" name="email" value=<%=ck[3].getValue()%>></td>
 </tr>
 <tr>
 <td>Phone</td>
 <td><input type="text" name="phone" value=<%=ck[4].getValue()%>></td>
 </tr>
 <tr>
 <td>Submit</td>
 <td><input type="submit" value="Update"></td>
 </tr>
 </table>
 </form>
</body>
</html>