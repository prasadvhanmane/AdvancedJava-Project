<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="omcss.css">
</head>
<body>
<section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <img src="images/om.png"
                    style="width: 185px;" alt="logo">
                  <h4 class="mt-1 mb-5 pb-1">OM Construction</h4>
                </div>

                <form action="Login" method="post">
                  <p>Please login to your account</p>

                  <div class="form-outline mb-4">
                    <input type="text" id="form2Example11" class="form-control"
                      placeholder="Phone number or email address" name="username"/>
                    <label class="form-label" for="form2Example11">Username</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example22" class="form-control" name="password"/>
                    <label class="form-label" for="form2Example22">Password</label>
                  </div>
                  <div class="text-center">
                  <button type="submit" class="btn btn-outline-danger">Login</button>
                  </div><br>
                  <div class="text-center">
                  <a href="AdminLogin.jsp"> <button type="button" class="btn btn-outline-danger">Admin Login</button></a>
                  </div>
                  <div class="d-flex align-items-center justify-content-center pb-4">
                    <p class="mb-0 me-2">Don't have an user account?</p>
                    <a href="UserRegistration.jsp"><input type="hidden" class="btn btn-outline-danger">Create new</button></a>
                  </div>
                  <div class="d-flex align-items-center justify-content-center pb-4">
                    <p class="mb-0 me-2">Don't have an admin account?</p>
                    <a href="AdminRegistration.jsp"><input type="hidden" class="btn btn-outline-danger">Create new</button></a>
                  </div>

                </form>

              </div>
            </div>
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">Welcome to OM Construction Group</h4>
                <p class="small mb-0">
We Had Launched Our Projects With Premium Residential Complex in Navi Mumbai. If You Are Looking For Your Dream Home or Planning to Invest In Property, You Are On Right Place. To Take Right Decision On Right Place Within Right Time Is Always Best.<br>
Book Your Dream Home Now In Ulwe, Nerul, Vashi. Apartments Are Available At Prime Location With Best Connectivity. Near To Upcoming International Airport..</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>