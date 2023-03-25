<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <script>
      
      function thanks(){
        alert("Thank you");
      }
    </script>
</head>
<body>
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
              <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Pricing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
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
        <h1>India's No.1 Construction Company</h1>
        <h1>You Think, We Create.</h1>
      </section>  
     </header>
    <section class="projects-info">
      <div class="project">
          <div class="project-pic"><img src="p2.jpg" alt="p1" width="300px" height="350px"></div>
          <div class="content">
            <h2>Rachana</h2>
              <h4>Project Review</h4>
              <h5>We have launched our most unique creation till date at Kharghar Central, a life space ensconced in the beautiful and verdant Kharghar Hills, close to the much revelled Pandavkada waterfalls.<br>It is further accentuated and reinforced in every small or big step taken by the team be it the welcome experience, the overall customer management process from the time they visit the site to post booking, right upto the time when they move into their homes and even much after.</h5>
              </div>
      </div>

      <div class="project1">
        <div class="content1">
          <h2>Nexon</h2>
            <h4>Project Review</h4>
            <h5>luxurious 2 & 3 BHK residences at a landmark location in Thakur Village, a thriving upscale neighbourhood in Kandivali East. Featuring thoughtfully planned layouts which maximize space usage, best-in-class luxury resort amenities, excellent connectivity to the city, and a stunning view of Sanjay Gandhi National Park, Nexon is Living Redesigned for the discerning urban spirit.</h5>
            </div>
        <div class="project-pic1"><img src="p3.jpg" alt="p1" width="300px" height="350px"></div>
      </div>

      <div class="project">
        <div class="project-pic"><img src="p4.jpg" alt="p1" width="300px" height="350px"></div>
        <div class="content">
        <h2>Aalishan</h2>
          <h4>Project Review</h4>
          <h5>Ulwe is one of Navi Mumbai’s most ambitious large-scale CIDCO development projects. The small but luxury residential building includes all the elements of lifestyle. Our goal is to provide Best property in Ulwe with a world – class luxury living to our clients & Investors. Our dream is to grow along with our client’s satisfaction & trust. We are bound to provide quality housing as we promise. When a complete underutilized area of Ulwe node is transformed into a dynamic urban neighborhood, while creates significant value for investors and end-useds.The site is a showcase for our place-making ehtos.</h5>
          </div>
      </div>
    </section>
    <footer>
      <h1>Contact Us</h1>
      <div class="address">
        <h3>Address</h3>
        Pitrubhawan CHS Office No. 101<br>
        Juinagar, Navi Mumbai 400040<br>
        Contact No :- 022-64143033<br>
        E-mail :- omconstruction@gmail.com<br><br><br>
        <a href="#top" id="topbutton">GO TO TOP</a> 
      </div>
      <div class="contact-info">
        <form id="form">
          <h3>Get In Touch</h3>
            <p><label for="name">Name</label>
            <input type="text" id="name" name="name"></p>
            <p><label for="email">Email</label>
            <input type="text" id="email" name="email"></p>
            <p><label for="mobile no">Mobile No</label>
            <input type="number" id="mobile no" name="mobile no"></p>
            <p><label for="add">Address</label>
            <input type="text" id="add" name="add"></p>
            <label for="project-interest">Interested In</label>
            <select>
              <option value="Rachana">Rachana</option>
              <option value="Nexon">Nexon</option>
              <option value="Aalishan">Aalishan</option>
            </select><br><br>
            <button type="submit" id="button" onclick="thanks()">submit</button>
        </form>
      </div>

    </footer>

</body>
</html>