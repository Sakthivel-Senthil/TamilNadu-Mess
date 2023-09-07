using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterForm");
        }

        protected void Clear_Click(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string Username = txtUsername.Text;
            string Password = txtPassword.Text;

            string connectionStrings = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionStrings))
            {
                string query = "SELECT * FROM RegisterForm WHERE Username = @Username AND NewPassword = @NewPassword";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", Username);
                    cmd.Parameters.AddWithValue("@NewPassword", Password);
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        Response.Redirect($"HotelHomePage?Username={Username}");
                    }
                    else
                    {
                        string errorMessage = "Wrong username or password. Please try again.";
                        Label lblErrorMessage = new Label();
                        lblErrorMessage.ID = "lblErrorMessage";
                        lblErrorMessage.Text = errorMessage;
                        this.Controls.Add(lblErrorMessage);
                    }
                }
            }
        }
    }
}