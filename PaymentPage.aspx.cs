using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        public object Username { get; private set; }
        public object TotalAmount { get; private set; }
        public object SelectedItem { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            string Customer = Request.QueryString["Username"];
            lblCustomer.Text = Customer;
            string Yourname = Request.QueryString["Username"];
            lblYourname.Text = Yourname;
        }

        protected void SelectPayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (SelectPayment.SelectedValue == "COD")
            {
                CashOnDeliveryRow.Visible = true;
                OnlinePaymentRow.Visible = false;
            }
            else if (SelectPayment.SelectedValue == "Online")
            {
                CashOnDeliveryRow.Visible = false;
                OnlinePaymentRow.Visible = true;
            }
        }

        protected void PayNowButton_Click(object sender, EventArgs e)
        {
            string CardHolderName = txtCardHolderName.Text;
            string CardNumber = txtCardNumber.Text;
            string ExpryDate = txtExpryDate.Text;
            string CcvCode = txtCcvCode.Text;
            string Yourname = lblYourname.Text;

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "OnlinePaymentTable");
                    cmd.Parameters.AddWithValue("@CardHolderName", CardHolderName);
                    cmd.Parameters.AddWithValue("@CardNumber", CardNumber);
                    cmd.Parameters.AddWithValue("@ExpryDate", ExpryDate);
                    cmd.Parameters.AddWithValue("@CcvCode", CcvCode);
                    cmd.Parameters.AddWithValue("@Yourname", Yourname);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            // Perform any necessary validation or processing

            // Display a message to the user
            string message = "Payment done! Your order will arrive soon.";
            MessageLabel.Text = message;
            Response.Redirect($"ThankyouPage?Username={Username}&TotalAmount={TotalAmount}&SelectedItem={SelectedItem}");

        }

        protected void PlaceOrderButton_Click(object sender, EventArgs e)
        {
            string Address = txtAddress.Text;
            string contactNumber = txtContactNumber.Text;
            string Customer = lblCustomer.Text;

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
               
                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Customer", Customer);
                    cmd.Parameters.AddWithValue("@type", "CashOnDelivery");
                    cmd.Parameters.AddWithValue("@Address", Address);
                    cmd.Parameters.AddWithValue("@contactNumber", contactNumber);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            string message = "Order placed successfully!";
            MessageLabel.Text = message;
            Response.Redirect($"ThankyouPage?Username={Username}&TotalAmount={TotalAmount}&SelectedItem={SelectedItem}");
        }
    }
}