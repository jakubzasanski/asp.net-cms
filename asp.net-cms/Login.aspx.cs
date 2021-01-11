using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net_cms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_CLick(object sender, EventArgs e) 
        {
             string query = "SELECT COUNT(1) FROM tblLogin WHERE username=@username AND password=@password";
            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
            sqlCmd.Parameters.AddWithValue("@username",txtLogin.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@password",txtPassword.Text.Trim());
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count == 1)
            {
                Session["username"] = txtLogin.Text.Trim();
                Response.Redirect("Dashboard.aspx");
            }
            else { lblErrorMessage.Visible = true; }
        }
    }
}