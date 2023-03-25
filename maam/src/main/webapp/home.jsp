<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@page import="maam.*"%>
<%@page import="maam.productbean"%>
<%@page import="maam.ProductDao"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>om constructions</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<%Cookie ck[]=request.getCookies(); 
if(ck.length>1){%>  
<%String name=ck[1].getValue();%>
<a name="top"></a>
  <p id="top1"></p>
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">OM CONSTRUCTIONS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="home.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#on">Projects</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#on">Pricing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Logout">Logout</a>
            </li>
          </ul>
          <div id="icon">
          <ul class="navbar-nav sm-icons">
            <li class="nav-item"><a class="nav-link" href="https://www.facebook.com/" target="_blank"><i class="bi bi-facebook"></i></a></li>
            <li class="nav-item"><a class="nav-link" href="https://www.instagram.com/?hl=en" target="_blank"><i class="bi bi-instagram"></i></a></li>
            <li class="nav-item"><a class="nav-link" href="https://www.skype.com/en/" target="_blank"><i class="bi bi-skype"></i></a></li>
            <li class="nav-item"><a class="nav-link" href="https://in.pinterest.com/" target="_blank"><i class="bi bi-pinterest"></i></a></li>
          </ul>
          </div>
        </div>
      </nav>
      <section class="text">
        <%="welcome "+ name+" to"%>
        <h1>India's No.1 Construction Company</h1>
        <h1>You Think, We Create.</h1>
      </section>  
  </header>
  <a name="on"></a>
<%ProductDao pd =new ProductDao();
ArrayList<productbean> pdv = new ArrayList<productbean>();
pdv = pd.view();
for(productbean p:pdv)
{%>
<section class="projects-info">
      <div class="project">
          <div class="project-pic"><img src="images/<%=p.getPimg() %>" alt="p1" width="300px" height="350px"></div>
          <div class="content">
            <h2><%=p.getPname() %></h2>
            <h4>Project Review</h4>
            <h5><%=p.getPtype() %></h5>
            <h4>Rate=<%=p.getPcost() %></h4>
          </div>
      </div>
 </section>      
 <% } %>     
<footer>
      <h1>Contact Us</h1>
      <div class="address">
        <h3>Address</h3>
        Pitrubhawan CHS Office No. 101<br>
        Juinagar, Navi Mumbai 400040<br>
        Contact No :- 022-64143033<br>
        E-mail :- omconstruction@gmail.com<br><br><br>
        <a href="#top" id="topbutton">GO TO TOP</a> <br><br>
        <a href="Update.jsp" id="topbutton">Update Account Details</a>
        <a href="Delete" id="topbutton">Delete Account</a>
        
      </div>
      <div class="contact-info">
      <h3>Get In Touch</h3><br>
        <form id="form" action="inquiry" method="post">
            <p><label for="email">Name</label>
            <input type="text" id="email" name="name"></p>
            <p><label for="email">Email</label>
            <input type="text" id="email" name="email"></p>
            <p><label for="mobile no">Mobile No</label>
            <input type="number" id="mobile no" name="mobile"></p>
            <label for="project-interest">Interested In</label>
            <select name="interest">
              <option value="Rachana">Rachana</option>
              <option value="Nexus">Nexus</option>
              <option value="Sai Sadan">Sai Sadan</option>
            </select><br><br>
            <button type="submit" id="button">submit</button>
        </form>
      </div>
</footer>
 <a name="contact"></a>
<% }else{ %>
             <div class="alert alert-info" role="alert">
             <%="You Need To Login First."%>
             </div>
	     <%request.getRequestDispatcher("om.jsp").include(request, response);}%>
</body>
</html>