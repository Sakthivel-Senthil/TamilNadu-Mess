using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class ThankyouPage : System.Web.UI.Page
    {
        public object TotalAmount { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayOrderDetails();
            }
        }

        private void DisplayOrderDetails()
        {
            string UserName = Request.QueryString["Username"];
            string TotalAmount = Request.QueryString["TotalAmount"];
            string SelectedItem = Request.QueryString["SelectedItem"];

            // Display the order details on the page
            lblUserName.Text = $"User Name→ {UserName}";
            lblTotalAmount.Text = $"Your Total Amount→ {TotalAmount}";
            lblSelectedItem.Text = $"Selected Item→ {SelectedItem}";
        }
    }
}