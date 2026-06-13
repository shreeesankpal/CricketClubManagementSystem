using System;
using System.Data.SqlClient;
using System.Configuration;

namespace Cricket_club_management_system
{
    public partial class GroundbookWithPrice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtTotalPrice.Text = "0";
            }
        }

        protected void ddlTimeSlot_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(ddlTimeSlot.SelectedValue))
            {
                txtTotalPrice.Text = ddlTimeSlot.SelectedValue;
            }
            else
            {
                txtTotalPrice.Text = "0";
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (ddlTimeSlot.SelectedIndex == 0)
            {
                txtMessage.Text = "Please select a time slot!";
                txtMessage.ForeColor = System.Drawing.Color.Red;
                txtMessage.Visible = true;
                return;
            }

            // Database Connection String
            string connString = ConfigurationManager.ConnectionStrings["MYConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();

                    // Insert query
                    string query = @"INSERT INTO GRNDBooking (Name, Email, Contact, Purpose, FromDate, EndDate, TimeSlot, TotalAmount)
                                     VALUES (@Name, @Email, @Contact, @Purpose, @FromDate, @EndDate, @TimeSlot, @TotalAmount)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Adding parameters
                        cmd.Parameters.AddWithValue("@Name", txtName.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
                        cmd.Parameters.AddWithValue("@Purpose", txtPurpose.Text);
                        cmd.Parameters.AddWithValue("@FromDate", txtFromDate.Text);
                        cmd.Parameters.AddWithValue("@EndDate", txtEndDate.Text);
                        cmd.Parameters.AddWithValue("@TimeSlot", ddlTimeSlot.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@TotalAmount", Convert.ToInt32(txtTotalPrice.Text));

                        // Execute query
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            txtMessage.Text = "Booking Successful!";
                            txtMessage.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            txtMessage.Text = "Booking failed! Please try again.";
                            txtMessage.ForeColor = System.Drawing.Color.Red;
                        }
                        txtMessage.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    txtMessage.Text = "Error: " + ex.Message;
                    txtMessage.ForeColor = System.Drawing.Color.Red;
                    txtMessage.Visible = true;
                }
            }
        }
    }
}
