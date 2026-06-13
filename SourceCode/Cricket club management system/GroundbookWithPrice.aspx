<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GroundbookWithPrice.aspx.cs" Inherits="Cricket_club_management_system.GroundbookWithPrice" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ground Booking with Price</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
                        <li><a class="dropdown-item" href="groundbook.aspx">GROUND BOOKING</a></li>
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
<body style="background-image:url('image/bg.png');">

    <form id="form1" runat="server">
        <div class="container mt-5" style="width:90%">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow">
                        <div class="card-body">
                            <h1 class="card-title text-center mb-4">Ground Booking</h1>
                            
                            <div class="mb-3">
                                <label class="form-label">Name*</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">Email*</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">Contact*</label>
                                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">Purpose*</label>
                                <asp:TextBox ID="txtPurpose" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">From Date*</label>
                                <asp:TextBox ID="txtFromDate" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">End Date*</label>
                                <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">Select Time Slot*</label>
                                <asp:DropDownList ID="ddlTimeSlot" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlTimeSlot_SelectedIndexChanged">
                                    <asp:ListItem Text="Select a Time Slot" Value="" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="8:00 AM - 9:00 AM" Value="200"></asp:ListItem>
                                    <asp:ListItem Text="9:00 AM - 10:00 AM" Value="200"></asp:ListItem>
                                    <asp:ListItem Text="10:00 AM - 11:00 AM" Value="200"></asp:ListItem>
                                    <asp:ListItem Text="11:00 AM - 12:00 PM" Value="200"></asp:ListItem>
                                    <asp:ListItem Text="12:00 PM - 1:00 PM" Value="200"></asp:ListItem>
                                    <asp:ListItem Text="2:00 PM - 3:00 PM" Value="200"></asp:ListItem>
                                    <asp:ListItem Text="3:00 PM - 4:00 PM" Value="200"></asp:ListItem>
                                    <asp:ListItem Text="4:00 PM - 5:00 PM" Value="200"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">Total Price (INR)*</label>
                                <asp:TextBox ID="txtTotalPrice" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            </div>

                            <div class="text-center">
                                <asp:Button ID="btnRegister" runat="server" Text="REGISTER" CssClass="btn btn-dark" OnClick="btnRegister_Click" />
                                <asp:Label ID="txtMessage" runat="server" ForeColor="Green" Visible="false"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var today = new Date().toISOString().split('T')[0];
            document.getElementById('<%= txtFromDate.ClientID %>').setAttribute('min', today);
            document.getElementById('<%= txtEndDate.ClientID %>').setAttribute('min', today);
        });
    </script>
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
