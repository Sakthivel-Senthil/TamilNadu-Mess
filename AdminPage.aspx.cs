using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string Username = txtUsername.Text;
            string Password = txtPassword.Text;

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;int resultCount =0;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                string query = "SELECT COUNT(*) FROM AdminPage WHERE username = @Username AND Password = @Password";

                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    command.Parameters.AddWithValue("@Username", Username);
                    command.Parameters.AddWithValue("@Password", Password);

                    conn.Open();
                    resultCount = (int)command.ExecuteScalar();
                }
            }

            if (resultCount == 1 && Username == "Admin" && Password == "555")
            {
                Response.Redirect("Catagory");
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