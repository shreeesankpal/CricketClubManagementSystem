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
    public partial class upload_reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string reviewerName = txtReviewerName.Text.Trim();
            string reviewText = txtReview.Text.Trim();
            int rating = Convert.ToInt32(ddlRating.SelectedValue);

            if (string.IsNullOrEmpty(reviewerName) || string.IsNullOrEmpty(reviewText))
            {
                lblMessage.Text = "All fields are required.";
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO t_Reviews (ReviewerName, Review, Rating) VALUES (@ReviewerName, @Review, @Rating)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ReviewerName", reviewerName);
                    cmd.Parameters.AddWithValue("@Review", reviewText);
                    cmd.Parameters.AddWithValue("@Rating", rating);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            lblMessage.Text = "Review submitted successfully!";
            txtReviewerName.Text = "";
            txtReview.Text = "";
            ddlRating.SelectedIndex = 0;
        }
    }

}