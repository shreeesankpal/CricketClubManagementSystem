<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Our team members.aspx.cs" Inherits="Cricket_club_management_system.Our_team_members" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us - Cricket Club Management System</title>
  <link rel="stylesheet" href="styles.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://kit.fontawesome.com/your-kit-id.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body style="background-color:#f2f2f2;">
                        <nav class="navbar navbar-expand-lg navbar-white bg-black px-3" style="height: 90px;">
    <div class="container-fluid">
        <!-- Logo -->
        <a class="navbar-brand" href="#">
            <img src="image/logo.jpg" alt="Cricket club Logo" class="rounded-pill" style="width:80px;">
        </a>

        <!-- Navbar Toggler (for mobile view) -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navigation Links -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="home.aspx">HOME</a>
                </li>

                <!-- About Dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" href="about us.aspx" id="aboutDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ABOUT US
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="about us.aspx">Our Story</a></li>
                        <li><a class="dropdown-item" href="viewteam.aspx">Our Team</a></li>
                    </ul>
                </li>
                 <li class="nav-item">
                    <a class="nav-link text-white" href="View_Gallery.aspx">GALLERY</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="contact_us.aspx">CONTACT US</a>
                </li>
                <!-- Programs Dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" href="#" id="programsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        BOOKING
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="batch reg.aspx">BATCH REGISTRATION</a></li>
                        <li><a class="dropdown-item" href="GroundbookWithPrice.aspx">GROUND BOOKING</a></li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white" href="payment.aspx">PAYMENT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="upload_reviews.aspx">FEEDBACK</a>
                </li>
                 <li class="nav-item">
                 <a class="nav-link text-white" href="View_Notice.aspx">NOTICE</a>
                    </li>
                 <li class="nav-item">
 <a class="nav-link text-white" href="View_reviews.aspx">REVIEW</a>
    </li>
            </ul>

             <!-- Right Section -->
   <div class="dropdown">
                    <button class="btn dropdown-toggle" style="background-color:#f58220; color:#fff;padding: 10px 20px; text-decoration: none; font-weight: bold; border-radius: 5px;" type="button" id="loginDropdown" data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: bold;">
                        LOGIN
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="loginDropdown">
                        <li><a class="dropdown-item" href="user login.aspx">User Login</a></li>
                        <li><a class="dropdown-item" href="Admin_login.aspx">Admin Login</a></li>
                    </ul>
                </div>

    <div style="display: flex; align-items: center;">
    <a href="user_logout.aspx" style="background-color: #f58220; color: #fff; padding: 10px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; margin-left: 10px;">LOG OUT</a>
    </div>
        </div>
    </div>
</nav>
    <form id="form1" runat="server">
        <div>
            <div>
         <img src="image/Team.png" height="500px" width="100%">
     </div>
     <div class="container my-5 text-center">
        <h2>Meet Our Team</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card p-3 shadow">
                    <center><img src="image/man2.jpeg" class="rounded-circle mb-3" alt="Team Member" style="width:230px;height:230px"></center>
                    <h4>Ramesh Joshi</h4>
                    <p>Founder</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3 shadow">
                    <center><img src="image/man3.jpeg" class="rounded-circle mb-3" alt="Team Member" style="width:230px;height:230px"></center>
                    <h4>Suyog Desai</h4>
                    <p> Club Member</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3 shadow">
                    <center><img src="image/man4.jpeg" class="rounded-circle mb-3" alt="Team Member" style="width:230px;height:230px"></center>
                    <h4>Mahesh Rane</h4>
                    <p>Coach</p>
                </div>
            </div>
        </div>
    </div>
     <div class="container my-5 text-center">
    <div class="row">
    <div class="col-md-4">
     <div class="card p-3 shadow">
                    <center><img src="image/women1.jpeg" class="rounded-circle mb-3" alt="Team Member" style="width:230px;height:230px"></center>
                    <h4>Pooja Mane</h4>
                    <p>Club Member</p>
                </div>
            </div>
    <div class="col-md-4">
      <div class="card p-3 shadow">
                    <center><img src="image/women2.jpeg" class="rounded-circle mb-3" alt="Team Member" style="width:230px;height:230px"></center>
                    <h4>Meenal Surve</h4>
                    <p>Club Member</p>
                </div>
            </div> 
    <div class="col-md-4">
     <div class="card p-3 shadow">
                    <center><img src="image/women3.jpeg" class="rounded-circle mb-3" alt="Team Member" style="width:230px;height:230px"></center>
                    <h4>Rina More</h4>
                    <p>Club Member</p>
                </div>
            </div>
        </div>
    </div>

        </div>
    </form>

   <footer class="bg-dark text-white py-4"style="margin-top:20px">
        <div class="container">
            <div class="row">
                <div class="col-md-4 text-center">
                    <h5>LET'S CONNECT</h5>
                     <a href="https://www.facebook.com" target="_blank" class="mx-2"><i class="fa-brands fa-facebook fa-2x text-white"></i></a>
                     <a href="https://www.instagram.com" target="_blank" class="mx-2"><i class="fa-brands fa-instagram fa-2x text-white"></i></a>
                     <a href="tel:+1234567890" class="mx-2"><i class="fa-solid fa-phone fa-2x text-white"></i></a>
                     <a href="https://wa.me/1234567890" target="_blank" class="mx-2"><i class="fa-brands fa-whatsapp fa-2x text-white"></i></a>
                </div>
                <div class="col-md-4 text-center">
                    <h5>OUR LOCATION</h5>
                    <p>Shanti nagar<br>Phoenix, Navi Mumbai<br>(555) 774-4333</p>
                    <p>Email Us</p>
                    <p>CricketClub@gmail.com</p>
                </div>
                <div class="col-md-4 text-center">
                    <h5>QUICKLINKS</h5>
                   
                        <a href="home.aspx" class="text-white">Home</a><br>
                        <a href="About us.aspx" class="text-white">About</a><br>
                        <a href="Our team members.aspx" class="text-white">Our team</a><br>
                       
                        <a href="upload_reviews.aspx" class="text-white">Feedback</a><br>
 <a href="Contact_us.aspx" class="text-white">Contact</a><br>
 <a href="View_reviews.aspx" class="text-white">Review</a><br>
                    
                    
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
