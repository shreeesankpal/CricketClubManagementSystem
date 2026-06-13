using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cricket_club_management_system
{
    public partial class ManageGallery : System.Web.UI.Page
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
                    string query = "SELECT ImageUrl FROM Gallery ORDER BY ImageUrl DESC";
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
                lblError.Text = "Error loading blogs: " + ex.Message;
                lblError.Visible = true;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string imageUrl = "";

                // Handle Image Upload
                if (fileUploadImage.HasFile)
                {
                    string folderPath = Server.MapPath("~/Uploads/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    string fileName = Path.GetFileName(fileUploadImage.FileName);
                    string filePath = "~/Uploads/" + fileName;
                    fileUploadImage.SaveAs(Server.MapPath(filePath));
                    imageUrl = filePath;
                }

                string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();
                    string query = "INSERT INTO Gallery (ImageUrl ) VALUES (@ImageUrl )";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ImageUrl", imageUrl);

                        cmd.ExecuteNonQuery();
                    }
                }

                lblSuccess.Text = "Image uploaded successfully!";
                lblSuccess.Visible = true;
                LoadBlogs();
            }
            catch (Exception ex)
            {
                lblError.Text = "Error uploading blog: " + ex.Message;
                lblError.Visible = true;
            }
        }
    }
}










