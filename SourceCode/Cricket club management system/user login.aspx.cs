using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cricket_club_management_system
{
    public partial class user_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "SELECT COUNT(*) FROM UserReg WHERE Email = @Email AND Password = @Password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Email", txtemail.Text);
                command.Parameters.AddWithValue("@Password", txtpassword.Text);

                int count = (int)command.ExecuteScalar();

                if (count > 0)
                {
                    // Store user email in session
                    Session["UserEmail"] = txtemail.Text;

                    // Redirect to donation page
                    Response.Redirect("home.aspx");
                }
                else
                {
                    lblmessage.Text = "Invalid email or password!";
                }
            }
        }
    }
}
