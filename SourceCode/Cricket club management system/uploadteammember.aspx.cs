using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cricket_club_management_system
{
    public partial class uploadteammember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                try
                {
                    // Ensure uploads folder exists
                    string folderPath = Server.MapPath("~/uploads/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    // Save file
                    string fileName = Path.GetFileName(fileUpload.FileName);
                    string filePath = "~/uploads/" + fileName;
                    fileUpload.SaveAs(Server.MapPath(filePath));

                    // Get connection string
                    string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

                    // Insert data into database
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        string query = "INSERT INTO t_TeamMembers (Name, Role, Description, ImagePath) VALUES (@Name, @Role, @Description, @ImagePath)";
                        SqlCommand cmd = new SqlCommand(query, conn);

                        cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Role", txtRole.Text.Trim());
                        cmd.Parameters.AddWithValue("@Description", txtdes.Text.Trim());
                        cmd.Parameters.AddWithValue("@ImagePath", filePath);

                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Team member uploaded successfully!";
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please upload an image.";
            }
        }
    }
}
