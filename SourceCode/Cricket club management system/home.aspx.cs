using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cricket_club_management_system
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the session variable "UserEmail" exists
            if (Session["UserEmail"] == null)
            {
                // Redirect to login page
                Response.Redirect("user login.aspx");
            }
        }
    }
}