<%@ Page Language="C#" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                loginPanel.Visible = false;
                profilePanel.Visible = true;

                lblUsername.Text = Session["username"].ToString();
                lblName.Text = Session["fullname"].ToString();
                lblEmail.Text = Session["email"].ToString();
            }
            else
            {
                loginPanel.Visible = true;
                profilePanel.Visible = false;
            }
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // Demo credentials
        if (txtUsername.Text == "admin" && txtPassword.Text == "12345")
        {
            Session["username"] = "admin";
            Session["fullname"] = "Admin User";
            Session["email"] = "admin@example.com";

            Response.Redirect("LoginProfile.aspx");
        }
        else
        {
            lblError.Text = "Invalid username or password";
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("LoginProfile.aspx");
    }
</script>

<!DOCTYPE html>
<html>
<head>
    <title>Login & Profile</title>
</head>
<body>

<!-- 🔴 REQUIRED FORM TAG -->
<form runat="server">

    <!-- LOGIN PANEL -->
    <asp:Panel ID="loginPanel" runat="server">
        <h2>Login</h2>

        Username:<br />
        <asp:TextBox ID="txtUsername" runat="server" /><br /><br />

        Password:<br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /><br /><br />

        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br /><br />

        <asp:Label ID="lblError" runat="server" ForeColor="Red" />
    </asp:Panel>

    <!-- PROFILE PANEL -->
    <asp:Panel ID="profilePanel" runat="server" Visible="false">
        <h2>User Profile</h2>

        <p><b>Username:</b> <asp:Label ID="lblUsername" runat="server" /></p>
        <p><b>Full Name:</b> <asp:Label ID="lblName" runat="server" /></p>
        <p><b>Email:</b> <asp:Label ID="lblEmail" runat="server" /></p>

        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
    </asp:Panel>

</form>

</body>
</html>

