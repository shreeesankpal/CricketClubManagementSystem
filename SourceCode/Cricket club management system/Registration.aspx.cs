using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cricket_club_management_system
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO UserReg (FirstName, LastName, Email, Password) VALUES (@FirstName, @LastName, @Email, @Password)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FirstName", firstname.Text);
                    cmd.Parameters.AddWithValue("@LastName", lastname.Text);
                    cmd.Parameters.AddWithValue("@Email", email.Text);
                    cmd.Parameters.AddWithValue("@Password", password.Text);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            Response.Write("<script>alert('Registration Successful!');</script>");
        }
    }
}

