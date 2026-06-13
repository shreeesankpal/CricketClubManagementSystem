using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Cricket_club_management_system
{
    public partial class Batch_reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string Name = txtName.Text;
            string Email = txtEmail.Text;
            string Contact = txtContact.Text;
           
            string BatchTiming = txtBatchTiming.Text;
            string FromDate = txtFromDate.Text;

            string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "INSERT INTO BatchReg (Name, Email, Contact,BatchTiming,FromDate) VALUES (@Name, @Email, @Contact, @BatchType,@UserType,@BatchTiming,@FromDate)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", Name);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Contact", Contact);

                    cmd.Parameters.AddWithValue("@BatchTiming", BatchTiming);
                    cmd.Parameters.AddWithValue("@FromDate", FromDate);



                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    conn.Close();

                    if (rowsAffected > 0)
                    {
                        txtMessage.Text = "Btach Register successfully!";
                        txtMessage.Visible = true;
                    }
                    else
                    {
                        txtMessage.Text = "Please try again.";
                        txtMessage.ForeColor = System.Drawing.Color.Red;
                        txtMessage.Visible = true;
                    }
                }
            }
        }
    }
}