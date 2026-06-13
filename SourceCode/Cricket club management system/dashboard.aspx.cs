using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cricket_club_management_system
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the admin is logged in by verifying session variable
            if (Session["AdminLoggedIn"] == null || (bool)Session["AdminLoggedIn"] != true)
            {
                // If the user is not logged in, redirect to the login page
                Response.Redirect("Admin_Login.aspx");
            }
        }
    }
}