using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterForm");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage");
        }

        protected void AdminButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage");
        }
    }
}