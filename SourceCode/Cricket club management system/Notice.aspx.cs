using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cricket_club_management_system
{
    public partial class Notice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBlogs();
            }
        }

        private void LoadBlogs()
        {
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();
                    string query = "SELECT Title, Description,PostedDate FROM Notices ORDER BY Description DESC";
                    using (SqlDataAdapter da = new SqlDataAdapter(query, conn))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        rptBlogs.DataSource = dt;
                        rptBlogs.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "Error loading notice: " + ex.Message;
                lblError.Visible = true;
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            try
            {
                string title = txtTitle.Text.Trim();
                string description = txtDescription.Text.Trim();
                string PostedDate = txtPostedDate.Text.Trim();


                if (string.IsNullOrEmpty(title) || string.IsNullOrEmpty(description) || string.IsNullOrEmpty(PostedDate))
                {
                    lblError.Text = "All fields are required!";
                    lblError.Visible = true;
                    return;
                }



                string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();
                    string query = "INSERT INTO Notices (Title, Description,PostedDate ) VALUES (@Title, @Description,@PostedDate )";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Title", title);

                        cmd.Parameters.AddWithValue("@Description", description);
                        cmd.Parameters.AddWithValue("@PostedDate", PostedDate);

                        cmd.ExecuteNonQuery();
                    }
                }

                lblSuccess.Text = "Notice uploaded successfully!";
                lblSuccess.Visible = true;
                LoadBlogs();
            }
            catch (Exception ex)
            {
                lblError.Text = "Error uploading Notice: " + ex.Message;
                lblError.Visible = true;
            }
        }

    }
}