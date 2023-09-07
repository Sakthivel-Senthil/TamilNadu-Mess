using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class Catagory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OderList_Click(object sender, EventArgs e)
        {
            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    try
                    {
                        DataTable datatable = new DataTable();
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure; 
                        cmd.Parameters.AddWithValue("@type", "select");
                        var d = cmd.ExecuteReader();
                        datatable.Load(d);
                        Dataview.DataSource = datatable;
                        Dataview.DataBind();

                    }
                    catch (Exception)
                    {
                        throw;
                    }
                }
            }
        }

            protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            Response.Redirect("Default");
        }

        protected void Foodorders_Click(object sender, EventArgs e)
        {
            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    try
                    {
                        DataTable datatable = new DataTable();
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@type", "CatagoryView");
                        var d = cmd.ExecuteReader();
                        datatable.Load(d);
                        FoodDetails.DataSource = datatable;
                        FoodDetails.DataBind();
                    }
                    catch (Exception)
                    {
                        throw;
                    }
                }
            }
        }

        protected void CODList_Click(object sender, EventArgs e)
        {
            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    try
                    {
                        DataTable datatable = new DataTable();
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@type", "CODdata");
                        var d = cmd.ExecuteReader();
                        datatable.Load(d);
                        CODview.DataSource = datatable;
                        CODview.DataBind();
                    }
                    catch (Exception)
                    {
                        throw;
                    }
                }
            }
        }

        protected void Onlinefood_Click(object sender, EventArgs e)
        {
            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    try
                    {
                        DataTable datatable = new DataTable();
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@type", "OnPay");
                        var d = cmd.ExecuteReader();
                        datatable.Load(d);
                        Onlinepayment.DataSource = datatable;
                        Onlinepayment.DataBind();
                    }
                    catch (Exception)
                    {
                        throw;
                    }
                }
            }
        }

        protected void Access_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAccess");
        }
    }
}