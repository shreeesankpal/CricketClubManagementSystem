<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Gallery.aspx.cs" Inherits="Cricket_club_management_system.View_Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">  
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/your-kit-id.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
    }

    .blog-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin: auto;
    }

    .blog-card {
        width: calc(33.33% - 20px); /* Three cards per row */
        background-color: white;
        overflow: hidden;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        transition: transform 0.3s ease-in-out;
        text-align: center;
    }

    .blog-card:hover {
        transform: translateY(-5px);
    }

    .blog-image {
        width: 100%;
        height: 200px;
        margin-top: 20px;
        object-fit: cover;
    }

    .blog-title {
        font-size: 20px;
        font-weight: bold;
        margin-top: 10px;
    }

    .blog-content {
        font-size: 18px;
        color: #555;
        margin: 10px 0;
        height: 60px;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .blog-footer {
        font-size: 16px;
        color: #777;
        width:100%;
    }

    .read-more {
        display: inline-block;
        margin-top: 20px;
        padding: 5px 10px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }

    .read-more:hover {
        background-color: #0056b3;
    }
    nav.navbar, footer {
    width: 100%;
    margin: 0;
}

</style>
</head>
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
      <div class="blog-container">
    <asp:Repeater ID="rptBlogs" runat="server">
        <ItemTemplate>
            <div class="blog-card">
                <asp:Image ID="imgBlog" runat="server" CssClass="blog-image" ImageUrl='<%# Eval("ImageUrl") %>' />
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>

    
    <form id="form1" runat="server">
                
        <div class="blog-container">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="blog-card">
                <asp:Image ID="imgBlog" runat="server" CssClass="blog-image" ImageUrl='<%# Eval("ImageUrl") %>' />
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>

   </form>
       <footer class="bg-dark text-white py-4"style="margin-top:190px">
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
