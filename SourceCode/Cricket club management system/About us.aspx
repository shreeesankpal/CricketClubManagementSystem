<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About us.aspx.cs" Inherits="Cricket_club_management_system.About_us" %>

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
    <form id="form1" runat="server">
        <div>
           

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
     <div>
         <img src="image/ABOUT US.png" height="500px" width="100%">
     </div>
    
    <center>
    <div class="container mt-4">
        <div class="row"  style="width:80%">
            <div class="col-md-12">
                <div class="card mb-3">
                    <div class="card-body">
                        <h1 class="card-title">About Us</h1>
                        <p class="card-text">Welcome to the official website of the Cricket Club Management System. Our mission is to create a strong and united community of cricket enthusiasts, offering a platform for players, coaches, and fans to connect, grow, and enjoy the sport.
                       cricket academy started with the aim to provide right guidance and higher level of coaching along with the national and international exposure to the players. We make sure that our students get the best coaching in the field of cricket. MCC is a single window for all solutions. Such as cricket training, cricket tournaments and international cricket tours. We are mentors for the players those have the dream to achieve something big in cricket.
</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row"style="width:80%">
            <div class="col-md-12">
                <div class="card mb-3">
                    <div class="card-body">
                        <h2 class="card-title">Our Mission</h2>
                        <p class="card-text">We aim to provide a comprehensive and user-friendly platform for managing cricket teams, matches, tournaments, and player statistics. Our mission is to ensure that the management process is streamlined and efficient, allowing players and management to focus on what they love—playing cricket!The mission statement clarifies the essence of club existence. It describes the needs the club was created to fill, explains why the organization exists, and what it hopes to achieve in the future. It articulates the organization's essential nature, its values, and its work. Why have one?
</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row"style="width:80%">
            <div class="col-md-12">
                <div class="card mb-3">
                    <div class="card-body">
                        <h2 class="card-title">Our Role</h2>
                        <p class="card-text">Our vision is to build an organized system that supports the growth of cricket at every level—whether you're a recreational player or a professional athlete. We strive to offer tools that enhance player development, foster team spirit, and make cricket management accessible to everyone.uch as cricket training, cricket tournaments and international cricket tours. We are mentors for the players those have the dream to achieve something big in cricket.
</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row" style="width:80%">
            <div class="col-md-12">
                <div class="card mb-3">
                    <div class="card-body">
                        <h2 class="card-title">Our Goals</h2>
                        <ul>
                            <li>Offer seamless player registration and team management.</li>
                            <li>Provide easy scheduling of matches and tournaments.</li>
                            <li>Track player performance and statistics in real time.</li>
                            <li>Create a safe, fun, and supportive community for cricket lovers.</li>
                            <li>Continuously innovate and improve the system to meet the needs of the club.</li>
                            <li>Hosting matches and tournaments</li>
                            <li>Organizing practice sessions</li>
                            <li>Offering coaching</li>
                            <li>Developing career paths for players, coaches, and staff Providing quality facilities</li>
                            <li>Making the sport accessible</li>
                            <li>Upholding the values of cricket</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</center>
       
        
        
    


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





        </div>
    </form>
</body>
</html>
