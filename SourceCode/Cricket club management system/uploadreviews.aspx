<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadreviews.aspx.cs" Inherits="Cricket_club_management_system.uploadreviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Review</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        .container { margin-top: 50px; }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Submit a Review</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br/><br/>

            <asp:Label runat="server" Text="Reviewer Name:"></asp:Label>
            <asp:TextBox ID="txtReviewerName" runat="server"></asp:TextBox><br/><br/>

            <asp:Label runat="server" Text="Review:"></asp:Label>
            <asp:TextBox ID="txtReview" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox><br/><br/>

            <asp:Label runat="server" Text="Rating (1-5):"></asp:Label>
            <asp:DropDownList ID="ddlRating" runat="server">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
            </asp:DropDownList><br/><br/>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit Review" OnClick="btnSubmit_Click" /><br/><br/>

            <a href="viewreviews.aspx">View Reviews</a>
        </div>
    </form>

</body>
</html>
