<%-- 
    Document   : home
    Created on : 1-Jun-2023, 11:58:01 PM
    Author     : rladm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tai Yang Clinic</title>

        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">



        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!--        Libraries Stylesheet -->  
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/login.css">
          <c:import url="./components/headers.jsp" />


    </head>
    <body>

        <!--        //get email-->
        <section class="min-vh-100" style="background-color: #ececec;">
            <div class="container py-5 h-100 text-center">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="container h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col-12 col-md-7 col-lg-6 col-xl-5">
                                <div class="card" style="border-radius: 13px;">
                                    <div class="card-header h3 text-white text-center" style="background-color: #094676">Forgot my password</div>
                                    <div class="card-body p-5">
                                        <p class="card-text py-2" style="font-size: 1.2rem;">
                                            Change your password.
                                        </p>
                                        <h4> Hello, ${user.getFirstname()} </h4>

                                        <form method="post" action="reset">
                                            <div class="form-group d-flex align-items-center mb-1">
                                                <label class="mr-2 text-left" style="width: 26%;">Password:</label>
                                            </div>
                                            <div class="form-group mb-4">
                                                <input type="password" class="form-control form-control-lg" style="width: 100%;" name="password" value="" required/>
                                            </div>
                                            <div class="form-group d-flex align-items-center mb-1">
                                                <label class="mr-2 text-left" style="width: 33%;">Confirm Password:</label>
                                            </div>
                                            <div class="form-group mb-4">
                                                <input type="password" class="form-control form-control-lg" style="width: 100%;" name="confirmPassword" value="" required/>
                                            </div>
                                            <div class="d-flex justify-content-center">
                                                <input type="hidden" name="action" value="reset" />
                                                <input type ="submit" value ="Reset password" class="btn btn-primary btn-sm btn-lg radient-custom-4" style="width: 60%; font-size:1.0rem;">
                                            </div>
                                        </form>
                                        <p>${message}</p>
                                        <div class="d-flex justify-content-between mt-4">
                                            <a class ="" href="/login">Login</a>
                                            <a class ="" href="/register">Register</a>
                                        </div>
                                        <%--<c:if test="${status ne 'reset'}">--%>
                                        <!--<h3>Invalid link</h3>-->
                                        <!--<a href="/forgotpassword">Verify the email</a> <a href="/home">Home page</a>-->
                                        <%--</c:if>--%>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>




    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light py-5 " style="position:absolute;">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Get In Touch</h4>
                    <p class="mb-4">Please feel free to contact us if you need any information.</p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary me-3"></i>1310 16Ave NW, Calgary</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary me-3"></i>Sunny@example.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary me-3"></i>+012 345 6789</p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Quick Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Home</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>About Us</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Book an appointment</a>
                        <a class="text-light" href="#"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Popular Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Home</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>About Us</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Book an appointment</a>
                        <a class="text-light" href="#"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">

                    <h6 class="text-primary text-uppercase mt-4 mb-3">Follow Us</h6>
                    <div class="d-flex">
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href=""><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href=""><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-light border-top border-secondary py-4">
        <div class="container">
            <div class="row g-5">
                <div class="col-md-6 text-center text-md-start">
                    <p class="mb-md-0">&copy; <a class="text-primary" href="#">Tai Yang Clinic</a>. All Rights Reserved.</p>

                </div>
            </div>
        </div>
    </div>



    <script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>
