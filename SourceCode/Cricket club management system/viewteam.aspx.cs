using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Cricket_club_management_system
{
    public partial class viewteam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTeamMembers();
            }
        }

        private void LoadTeamMembers()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT Name, Role, Description, ImagePath FROM t_TeamMembers";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rptTeamMembers.DataSource = dt;
                rptTeamMembers.DataBind();
            }
        }
    }
}
