using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Cricket_club_management_system
{
public partial class uploadreviews : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}

```
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "INSERT INTO tReviews (ReviewerName, Review, Rating) VALUES (@ReviewerName, @Review, @Rating)";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@ReviewerName", txtReviewerName.Text.Trim());
            cmd.Parameters.AddWithValue("@Review", txtReview.Text.Trim());
            cmd.Parameters.AddWithValue("@Rating", ddlRating.SelectedValue);

            conn.Open();
            cmd.ExecuteNonQuery();

            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Review submitted successfully!";
        }
    }
}
```

}
