using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cricket_club_management_system
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is already logged in
            if (Session["AdminLoggedIn"] != null && (bool)Session["AdminLoggedIn"] == true)
            {
                Response.Redirect("dashboard.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Hardcoded credentials (In a real app, credentials would come from a database)
            string correctUsername = "admin";
            string correctPassword = "password123";  // In a real application, use hashed passwords!

            string enteredUsername = txtUsername.Text;
            string enteredPassword = txtPassword.Text;

            // Validate credentials
            if (enteredUsername == correctUsername && enteredPassword == correctPassword)
            {
                // Set session variables for logged-in user
                Session["AdminLoggedIn"] = true;
                Session["AdminUsername"] = enteredUsername;

                // Redirect to dashboard after successful login
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                // Show error message if login fails
                lblErrorMessage.Text = "Invalid username or password.";
            }
        }
    }
}