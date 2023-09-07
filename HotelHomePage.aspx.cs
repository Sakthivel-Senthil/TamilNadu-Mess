using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class HotelHomePage : System.Web.UI.Page
    {
        private Dictionary<string, int> cartItems;

        public object Username { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                cartItems = new Dictionary<string, int>();
                UpdateCartTable();
            }
        }

        protected void btnDosa_Click(object sender, EventArgs e)
        {
            AddToCart("Dosa", 25);
        }

        protected void btnPuri_Click(object sender, EventArgs e)
        {
            AddToCart("Puri", 15);
        }

        protected void btnIdly_Click(object sender, EventArgs e)
        {
            AddToCart("Idly With Vada", 10);
        }

        protected void btnRava_Click(object sender, EventArgs e)
        {
            AddToCart("Rava Idily", 20);
        }

        protected void btnOmlete_Click(object sender, EventArgs e)
        {
            AddToCart("Omlete", 10);
        }

        protected void btnTea_Click(object sender, EventArgs e)
        {
            AddToCart("Tea with Snacks", 10);
        }

        protected void btnBread_Click(object sender, EventArgs e)
        {
            AddToCart("Bread", 30);
        }

        protected void btnNoodles_Click(object sender, EventArgs e)
        {
            AddToCart("Noodles", 20);
        }

        protected void btnuttapam_Click(object sender, EventArgs e)
        {
            AddToCart("Onion Uttapam", 40);
        }

        protected void btnparatha_Click(object sender, EventArgs e)
        {
            AddToCart("Alu Paratha", 50);
        }

        protected void btnSpecialDosa_Click(object sender, EventArgs e)
        {
            AddToCart("Special Dosa", 25);
        }
        protected void BuyNow_Click(object sender, EventArgs e)
        {
            string TotalAmount = lblTotalAmount.Text;
            string SelectedItem = lblSelectedItem.Text;
            

            string connectionStrings = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionStrings))
            {

                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "HotelHomePage");
                    cmd.Parameters.AddWithValue("@TotalAmount", TotalAmount);
                    cmd.Parameters.AddWithValue("@SelectedItem", SelectedItem);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            if (cartItems != null)
            {
                cartItems.Clear();
                UpdateCartTable();
            }

            Response.Redirect($"PaymentPage.aspx?Username={Username}&TotalAmount={TotalAmount}&SelectedItem={SelectedItem}");

            lblTotalAmount.Text = "Total Amount: ";
            lblOrderPlaced.Text = "Order placed successfully!";
        }

        private void UpdateCartTable()
        {
            CartTableRow.Visible = cartItems.Count > 0;

            CartTable.Rows.Clear();
            TableHeaderRow headerRow = new TableHeaderRow();
            TableHeaderCell itemCell = new TableHeaderCell();
            itemCell.Text = "Item";
            itemCell.Font.Bold = true;
            itemCell.ForeColor = System.Drawing.ColorTranslator.FromHtml("#3399ff");
            headerRow.Cells.Add(itemCell);

            TableHeaderCell priceCell = new TableHeaderCell();
            priceCell.Text = "Price";
            priceCell.Font.Bold = true;
            priceCell.ForeColor = System.Drawing.ColorTranslator.FromHtml("#6666ff");
            headerRow.Cells.Add(priceCell);

            CartTable.Rows.Add(headerRow);

            foreach (var item in cartItems)
            {
                TableRow row = new TableRow();
                TableCell itemTableCell = new TableCell();
                itemTableCell.Text = item.Key;
                row.Cells.Add(itemTableCell);

                TableCell priceTableCell = new TableCell();
                priceTableCell.Text = item.Value.ToString();
                row.Cells.Add(priceTableCell);

                CartTable.Rows.Add(row);
            }
        }

        private void AddToCart(string itemName, int itemPrice)
        {
            if (cartItems == null)
            {
                cartItems = new Dictionary<string, int>();
            }

            if (cartItems.ContainsKey(itemName))
            {
                cartItems[itemName]++;
            }
            else
            {
                cartItems[itemName] = 1;
            }

            Session["CartItems"] = cartItems;
            UpdateCartTable();
            lblTotalAmount.Text = "Total Amount: " + CalculateTotalAmount(itemPrice).ToString();

            Label lblSelectedItem = (Label)UserPage.FindControl("lblSelectedItem");
            if (lblSelectedItem != null)
            {
                lblSelectedItem.Text = "Selected Item: " + itemName + " | Price: " + itemPrice.ToString();
            }
        }

        private int CalculateTotalAmount(int itemPrice)
        {
            int totalAmount = 0;
            foreach (var item in cartItems)
            {
                totalAmount += item.Value * itemPrice;
            }

            return totalAmount;
        }

        protected void ddlMenu_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string selectedItem = ddlMenu.SelectedItem.Text;
            int selectedValue = int.Parse(ddlMenu.SelectedValue);

            // Update the item name and price based on the selected menu item
            string itemName = selectedItem;
            int itemPrice = GetItemPrice(selectedValue); // Call a method to retrieve the price based on the selected value

            // Add the item to the cart
            AddToCart(itemName, itemPrice);

            // Clear the selection after processing
            ddlMenu.ClearSelection();
        }

        private int GetItemPrice(int selectedValue)
        {
            switch (selectedValue)
            {
                case 1: // Dosa
                    return 25;
                case 2: // Puri
                    return 15;
                case 3: // Idly
                    return 10;
                case 4: // Rava Idily
                    return 20;
                case 5: // Omlete
                    return 10;
                case 6: // Tea with Snacks
                    return 10;
                case 7: // Bread
                    return 30;
                case 8: // Noodles
                    return 20;
                case 9: // Onion Uttapam
                    return 40;
                case 10: // Alu Paratha
                    return 50;
                case 11: // Special Dosa
                    return 25;
                case 12: // Vegetables Dish
                    return 50;
                default:
                    return 0; // Default price if no matching value is found
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            Response.Redirect("LoginPage");
        }

        protected void UpdateTotalAmount()
        {
            // Retrieve the cart items from the session
            Dictionary<string, int> cartItems = Session["CartItems"] as Dictionary<string, int>;

            if (cartItems != null)
            {
                int totalAmount = CalculateTotalAmount(cartItems);
                lblTotalAmount.Text = "Total Amount: " + totalAmount.ToString();

                // Update the quantities and prices in the CartTable
                foreach (TableRow row in CartTable.Rows)
                {
                    if (row.Cells.Count == 2)
                    {
                        string itemName = row.Cells[0].Text;
                        if (cartItems.ContainsKey(itemName))
                        {
                            int quantity = cartItems[itemName];
                            int itemPrice = GetItemPrice(itemName);
                            int totalPrice = quantity * itemPrice;
                            row.Cells[1].Text = quantity.ToString();
                            row.Cells[2].Text = totalPrice.ToString();
                        }
                    }
                }
            }
        }

        private int GetItemPrice(string itemName)
        {
            throw new NotImplementedException();
        }

        private int CalculateTotalAmount(Dictionary<string, int> cartItems)
        {
            throw new NotImplementedException();
        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Control container = btn.NamingContainer;

            // Find the parent control that contains the desired controls
            while (!(container is TableCell))
            {
                container = container.Parent;
                if (container == null)
                {
                    // Parent control not found, handle the error or exit the loop
                    return;
                }
            }

            // Access the desired controls within the parent control
            Image img = (Image)container.FindControl("imgFood");
            Label lblFoodName = (Label)container.FindControl("lblFoodName");
            Label lblFoodRate = (Label)container.FindControl("lblFoodRate");
            Label lblStockAvailability = (Label)container.FindControl("lblStockAvailability");
            Label lblTotalAmount = (Label)container.FindControl("lblTotalAmount");
            TextBox txtQuantity = (TextBox)container.FindControl("txtQuantity");

            int quantity = int.Parse(txtQuantity.Text);
            quantity++;
            txtQuantity.Text = quantity.ToString();

            // Calculate the total amount
            decimal rate = decimal.Parse(lblFoodRate.Text.Replace(" RS - Only!", ""));
            decimal totalAmount = rate * quantity;
            lblTotalAmount.Text = totalAmount.ToString();

            // Update the total amount for the entire cart
            UpdateTotalAmount();

            // Update the cart table
            UpdateCartTable();

            // Update the label for selected item and price
            Label lblSelectedItem = (Label)UserPage.FindControl("lblSelectedItem");
            if (lblSelectedItem != null)
            {
                lblSelectedItem.Text = "Selected Item: " + lblFoodName.Text + " | Price: " + totalAmount.ToString();
            }
        }

        protected void btnDecrement_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Control container = btn.NamingContainer;

            // Find the parent control that contains the desired controls
            while (!(container is TableCell))
            {
                container = container.Parent;
                if (container == null)
                {
                    // Parent control not found, handle the error or exit the loop
                    return;
                }
            }

            // Access the desired controls within the parent control
            Image img = (Image)container.FindControl("imgFood");
            Label lblFoodName = (Label)container.FindControl("lblFoodName");
            Label lblFoodRate = (Label)container.FindControl("lblFoodRate");
            Label lblStockAvailability = (Label)container.FindControl("lblStockAvailability");
            Label lblTotalAmount = (Label)container.FindControl("lblTotalAmount");
            TextBox txtQuantity = (TextBox)container.FindControl("txtQuantity");

            int quantity = int.Parse(txtQuantity.Text);
            if (quantity > 0)
            {
                quantity--;
                txtQuantity.Text = quantity.ToString();

                // Calculate the total amount
                decimal rate = decimal.Parse(lblFoodRate.Text.Replace(" RS - Only!", ""));
                decimal totalAmount = rate * quantity;
                lblTotalAmount.Text = totalAmount.ToString();

                // Update the total amount for the entire cart
                UpdateTotalAmount();

                // Update the cart table
                UpdateCartTable();

                // Update the label for selected item and price
                Label lblSelectedItem = (Label)UserPage.FindControl("lblSelectedItem");
                if (lblSelectedItem != null)
                {
                    lblSelectedItem.Text = "Selected Item: " + lblFoodName.Text + " | Price: " + totalAmount.ToString();
                }
            }
        }

        protected void btnVegitables_Click1(object sender, EventArgs e)
        {
            AddToCart("Vegetables Dish", 50);
        }
    }
}