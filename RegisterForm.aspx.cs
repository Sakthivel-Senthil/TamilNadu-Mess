using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            string Username = txtUsername.Text;
            string Email = txtEmail.Text;
            string Newpassword = txtNewpassword.Text;

            if (string.IsNullOrWhiteSpace(Username) || string.IsNullOrWhiteSpace(Email) || string.IsNullOrWhiteSpace(Newpassword))
            {
                // Show an alert using JavaScript
                string script = "alert('Please fill up all the required fields.');";
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", script, true);
                return; // Prevent redirection
            }

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "insert");
                    cmd.Parameters.AddWithValue("@username", Username);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Newpassword", Newpassword);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            Response.Redirect($"LoginPage?Username={Username}");
        }
    }
}