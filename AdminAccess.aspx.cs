using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class AdminAccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string ID = txtID.Text;
            string Username = txtUsername.Text;
            string Email = txtEmail.Text;
            string Newpassword = txtNewpassword.Text;

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "Edit");
                    cmd.Parameters.AddWithValue("@ID", ID);
                    cmd.Parameters.AddWithValue("@username", Username);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Newpassword", Newpassword);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string DID = txtDID.Text;

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "Delete");
                    cmd.Parameters.AddWithValue("@ID", DID);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }
    }
}