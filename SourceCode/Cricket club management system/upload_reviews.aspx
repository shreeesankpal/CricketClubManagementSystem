<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Review</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body { 
            font-family: 'Poppins', sans-serif; 
            background-color: #f4f4f4; 
        }
        .container { 
            margin-top: 50px; 
            max-width: 600px; 
            background: white; 
            padding: 30px; 
            border-radius: 10px; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
        }
        .navbar {
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn-primary {
            background-color: #f58220;
            border-color: #f58220;
        }
        .btn-primary:hover {
            background-color: #e6731b;
            border-color: #e6731b;
        }
        .form-control, .form-select {
            border-radius: 8px;
        }
        footer {
            background: #222;
            color: white;
            padding: 30px 0;
        }
        footer a {
            color: #f58220;
            text-decoration: none;
        }
        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body style="background-image:url('image/bg.png') ;">
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
    <div class="container p-4" style="background-color: #f8f9fa; border-radius: 10px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);">
        <h2 class="text-center text-primary">Submit a Review</h2>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <div class="mb-3">
            <asp:Label runat="server" Text="Reviewer Name:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtReviewerName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label runat="server" Text="Review:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtReview" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label runat="server" Text="Rating (1-5):" CssClass="form-label"></asp:Label>
            <asp:DropDownList ID="ddlRating" runat="server" CssClass="form-select">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit Review" CssClass="btn btn-primary w-100" /><br/><br/>
        <a href="view_reviews.aspx" class="btn btn-outline-primary w-100">View Reviews</a>
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