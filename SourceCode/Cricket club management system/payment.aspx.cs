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
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void PayButton_Click(object sender, EventArgs e)
        {
            string connectionString =
ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "INSERT INTO  payment (YourName, YourEmail, Amount) VALUES (@YourName,@YourEmail, @Amount)";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@YourName", txtname.Text);
                command.Parameters.AddWithValue("@YourEmail", txtemail.Text);
                command.Parameters.AddWithValue("@Amount", txtamount.Text);
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    Response.Write("Payment successful!");
                }
                else
                {
                    Response.Write("Payment failed!");
                }
            }
        }

    }
}