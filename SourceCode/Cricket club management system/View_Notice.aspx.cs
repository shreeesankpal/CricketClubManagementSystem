using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Cricket_club_management_system
{
    public partial class View_Notice : System.Web.UI.Page
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
            // Database connection string from Web.config
            string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT NoticeID, Title, Description, PostedDate FROM Notices ORDER BY Description DESC";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();

                conn.Open();
                da.Fill(dt);
                conn.Close();

                if (dt.Rows.Count > 0)
                {
                    rptBlogs.DataSource = dt;
                    rptBlogs.DataBind();
                }
                else
                {
                    rptBlogs.DataSource = null;
                    rptBlogs.DataBind();
                }
            }
        }

    }
}