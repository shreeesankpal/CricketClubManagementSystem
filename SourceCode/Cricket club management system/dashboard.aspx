<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="Cricket_club_management_system.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #e3f2fd;
    }
    .sidebar {
        width: 250px;
        height: 100vh;
        background: #478cc8;
        color: white;
        position: fixed;
        padding-top: 20px;
    }
    .sidebar a {
        display: block;
        padding: 15px;
        color: white;
        text-decoration: none;
        transition: 0.3s;
    }
    .sidebar a:hover {
        background: #2f75b3;
    }
    .main-content {
        margin-left: 260px;
        padding: 20px;
    }
    .card {
        background: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
        margin-bottom: 20px;
        transition: transform 0.3s;
    }
    .card:hover {
        transform: scale(1.05);
    }
    .card a {
        background-color: #1b5e20;
        color: white;
        padding: 10px 20px;
        text-decoration: none;
        font-weight: bold;
        border-radius: 5px;
        margin-right: 20px;
        display: inline-block;
    }
    .card a:hover {
        background-color: #388e3c;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="sidebar">
    <h2 style="text-align:center;">Admin Panel</h2>
    <a href="dashboard.aspx">Dashboard</a>
    <a href="ManageGallery.aspx">Upload Image</a>
    <a href="upload_reviews.aspx">Manage Reviews</a>
    <a href="Notice.aspx">Add Notice</a>
                <a href="uploadteammember.aspx">Manage Team Members</a>
    <a href="logout.aspx">Logout</a>
</div>
<div class="main-content">
    <h2>Dashboard Overview</h2>
        <p>Welcome, <strong><%= Session["AdminUsername"] %></strong>!</p>

    <div class="card">
        <h3> GroundbookWithPrice </h3><a href="viewgroundbook.aspx" style="background-color: #478cc8; color: white; padding: 10px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; margin-right: 20px;">Click here</a>
    </div>
    <div class="card">
        <h3>Batch Registration</h3>
        <a href="viewbatchreg.aspx" style="background-color: #478cc8; color: white; padding: 10px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; margin-right: 20px;">Click here</a>
    </div>
    <div class="card">
        <h3>Payment</h3>
        <a href="viewpayment.aspx" style="background-color: #478cc8; color: white; padding: 10px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; margin-right: 20px;">Click here</a>
    </div>
    <div class="card">
        <h3>Contact Us</h3>
        <a href="viewcontact.aspx" style="background-color: #478cc8; color: white; padding: 10px 20px; text-decoration: none; font-weight: bold; border-radius: 5px; margin-right: 20px;">Click here</a>
    </div>
</div>
        </div>
    </form>
</body>
</html>
